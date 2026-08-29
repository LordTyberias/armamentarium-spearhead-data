# armamentarium-spearhead-data

BattleScribe catalogue data for the fixed Spearhead boxes of Age of Sigmar, read by the
[Armamentarium](https://github.com/LordTyberias/Armamentarium) project.

- `Spearhead.gst` — the game system: profile types, the categories, one force entry.
- one `.cat` file per faction, each holding the units of that faction's Spearheads.

**This repository is not complete.** It is being filled one Grand Alliance at a time
(ARMAM-275); Order is the first stage.

## What this is, and what it is not

A Spearhead is a fixed box: it is chosen, not built. That shapes the data in four ways that
differ from an ordinary BattleScribe catalogue, and they are deliberate:

- **No points.** Every box has a points value in the regular game — between 410 and 830 — and it
  is deliberately **not** written here. Spearhead is not played to a points limit, so that figure
  says nothing about this mode; written as a `costs` element it would put a number on a list that
  has no limit and invite every reader, and every export, to treat it as one.
- **The model count sits on the entry.** There is no `selectionEntryGroup` to pick a number from,
  because nothing is picked — each unit entry states `min = max = <model count>` directly.
- **Profiles keep their printed order.** The order abilities and weapons are listed in is content,
  not incidental.
- **Spearhead warscrolls are their own warscrolls.** They carry the same base characteristics as
  their matched-play counterparts but are simplified for this mode and printed under a "Spearhead
  Warscroll" heading. The regular warscroll of the same unit is a different document and is never
  a substitute for one here.

Each unit row is its own root `selectionEntry`; which box it belongs to is a category, alongside
its faction, its Grand Alliance and — where applicable — a `Legends` marker for a box that is no
longer in print.

- **A box's rules ride on a row of their own.** A faction pack prints battle traits, regiment
  abilities and enhancements beside the warscrolls; they belong to the box rather than to any unit
  in it, and a category cannot carry rules in this format. Each box therefore opens with an entry
  `sph::<box-slug>::00-battle-traits`, named `Battle Traits`, that states `min = max = 0` — it is
  not a model — and carries the rules as profiles of the `Ability (…)` types the game system already
  declares. It carries the same categories as the units of its box, minus the keywords: a page of
  rules prints none. The printed group headings (`Regiment Abilities`, `Enhancements`) are carried
  as profiles of their own, because the reader otherwise cannot tell an enhancement from a battle
  trait — and because they are printed text rather than an invention. Units then start at `01-`.

## The category ids are a contract

The reader tells those kinds of membership apart by the **id prefix**, never by the name — a
faction name, a Grand Alliance name and a unit keyword can be the same word. The counterpart in
the application is `SpearheadCategoryIds` in `Armamentarium.Application`, and neither side can
change one of these alone.

| Prefix | Meaning |
|---|---|
| `sph-cat::<box-slug>` | the Spearhead the entry belongs to; the slug repeats in the entry id |
| `sph-faction::<slug>` | the faction the units belong to |
| `sph-alliance::<slug>` | Order / Chaos / Death / Destruction |
| `sph-flag::legends` | the one flag, not a prefix: the box is no longer in print |
| `sph-kw::<slug>` | a unit keyword — everything the warscroll prints under "Keywords" |

Unit entry ids are `sph::<box-slug>::NN-<unit-slug>`, and a fixed weapon is a mandatory child
entry under `<entry-id>::<slug>` whose `min = max` states how many models carry it. **Those ids
end up in users' saved army lists**, so changing one strands the list that carries it.

Nothing in this repository enforces any of it. A prefix or an id that drifts produces no build
error and no failing file — it produces an empty box list in the application, which is why it is
written down here rather than left to be inferred from the data.

## The profile types are Age of Sigmar's own

`Spearhead.gst` carries the twelve profile types of `BSData/age-of-sigmar-4th` verbatim — the same
names, the same characteristic names, in the same order. That is not tidiness: the application
resolves a datasheet cell by its **column name**, and a renamed characteristic renders a fully
labelled, entirely empty table without any error.

## This is not meant for other BattleScribe tools

**It is not expected to be usable in the BattleScribe Data Editor, in New Recruit, or in any other
roster builder, and that is deliberate rather than an oversight.** The reasons are the ones above:
a self-declared game system, entries without costs, and no selection groups to choose from. An
editor built for assembling a roster will load these files and find nothing to assemble.

What the format buys is not interoperability. It is that the data lives outside the application,
in its own repository, in plain XML that any text or XML tool can edit, on its own release cadence.

## Provenance

### Lumineth Realm-Lords — two boxes (added 2026-08-29)

Glittering Phalanx (`eng_01-04_aos_spearhead_lumineth_realmlords_glittering_phalanx`, no longer in
print) and Hurakan Vanguard (`eng_04-02_aos_spearhead_lumineth_realmlords`, in print).

The second case of one unit with two different warscrolls: Vanari Auralan Wardens appear in both
boxes with the same characteristics, a differently named weapon (Warden's Pike against Warden Pike
and Blade) and a different ability.

The Vanari Bladelords warscroll prints one weapon row whose Hit, Wound, Rend and Damage cells are
replaced by a single "See below" spanning all four. Every one of those four cells carries that text
here — there is no other honest way to record a cell that is not a value.

### Kharadron Overlords — two boxes (added 2026-08-29)

Skyhammer Task Force (`eng_jun25_aos_factionpack_kharadron_overlords`, pages 21-27, no longer in
print) and Grundstok Trailblazers (`eng_01-04_..._grundstok_trailblazers`, in print).

Skyhammer Task Force contains **two Arkanaut Company units with different loadouts** under one
warscroll: one has 4 Privateer Pistols with Arkanaut Cutters and 1 Skypike, the other 3 pistols with
cutters, 1 Aethermatic Volley Gun and 1 Light Skyhook. Two rows, two sets of weapon children, one
set of profiles — which is what the format is shaped for.

Where a warscroll's own text lists which model carries what, that text is carried as a rule of its
own rather than left to be reconstructed from the weapon rows.

### Idoneth Deepkin — two boxes (added 2026-08-29)

Soulraid Hunt (`eng_01-04_aos_spearhead_idoneth_deepkin_soulraid_hunt`, no longer in print) and
Akhelian Tide Guard (`eng_aos4_idoneth_deepkin_spearhead_rules`, in print).

**The same unit can carry different rules in two boxes of the same faction.** Akhelian Morrsarr
Guard appears in both, with identical characteristics and weapons — and with two different versions
of its Biovoltaic Blast ability: in Soulraid Hunt each 4-5 inflicts 1 mortal damage and each 6+
inflicts D3, in Akhelian Tide Guard each 3+ inflicts 1. Both are printed as Spearhead warscrolls.
This is the clearest case so far for why a unit row belongs to its box rather than to its faction,
and why no row here may be shared between boxes.

### Fyreslayers — Saga Axeband (added 2026-08-29)

From `fyreslayers_nov_24_eng_27`, pages 29-34. **This one is not a Spearhead pack but the faction's
full pack for the regular game**, 34 pages, with the Spearhead section at its end. The linked
document differs from box to box; only its Spearhead pages are read.

Its battle trait is a table of four ur-gold runes with a standard and an enhanced effect each,
carried as one rule for the same reason as Blood Rites: split into separate profiles, the standard
and enhanced halves would lose which rune they belong to.

The box holds the same unit four times (Vulkite Berzerkers), which is why entry ids number the rows
rather than name them alone.

### Daughters of Khaine — two boxes (added 2026-08-29)

Heartflayer Troupe (`eng_01-04_aos_spearhead_daughters_of_khaine_heartflayer_troupe`, no longer in
print) and Khainite Shadow Coven (`eng_25-03_..._khainite_shadow_coven`, in print).

**The two boxes of one faction do not share their battle traits.** Heartflayer Troupe carries Blood
Rites, Khainite Shadow Coven carries Shadowmasked; neither pack prints the other. The box rules are
per box, not per faction, and the format follows that.

Blood Rites is printed as a table of battle round against ability rather than as a list of
abilities. It is carried as a single rule whose text names each round with its ability, because
four separate profiles would keep the abilities and lose the round they belong to.

### Cities of Sigmar — four boxes (added 2026-08-29)

| Box | Faction pack | In print |
|---|---|---|
| Fusil Platoon | `eng_01-04_aos_spearhead_cities_of_sigmar_fusil_platoon` | no |
| Castellite Company | `eng_01-04_aos_spearhead_cities_of_sigmar_castelite_company` | no |
| Sentinels of Embergard | `eng_15-04_aos_spearhead_city_of_ash_gaming_pack` | yes |
| Zenestra's Zealots | `eng_13-05_aos_spearhead_cities_of_sigmar_zenestra-s_zealots` | yes |

Four things measured while transcribing these:

- **A pack can hold boxes of two different Grand Alliances.** The City of Ash gaming pack carries
  Sentinels of Embergard on pages 1-4 and a Skaven box on pages 5-8. Only the first is Order.
- **The reference inventory and the faction pack disagree about which unit is the general.** For
  Zenestra's Zealots the inventory names Pontifex Zenestra; the pack names the Freeguild Marshal
  and Relic Envoy. The catalogue follows the pack, as it does for every other value.
- **The model counts differ by one wherever a box contains a token**, and always in the same
  direction: the inventory counts the token as a model. Fusil Platoon 24 against 23 (Blackpowder
  Squire), Sentinels of Embergard 18 against 17 (Thexa), Zenestra's Zealots 19 against 18 (Relic
  Envoy). The catalogue carries the pack's counts.
- **Where a unit's weapons are split across its models, the carrier counts follow the printed
  wording rather than a guess.** Wildercorps Hunters print "4/11 models are Trailhounds and are
  armed with a Trailhound's Ferocious Bite instead of any other weapons" and "the Wildercorps
  Warden is armed with a Trailhound's Ferocious Bite in addition to their other weapons", which
  gives 7 crossbows, 7 hunting weapons and 5 bites.

### Yndrasta's Spearhead — Stormcast Eternals (added 2026-08-29)

Transcribed from the same faction pack as the box below, pages 1-8. The box is no longer in print
and carries `sph-flag::legends`.

It contains the same unit twice — two units of 5 Vanquishers — which is why a unit row is
identified by its id rather than by its name: `04-vanquishers` and `05-vanquishers` are two rows
with one name.

Its box-rules row is the first written under the rule above. Nothing on pages 2 and 3 was
summarised: the battle trait's own lead-in sentence, both regiment abilities and all four
enhancements are carried, in the order they are printed.

### Vigilant Brotherhood — Stormcast Eternals (added 2026-08-29)

Transcribed from the official faction pack published by Games Workshop at
`assets.warhammer-community.com/eng_aos_spearhead_stormcast_eternals_dec_24-jyo1gqr2pm-0e3gf5ydzh.pdf`
(15 pages, December 2024 edition), pages 9 and 12–15. Every value was read off the rendered page
rather than off an extracted text layer, because the extraction reversed the printed order of the
abilities on the Prosecutors warscroll and splits the statline labels from their values.

Nothing was derived from the regular Age of Sigmar warscrolls of the same units, and nothing was
invented.

Two things measured while transcribing, recorded here because the next reader will hit them:

- The public reference inventory this project uses to enumerate the boxes gives this one a **model
  count of 11**. The faction pack lists 1 Lord-Vigilant on Gryph-stalker, 1 Lord-Veritant, 3
  Prosecutors and 5 Liberators, which is **10**. The Lord-Veritant's Gryph-crow is a token rather
  than a model. The catalogue carries the counts the faction pack prints; the eleventh model is not
  invented here to make the two agree.
- Its **box rules** were added later, with the Order stage: battle traits, regiment abilities and
  enhancements from pages 10 and 11, on the box-rules row described above. They were left out at
  first because how they map onto a catalogue's shapes was still open.

## Licence

MIT, see `LICENSE`.

Age of Sigmar and Spearhead are trademarks of Games Workshop Limited. This repository is unofficial
and unaffiliated; it contains no Games Workshop artwork and claims no rights in their intellectual
property.
