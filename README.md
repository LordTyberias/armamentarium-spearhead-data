# armamentarium-spearhead-data

BattleScribe catalogue data for the fixed Spearhead boxes of Age of Sigmar, read by the
[Armamentarium](https://github.com/LordTyberias/Armamentarium) project.

- `Spearhead.gst` — the game system: profile types, the categories, one force entry.
- one `.cat` file per faction, each holding the units of that faction's Spearheads.

**This repository is not complete.** It is being filled one Grand Alliance at a time
(ARMAM-275); Order, Chaos and Death are done, Destruction is not.

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
- **A printed loadout line rides on a profile named `Unit Composition`.** Where a warscroll states
  which of its models carries what — or that one of them is a Godspeaker, or that its Gong Carrier is
  a token — that sentence is a rule, carried verbatim as a passive profile of that name, in the place
  the warscroll prints it. The weapon child entries state the same split as numbers; the sentence is
  what the pack actually says, and the two are not the same thing.

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
end up in users' saved army lists**, so changing one strands the list that carries it. A weapon the
warscroll prints as **both** a ranged and a melee profile is one item and gets **one** child entry,
not two — Chainghasts' `Ghastflails` is the first of them, and two entries would have collided on
the same id.

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

### Gloomspite Gitz — two boxes (added 2026-08-30)

Bad Moon Madmob (`eng_01-04_aos_spearhead_gloomspite_gitz_bad_moon_madmob`, 8 pages, no longer in
print) and Snarlpack Huntaz (`eng_01-04_aos_spearhead_gloomspite_gitz_snarlpack_hunters`, 4 pages, in
print). Both boxes have a Spearhead PDF of their own, and both agree with the inventory: 34 models
(1 + 10 + 10 + 5 + 5 + 3) and 11 (1 + 2 + 3 + 3 + 1 + 1).

**A lead-in paragraph inside the battle traits can have no heading at all.** Bad Moon Madmob prints
one sentence — that one Squig Hoppers unit is not set up during deployment and may use the ability
below from the third battle round — with no title above it, immediately before `SQUIGALANCHE`. The
named case is recorded for Nighthaunt and Ossiarch Bonereapers above; this is the first untitled one
over 44 boxes. It is carried as a passive profile under the name of the ability it sets up, so that
two profiles named `Squigalanche` stand in printed order — the reserve rule the ability depends on
has to be somewhere in the data, and inventing a heading for it would be inventing printed text.

The text layer misordered the enhancements of Snarlpack Huntaz (it reads Sunsteala Shard and Glare
of Frazzlegit before Kunnin' as a Snarlfang, the page prints them the other way round) and put the
battle trait last. Both of its warscroll pages carry two warscrolls side by side, so all four
statlines arrive in one undifferentiated run. Every value here comes from the rendered image.

Sunsteala Wheelas is the one unit whose army-list line and warscroll disagree in number: the list
prints `1 Sunsteala Wheela`, the warscroll is titled `SUNSTEALA WHEELAS`. The entry carries the
warscroll's name, as every other entry does.

### Soulblight Gravelords — two boxes (added 2026-08-30)

Deathrattle Tomb Host (`eng_01-04_aos_spearhead_soulblight_gravelords_deathrattle_tomb_host`, 4 pages,
in print) and Bloodcrave Hunt (`eng_01-04_aos_spearhead_soulblight_gravelords_bloodcrave_hunt`, 7 pages,
no longer in print). Both boxes have a Spearhead PDF of their own.

**Both disagree with the inventory, and both by exactly four models.** The Tomb Host's army list reads
Wight King + 10 Barrow Guard + 5 Barrow Knights + 10 + 10 Deathrattle Skeletons = 36 against the
inventory's 40; the Bloodcrave Hunt's reads Vampire Lord + 10 + 10 Deathrattle Skeletons + 5 Blood
Knights + 3 Vargheists = 29 against 33. Unlike the token cases recorded in stages 1 and 2, neither pack
says anything that would account for the difference — no token, no marker, no unnumbered model. The
catalogue carries the packs' numbers, 36 and 29, and the discrepancy is left standing here rather than
resolved by a guess.

Deathrattle Skeletons stand in both boxes with identical characteristics and an identically named
ability, `Skeleton Legion`, that does different things: in the Tomb Host it is an End of Any Turn
ability returning D3 slain models, in the Bloodcrave Hunt it is a Your Combat Phase ability rolling a
legion roll of D6 per slain model and returning one for each 6. The second box's `Grave-sand Shard`
enhancement is written against that legion roll, so the two versions are not interchangeable.

### Ossiarch Bonereapers — three boxes (added 2026-08-30)

Kavalos Vanguard (`eng_18-02_aos_spearhead_ossiarch_bonereapers_kavalos_vanguard`, 4 pages, in print),
Mortisan Elite (`eng_jun25_aos_spearhead_ossiarchbr_rules`, 4 pages, no longer in print) and
Tithe-Reaper Echelon (`eng_aos_ossiarch_bonereapers_dec24`, 36 pages, no longer in print; the Spearhead
part is on pages 30-36). 19, 9 and 27 models, all three agreeing with the inventory. Mortisan Elite is
the smallest box of the collection so far at nine models across four units.

**Kavalos Deathriders appear in two of the three boxes and are not the same warscroll.** Same statline
(10" / 3 / 4+ / 1) and the same mount, but in Kavalos Vanguard they carry a `Kavalos Blade` (3/3+/4+/1/1)
and can `Wheel About` after charging, while in Tithe-Reaper Echelon they carry a `Nadirite Spear`
(3/3+/4+/1/1, Charge +1 Damage) and form a `Deathrider Wedge`. The clearest measurement yet that a
warscroll belongs to its box and not to its faction — this time inside a single faction pack's own
publisher.

Both `Reserve Contingent` (Tithe-Reaper Echelon) and `Heralds of Nagash` (Mortisan Elite) are named
headings **inside** the battle traits with a paragraph of their own, under which a single ability sits;
they are carried as passive profiles, as `Spectral Procession` is in Nighthaunt. `Heralds of Nagash` is
also the name of a Morghast Archai ability in the same box — a name is not an identity here either.

Tithe-Reaper Echelon is the first box whose army rule mints a resource of its own (`Ossiarch Commands`,
2 points per battle round), and four of its abilities carry `Ossiarch Command` in their Keywords field.
Kavalos Vanguard, from the same faction, has no such rule at all.

### Nighthaunt — two boxes (added 2026-08-30)

Slasher Host (`eng_aos_nighthaunt_dec24`, 43 pages, no longer in print; the Spearhead part is on pages
37-43) and Cursed Shacklehorde (`eng_29-04_aos_spearhead_nighthaunt_cursed_shacklehorde`, 4 pages, in
print). 34 and 25 models, both agreeing with the inventory. Slasher Host is the largest box of the
collection so far, and it reaches that size by fielding four warscrolls across six units: two units of
Grimghast Reapers and two of Chainrasps, each pair identical.

**The same ability name means different rules in different boxes.** Both boxes carry a battle trait
called `Ethereal`: Cursed Shacklehorde's ignores *negative* modifiers to save rolls, Slasher Host's
ignores *all* modifiers, positive and negative. A box's rules are its own down to the wording, and the
name is no more an identity here than it is anywhere else in this format.

Cursed Shacklehorde prints a named heading **inside** its battle traits — `SPECTRAL PROCESSION`, with a
paragraph of its own, under which `Cackling Arrival` sits. It is carried as a passive profile like the
`Regiment Abilities` and `Enhancements` headings are, for the same reason: without it, the reserve rule
its ability depends on is nowhere in the data.

Chainghasts carry `Ghastflails` as a ranged **and** a melee profile under one name; see the note on
weapon child entries above.

The text layer of the Spearhead PDF put the Move, Health, Save and Control values of the three
warscrolls sharing page 4 in one undifferentiated run, in an order that follows neither the printed
sequence of the warscrolls nor a single reading direction. Every statline of both boxes was read off
the rendered page.

### Flesh-Eater Courts — two boxes (added 2026-08-30)

Carrion Retainers (`eng_aos_faction_flesh_eater_courts_apr_25`, 41 pages, no longer in print) and
Charnel Watch (`eng_aug25_aos_spearhead_rules_fec`, 4 pages, in print). The first is a **full faction
pack** whose Spearhead part sits on pages 35-41; the second is a Spearhead PDF of its own. 15 and 17
models, both agreeing with the inventory.

The two boxes each field an abhorrant vampire wielding the identically named and identically statted
`Gory Talons and Fangs` (5/3+/3+/1/2), and everything around it differs: the Archregent is a 6" / 6
health / 5+ save model **without** the Wizard keyword, the Gorewarden a 12" / 7 / 5+ model **with** it —
and both cast a spell with a 2D6 casting roll regardless. A keyword line is per box, and so is what it
omits.

Charnel Watch is the first box of the collection built around a rotating army rule: `Delusions and
Madness` picks one of four Delusions per battle round, two of which are printed as battle traits and
two as the box's regiment abilities. All four carry the `Delusion` keyword in their own Keywords field,
so the reader can tell which abilities the rotation selects between.

The text layer of the Spearhead PDF printed `Delusion of the Sentinel` at the top of the battle traits
block, where the page prints it under `Regiment Abilities` — the reordering the collection's first
stage measured, met again.

### Slaves to Darkness — two boxes (added 2026-08-30)

Darkoath Raiders (`eng_01-04_aos_spearhead_slaves_to_darkness_darkoath_raiders`, 4 pages) and
Bloodwind Legion (`eng_spearhead_slaves_to_darkness.27`, 7 pages). Both in print, both model counts
agree with the inventory: 26 and 17.

Darkoath Savagers is the only unit in this stage whose `Unit Composition` line names a role rather
than a weapon — *1 model in this unit is a Godspeaker* — and its ability is conditional on that model
being present. The Chaos Warriors of Bloodwind Legion appear twice with identical warscrolls.

Bloodwind Legion's battle trait is a D6 table (`Eye of the Gods`), carried in one profile the way
Fyreslayers' `Ur-gold Runes` was in stage 1.

### Skaven — three boxes (added 2026-08-30)

The largest faction of the stage, and the only one so far whose three boxes come from three
differently shaped documents.

Gnawfeast Clawpack and Warpspark Clawpack **share one PDF**
(`eng_01-04_aos_spearhead_skaven_gnawfeast_clawpack`, 15 pages: Gnawfeast on 1-8, Warpspark on
9-15) — the inventory links Warpspark to a second file
(`rules-downloads/.../eng_skaven_spearhead.pdf`) that was not needed. Crixxit's Kill Pack sits on
pages 5-8 of the City of Ash gaming pack, whose pages 1-4 are the Order box Sentinels of Embergard
read in stage 1: **one gaming pack, two Grand Alliances**, as recorded there.

Model counts: 26 and 25 agree with the inventory. Crixxit's Kill Pack does not — 22 against the
inventory's 24 — and the pack says why in its own army list: *Each unit of Gutter Runners has 1 Bomb
Rat token*. Two tokens, two models of difference. The catalogue carries 22.

Grey Seer and Clanrats appear in both Clawpacks with **identical** warscrolls, which is worth
recording next to the four boxes where the same unit differed: sameness across boxes happens, it is
just not something a reader may assume.

Warp Lightning Cannon prints `See below` spanning its Wound, Rend and Damage cells; all three carry
that text, as the Vanari Bladelords row does in stage 1.

### Maggotkin of Nurgle — two boxes (added 2026-08-30)

Bleak Host (`eng_01-04_aos_spearhead_maggotkin_of_nurgle_bleak_host`, 7 pages, no longer in print)
and Bubonic Cell (`eng_14-01_aos_spearhead_maggotkin_of_nurgle_bubonic_cell`, 4 pages, in print).
Both 18 models, both agreeing with the inventory.

First boxes of the collection whose ability boxes print a **Keywords** value of their own — `Core`
on Bleak Host's `Daemonic Summoning`, `Deploy` and `Core` in Skaven, and `Cycle` on all four of
Bubonic Cell's rotating battle traits. Those go in the profile's Keywords characteristic, which had
been empty in every row until now.

Bubonic Cell's `Cycle of Corruption` prints its running order as a diagram rather than as text; the
four names and their numbers are carried in the profile, because a rotation without its order is not
a rule.

### Helsmiths of Hashut — one box (added 2026-08-30)

Helforge Host (`eng_01-04_aos_spearhead_helsmiths_of_hashut_helforge_host`, 4 pages, in print).

**13 models against the inventory's 14**, and the pack names the difference itself: the Infernal
Cohort ability `Strike the Gongs` states that *This unit's Gong Carrier (if any) is a token*. Fifth
measured case of the inventory counting tokens as models, and the first where a warscroll says so in
as many words.

### Hedonites of Slaanesh — two boxes (added 2026-08-30)

Blades of the Lurid Dream (`eng_01-04_aos_spearhead_hedonites_of_slaanesh_blades_of_the_lurid_dream`,
7 pages) and Epicurean Revellers (`eng_17-06_aos_spearhead_hedonites_of_slaanesh_epicurean_revellers`,
4 pages). Both out of print. 20 and 31 models, both agreeing with the inventory.

The two Blissbarb Archers units of Blades of the Lurid Dream differ by one model: one carries a
Blissbrew Homonculus, the other does not, and the Homonculus carries a Sybarite Blade but no bow.
The weapon child entries state 5 bows against 6 blades for the first unit and 5 against 5 for the
second — the only place in this stage where two units of the same warscroll carry different numbers
of the same weapon.

**Thricefold Discord is a unit of three models and the warscroll does not say so.** Its Health is 3,
its own ability treats *each model in this unit* as an individual unit, the army list gives no count
for the general, and 31 less the other four units leaves 3. Second case after Seraphon in stage 1 of
a general that is not one model; unlike that one, no designer's note states it.

### Disciples of Tzeentch — two boxes (added 2026-08-30)

Fluxblade Coven (`eng_01-04_aos_spearhead_disciples_of_tzeentch_fluxblade_coven`, 14 pages — a full
art page before each warscroll, so the warscrolls are on the even pages) and Tzaangor Warflock
(`eng_04-02_aos_spearhead_disciples_of_tzeentch`, 4 pages). 27 and 17 models, both agreeing with the
inventory.

**Fourth measured case of one unit with two warscrolls, and the widest divergence so far.** Tzaangors
appear in both boxes and differ in every part but their characteristics: the weapon is named `Savage
Blade and Vicious Beak` against `Savage Blades and Vicious Beak`, it has 2 attacks at Rend `-`
against 3 at Rend 1, the ability is `Long-planned Strike` against `Eldritch Raiders`, and one row
carries the Reinforcements keyword while the other does not.

Tzaangor Warflock's battle traits open with a sentence that has no box of its own, explaining that
the Tzaangor Enlightened are not deployed. It is carried as a profile named `Battle Traits` — the
same treatment the printed group headings get.

### Blades of Khorne — two boxes (added 2026-08-30)

Bloodbound Gore Pilgrims (`eng_01-04_aos_spearhead_blades_of_khorne_bloodbound_gore_pilgrims`,
7 pages, no longer in print) and Fangs of the Blood God
(`eng_01-04_aos_spearhead_blades_of_khorne_fangs_of_the_blood_god`, 4 pages, in print). 24 and 19
models, both agreeing with the inventory.

Each box contains one warscroll twice — Blood Warriors and Flesh Hounds — with no difference between
the two units. They are still two rows, numbered `02-` and `03-`, because the box contains two units.

### Sylvaneth — two boxes (added 2026-08-29)

Bitterbark Copse (`eng_aos_faction_sylvaneth_apr_25`, pages 32-38, no longer in print) and Spitewing
Flight (`eng_25-03_aos_spearhead_spitewing_flight_sylvaneth`, in print).

Both model counts agree with the inventory: 10 and 12. Neither box contains a token.

### Seraphon — two boxes (added 2026-08-29)

Sunblooded Prowlers (`eng_01-04_aos_spearhead_seraphon_sunblooded_prowlers`, in print) and Starscale
Warhost (`eng_aos_faction_pack_seraphon_dec_24`, pages 39-44, no longer in print).

Third case of one unit with two warscrolls, and the first where the difference is in the keywords:
Saurus Warriors carry Infantry and Saurus in Sunblooded Prowlers, and Infantry alone in Starscale
Warhost. The ability and the weapon are identical. A keyword is a rule here, so the rows stay
separate like every other.

Sunblooded Prowlers is the largest gap so far between the inventory's model count and the pack's:
31 against 27. The four are tokens the pack names as tokens — one Venomites and three Sun Acolytes.

Its general is a **unit of three models**, which the pack itself flags in a designer's note.

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
