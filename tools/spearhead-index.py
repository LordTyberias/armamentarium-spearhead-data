#!/usr/bin/env python3
"""Print the Spearhead reference inventory as a table, one row per box.

The reference is a Google Sheet shared by link. Its CSV export carries the values but *not* the
cell hyperlinks, and `pubhtml` answers 401 — which is why ADR 0042 assumed the linked documents
were reachable only through a browser session. They are not: the **XLSX** export carries every
hyperlink in `xl/worksheets/_rels/sheet1.xml.rels`, and column C of each row links to that box's
official faction pack PDF on assets.warhammer-community.com.

So this script fetches both exports and joins them. Stdlib only.

    python tools/spearhead-index.py                # every box
    python tools/spearhead-index.py Order          # one Grand Alliance
"""

import csv
import io
import sys
import urllib.request
import xml.etree.ElementTree as ET
import zipfile

SHEET_ID = "12yiSFPhptA95R7Gihxq3g5HMJvjdwm9AsSHO2RxXKBo"
EXPORT = "https://docs.google.com/spreadsheets/d/%s/export?format=%s"

M = "{http://schemas.openxmlformats.org/spreadsheetml/2006/main}"
R = "{http://schemas.openxmlformats.org/officeDocument/2006/relationships}"


def fetch(fmt):
    with urllib.request.urlopen(EXPORT % (SHEET_ID, fmt)) as response:
        return response.read()


def pack_links():
    """Cell reference -> hyperlink target, for the first worksheet."""
    book = zipfile.ZipFile(io.BytesIO(fetch("xlsx")))
    rels = {
        e.get("Id"): e.get("Target")
        for e in ET.fromstring(book.read("xl/worksheets/_rels/sheet1.xml.rels"))
    }
    sheet = ET.fromstring(book.read("xl/worksheets/sheet1.xml"))
    return {
        h.get("ref"): rels.get(h.get(R + "id"))
        for h in sheet.iter(M + "hyperlink")
    }


def main():
    wanted = sys.argv[1] if len(sys.argv) > 1 else None
    links = pack_links()
    rows = list(csv.DictReader(io.StringIO(fetch("csv").decode("utf-8"))))

    count = 0
    # Row 1 is the header, so the CSV's row N is the spreadsheet's row N+2.
    for row_number, row in enumerate(rows, start=2):
        if wanted and row["Grand Alliance"] != wanted:
            continue
        count += 1
        print(
            "\t".join([
                row["Spearhead Name"],
                row["Faction"],
                row["Grand Alliance"],
                "in-print" if row["In Print?"] == "TRUE" else "LEGENDS",
                row["Model Count"],
                links.get("C%d" % row_number) or "(no pack linked)",
            ])
        )
    print("\n%d boxes" % count, file=sys.stderr)


if __name__ == "__main__":
    main()
