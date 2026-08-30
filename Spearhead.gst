<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<gameSystem id="sph1-6c4a-2e97-0001" name="Spearhead" battleScribeVersion="2.03" revision="1" authorName="Armamentarium" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <profileTypes>
      <profileType name="Melee Weapon" hidden="false" id="9074-76b6-9e2f-81e3" sortIndex="4">
        <characteristicTypes>
          <characteristicType id="60e-35aa-31ed-e488" name="Atk"/>
          <characteristicType id="26dc-168-b2fd-cb93" name="Hit"/>
          <characteristicType id="61c1-22cc-40af-2847" name="Wnd"/>
          <characteristicType id="eccc-10fa-6958-fb73" name="Rnd"/>
          <characteristicType id="e948-9c71-12a6-6be4" name="Dmg"/>
          <characteristicType id="eda3-7332-5db1-4159" name="Ability"/>
        </characteristicTypes>
      </profileType>
      <profileType name="Ranged Weapon" hidden="false" id="1fd-a42f-41d3-fe05" sortIndex="3">
        <characteristicTypes>
          <characteristicType id="c6b5-908c-a604-1a98" name="Rng"/>
          <characteristicType id="aa17-4296-2887-e05d" name="Atk"/>
          <characteristicType id="194d-aeb6-5ba7-83b4" name="Hit"/>
          <characteristicType id="d3d5-9dc6-13de-8d1" name="Wnd"/>
          <characteristicType id="d03f-a9ae-3eec-755" name="Rnd"/>
          <characteristicType id="96c2-d0a5-ea1e-653b" name="Dmg"/>
          <characteristicType id="d793-3dd7-9c13-741e" name="Ability"/>
        </characteristicTypes>
      </profileType>
      <profileType name="Ability (Passive)" hidden="false" id="907f-a48-6a04-f788" sortIndex="5">
        <characteristicTypes>
          <characteristicType id="b977-7c5e-33b2-428e" name="Keywords"/>
          <characteristicType id="fd7f-888d-3257-a12b" name="Effect"/>
        </characteristicTypes>
        <attributeTypes>
          <attributeType name="Color" id="50fe-4f29-6bc3-dcc6"/>
          <attributeType name="Type" id="bf11-4e10-3ab1-06f4"/>
          <attributeType name="Parent Node" id="e2e1-15ca-d345-22b8"/>
        </attributeTypes>
      </profileType>
      <profileType name="Ability (Spell)" hidden="false" id="7312-8367-c171-f2ef" sortIndex="8">
        <characteristicTypes>
          <characteristicType id="de6f-d57b-248a-83be" name="Timing"/>
          <characteristicType id="9fc7-b0f6-d018-a608" name="Casting Value"/>
          <characteristicType id="24f8-3803-4ab1-3b6c" name="Declare"/>
          <characteristicType id="1cb9-a-1345-907f" name="Effect"/>
          <characteristicType id="353f-565e-c351-1cf2" name="Keywords"/>
        </characteristicTypes>
        <attributeTypes>
          <attributeType name="Color" id="16b6-0911-f549-a4bd"/>
          <attributeType name="Parent Node" id="da27-8d61-f955-5031"/>
          <attributeType name="Type" id="da27-8d61-f955-5031"/>
        </attributeTypes>
      </profileType>
      <profileType name="Ability (Prayer)" hidden="false" id="5946-234-d7b4-6195" sortIndex="9">
        <characteristicTypes>
          <characteristicType id="76bf-8126-64d4-c709" name="Timing"/>
          <characteristicType id="f192-6780-8138-9cef" name="Chanting Value"/>
          <characteristicType id="284c-90b2-245b-adf3" name="Declare"/>
          <characteristicType id="6219-6fcc-5ae2-a6b7" name="Effect"/>
          <characteristicType id="e3d8-f58b-e4e0-8e9d" name="Keywords"/>
        </characteristicTypes>
        <attributeTypes>
          <attributeType name="Color" id="7564-4bf0-b34a-b143"/>
          <attributeType name="Type" id="c63c-196d-34a7-cec3"/>
          <attributeType name="Parent Node" id="5d25-63d6-3935-9312"/>
        </attributeTypes>
      </profileType>
      <profileType name="Ability (Command)" hidden="false" id="55ac-f837-dded-5872" sortIndex="7">
        <characteristicTypes>
          <characteristicType id="736-6e3a-d0b5-a1b0" name="Timing"/>
          <characteristicType id="a49e-3082-e2a6-e802" name="Cost"/>
          <characteristicType id="b77f-7548-840e-c086" name="Declare"/>
          <characteristicType id="2111-3ca8-61dd-a5f0" name="Effect"/>
          <characteristicType id="445d-f443-5448-e7ce" name="Keywords"/>
        </characteristicTypes>
        <attributeTypes>
          <attributeType name="Color" id="5c69-e4b9-19bc-e801"/>
          <attributeType name="Type" id="2bd5-08f1-f3d1-86f7"/>
          <attributeType name="Parent Node" id="df75-e7dc-12b5-48a8"/>
        </attributeTypes>
      </profileType>
      <profileType name="Ability (Activated)" hidden="false" id="59b6-d47a-a68a-5dcc" sortIndex="6">
        <characteristicTypes>
          <characteristicType id="652c-3d84-4e7-14f4" name="Timing"/>
          <characteristicType id="bad3-f9c5-ba46-18cb" name="Declare"/>
          <characteristicType id="b6f1-ba36-6cd-3b03" name="Effect"/>
          <characteristicType id="12e8-3214-7d8f-1d0f" name="Keywords"/>
          <characteristicType id="1b32-c9d6-3106-166b" name="Used By"/>
        </characteristicTypes>
        <attributeTypes>
          <attributeType name="Color" id="5a11-eab3-180c-ddf5"/>
          <attributeType name="Type" id="6d16-c86b-2698-85a4"/>
          <attributeType name="Parent Node" id="2d74-4dcd-8468-87fa"/>
        </attributeTypes>
      </profileType>
      <profileType name="Unit" hidden="false" id="ff03-376e-972f-8ab2" sortIndex="2">
        <characteristicTypes>
          <characteristicType id="fed0-d1b3-1bb8-c501" name="Move"/>
          <characteristicType id="96be-54ae-ce7b-10b7" name="Health"/>
          <characteristicType id="1981-ef09-96f6-7aa9" name="Save"/>
          <characteristicType id="6c6f-8510-9ce1-fc6e" name="Control"/>
        </characteristicTypes>
      </profileType>
      <profileType name="Manifestation" hidden="false" id="1287-3a-9799-7e40" sortIndex="1">
        <characteristicTypes>
          <characteristicType name="Move" hidden="false" id="c28a-6000-2a0b-e7cf"/>
          <characteristicType name="Health" hidden="false" id="d1b9-3068-515-131e"/>
          <characteristicType name="Save" hidden="false" id="80c7-7691-b6ed-d6a6"/>
          <characteristicType name="Banishment" hidden="false" id="97a2-d412-9ac-6a37"/>
        </characteristicTypes>
        <attributeTypes>
          <attributeType name="Base Size" id="50db-066e-a3e7-696f"/>
        </attributeTypes>
      </profileType>
      <profileType name="Battle Tactic Card" id="abf8-a239-9e66-54c1" hidden="false" sortIndex="10">
        <characteristicTypes>
          <characteristicType name="Card" id="67f1-ce6d-1cf4-a4df"/>
          <characteristicType name="Affray" id="1047-3e43-674d-dc6c"/>
          <characteristicType name="Strike" id="94d4-173e-0f65-c569"/>
          <characteristicType name="Domination" id="e1d7-1d3c-f001-62e0"/>
        </characteristicTypes>
      </profileType>
      <profileType name="Ability (Blood Tithe)" hidden="false" id="5453-37d7-6d37-db1b" sortIndex="11">
        <characteristicTypes>
          <characteristicType id="13a2-dcf4-38ba-ff59" name="Timing"/>
          <characteristicType id="85a7-1eff-2a27-7d21" name="Declare"/>
          <characteristicType id="277c-dbd2-179f-36f4" name="Effect"/>
          <characteristicType id="5329-0c08-0400-de40" name="Keywords"/>
          <characteristicType id="5252-c26f-597b-4f23" name="Used By"/>
          <characteristicType name="Blood Tithe Points" id="937f-e9e7-e332-d608"/>
          <characteristicType name="Unlock Condition" id="8359-f915-24d8-23c4"/>
        </characteristicTypes>
        <attributeTypes>
          <attributeType name="Color" id="9019-1a17-dfdb-d171"/>
          <attributeType name="Type" id="ba97-56ed-9674-f836"/>
          <attributeType name="Parent Node" id="540d-cdd1-5262-593f"/>
        </attributeTypes>
      </profileType>
      <profileType name="Ability (Fate)" hidden="false" id="9b15-469e-8bf3-70c7" sortIndex="12">
        <characteristicTypes>
          <characteristicType id="ee08-f0bb-c101-58d5" name="Timing"/>
          <characteristicType id="74f4-c00a-61c2-280d" name="Declare"/>
          <characteristicType id="c24b-9e80-9805-8ccf" name="Effect"/>
          <characteristicType id="3a10-e240-163d-d34a" name="Keywords"/>
          <characteristicType id="fb10-043b-0db8-f864" name="Used By"/>
          <characteristicType name="Fate Points" id="2817-a813-f11c-2961"/>
        </characteristicTypes>
        <attributeTypes>
          <attributeType name="Color" id="7117-6fca-9b35-9a1b"/>
          <attributeType name="Type" id="bafa-c720-e165-8c34"/>
          <attributeType name="Parent Node" id="65cf-bbb1-eb30-7049"/>
        </attributeTypes>
      </profileType>
    </profileTypes>
  <categoryEntries>
    <categoryEntry id="sph-cat::vigilant-brotherhood" name="Spearhead: Stormcast Eternals (Vigilant Brotherhood)" hidden="false" />
    <categoryEntry id="sph-faction::stormcast-eternals" name="Stormcast Eternals" hidden="false" />
    <categoryEntry id="sph-alliance::order" name="Order" hidden="false" />
    <categoryEntry id="sph-flag::legends" name="Legends" hidden="false" />
    <categoryEntry id="sph-kw::hero" name="Hero" hidden="false" />
    <categoryEntry id="sph-kw::cavalry" name="Cavalry" hidden="false" />
    <categoryEntry id="sph-kw::priest" name="Priest" hidden="false" />
    <categoryEntry id="sph-kw::infantry" name="Infantry" hidden="false" />
    <categoryEntry id="sph-kw::fly" name="Fly" hidden="false" />
    <categoryEntry id="sph-kw::reinforcements" name="Reinforcements" hidden="false" />
    <categoryEntry id="sph-cat::yndrastas-spearhead" name="Spearhead: Stormcast Eternals (Yndrasta's Spearhead)" hidden="false" />
    <categoryEntry id="sph-kw::ward-6" name="Ward (6+)" hidden="false" />
    <categoryEntry id="sph-kw::war-machine" name="War Machine" hidden="false" />
    <categoryEntry id="sph-cat::fusil-platoon" name="Spearhead: Cities of Sigmar (Fusil Platoon)" hidden="false" />
    <categoryEntry id="sph-cat::castellite-company" name="Spearhead: Cities of Sigmar (Castellite Company)" hidden="false" />
    <categoryEntry id="sph-cat::sentinels-of-embergard" name="Spearhead: Cities of Sigmar (Sentinels of Embergard)" hidden="false" />
    <categoryEntry id="sph-cat::zenestras-zealots" name="Spearhead: Cities of Sigmar (Zenestra's Zealots)" hidden="false" />
    <categoryEntry id="sph-faction::cities-of-sigmar" name="Cities of Sigmar" hidden="false" />
    <categoryEntry id="sph-kw::castelite" name="Castelite" hidden="false" />
    <categoryEntry id="sph-kw::wizard" name="Wizard" hidden="false" />
    <categoryEntry id="sph-kw::ward-4" name="Ward (4+)" hidden="false" />
    <categoryEntry id="sph-cat::heartflayer-troupe" name="Spearhead: Daughters of Khaine (Heartflayer Troupe)" hidden="false" />
    <categoryEntry id="sph-cat::khainite-shadow-coven" name="Spearhead: Daughters of Khaine (Khainite Shadow Coven)" hidden="false" />
    <categoryEntry id="sph-faction::daughters-of-khaine" name="Daughters of Khaine" hidden="false" />
    <categoryEntry id="sph-cat::saga-axeband" name="Spearhead: Fyreslayers (Saga Axeband)" hidden="false" />
    <categoryEntry id="sph-faction::fyreslayers" name="Fyreslayers" hidden="false" />
    <categoryEntry id="sph-cat::akhelian-tide-guard" name="Spearhead: Idoneth Deepkin (Akhelian Tide Guard)" hidden="false" />
    <categoryEntry id="sph-cat::soulraid-hunt" name="Spearhead: Idoneth Deepkin (Soulraid Hunt)" hidden="false" />
    <categoryEntry id="sph-faction::idoneth-deepkin" name="Idoneth Deepkin" hidden="false" />
    <categoryEntry id="sph-cat::grundstok-trailblazers" name="Spearhead: Kharadron Overlords (Grundstok Trailblazers)" hidden="false" />
    <categoryEntry id="sph-cat::skyhammer-task-force" name="Spearhead: Kharadron Overlords (Skyhammer Task Force)" hidden="false" />
    <categoryEntry id="sph-faction::kharadron-overlords" name="Kharadron Overlords" hidden="false" />
    <categoryEntry id="sph-cat::glittering-phalanx" name="Spearhead: Lumineth Realm-Lords (Glittering Phalanx)" hidden="false" />
    <categoryEntry id="sph-cat::hurakan-vanguard" name="Spearhead: Lumineth Realm-Lords (Hurakan Vanguard)" hidden="false" />
    <categoryEntry id="sph-faction::lumineth-realm-lords" name="Lumineth Realm-Lords" hidden="false" />
    <categoryEntry id="sph-kw::monster" name="Monster" hidden="false" />
    <categoryEntry id="sph-kw::ward-5" name="Ward (5+)" hidden="false" />
    <categoryEntry id="sph-cat::starscale-warhost" name="Spearhead: Seraphon (Starscale Warhost)" hidden="false" />
    <categoryEntry id="sph-cat::sunblooded-prowlers" name="Spearhead: Seraphon (Sunblooded Prowlers)" hidden="false" />
    <categoryEntry id="sph-faction::seraphon" name="Seraphon" hidden="false" />
    <categoryEntry id="sph-kw::beast" name="Beast" hidden="false" />
    <categoryEntry id="sph-kw::saurus" name="Saurus" hidden="false" />
    <categoryEntry id="sph-kw::skink" name="Skink" hidden="false" />
    <categoryEntry id="sph-cat::bitterbark-copse" name="Spearhead: Sylvaneth (Bitterbark Copse)" hidden="false" />
    <categoryEntry id="sph-cat::spitewing-flight" name="Spearhead: Sylvaneth (Spitewing Flight)" hidden="false" />
    <categoryEntry id="sph-faction::sylvaneth" name="Sylvaneth" hidden="false" />
    <categoryEntry id="sph-cat::bloodbound-gore-pilgrims" name="Spearhead: Blades of Khorne (Bloodbound Gore Pilgrims)" hidden="false" />
    <categoryEntry id="sph-cat::fangs-of-the-blood-god" name="Spearhead: Blades of Khorne (Fangs of the Blood God)" hidden="false" />
    <categoryEntry id="sph-faction::blades-of-khorne" name="Blades of Khorne" hidden="false" />
    <categoryEntry id="sph-alliance::chaos" name="Chaos" hidden="false" />
    <categoryEntry id="sph-cat::fluxblade-coven" name="Spearhead: Disciples of Tzeentch (Fluxblade Coven)" hidden="false" />
    <categoryEntry id="sph-cat::tzaangor-warflock" name="Spearhead: Disciples of Tzeentch (Tzaangor Warflock)" hidden="false" />
    <categoryEntry id="sph-faction::disciples-of-tzeentch" name="Disciples of Tzeentch" hidden="false" />
    <categoryEntry id="sph-cat::blades-of-the-lurid-dream" name="Spearhead: Hedonites of Slaanesh (Blades of the Lurid Dream)" hidden="false" />
    <categoryEntry id="sph-cat::epicurean-revellers" name="Spearhead: Hedonites of Slaanesh (Epicurean Revellers)" hidden="false" />
    <categoryEntry id="sph-faction::hedonites-of-slaanesh" name="Hedonites of Slaanesh" hidden="false" />
    <categoryEntry id="sph-cat::helforge-host" name="Spearhead: Helsmiths of Hashut (Helforge Host)" hidden="false" />
    <categoryEntry id="sph-faction::helsmiths-of-hashut" name="Helsmiths of Hashut" hidden="false" />
    <categoryEntry id="sph-cat::bleak-host" name="Spearhead: Maggotkin of Nurgle (Bleak Host)" hidden="false" />
    <categoryEntry id="sph-cat::bubonic-cell" name="Spearhead: Maggotkin of Nurgle (Bubonic Cell)" hidden="false" />
    <categoryEntry id="sph-faction::maggotkin-of-nurgle" name="Maggotkin of Nurgle" hidden="false" />
    <categoryEntry id="sph-cat::gnawfeast-clawpack" name="Spearhead: Skaven (Gnawfeast Clawpack)" hidden="false" />
    <categoryEntry id="sph-cat::warpspark-clawpack" name="Spearhead: Skaven (Warpspark Clawpack)" hidden="false" />
    <categoryEntry id="sph-cat::crixxits-kill-pack" name="Spearhead: Skaven (Crixxit's Kill Pack)" hidden="false" />
    <categoryEntry id="sph-faction::skaven" name="Skaven" hidden="false" />
    <categoryEntry id="sph-cat::darkoath-raiders" name="Spearhead: Slaves to Darkness (Darkoath Raiders)" hidden="false" />
    <categoryEntry id="sph-cat::bloodwind-legion" name="Spearhead: Slaves to Darkness (Bloodwind Legion)" hidden="false" />
    <categoryEntry id="sph-faction::slaves-to-darkness" name="Slaves to Darkness" hidden="false" />
    <categoryEntry id="sph-alliance::death" name="Death" hidden="false" />
    <categoryEntry id="sph-faction::flesh-eater-courts" name="Flesh-Eater Courts" hidden="false" />
    <categoryEntry id="sph-cat::carrion-retainers" name="Spearhead: Flesh-Eater Courts (Carrion Retainers)" hidden="false" />
    <categoryEntry id="sph-cat::charnel-watch" name="Spearhead: Flesh-Eater Courts (Charnel Watch)" hidden="false" />
    <categoryEntry id="sph-kw::serfs" name="Serfs" hidden="false" />
    <categoryEntry id="sph-kw::knights" name="Knights" hidden="false" />
    <categoryEntry id="sph-faction::nighthaunt" name="Nighthaunt" hidden="false" />
    <categoryEntry id="sph-cat::cursed-shacklehorde" name="Spearhead: Nighthaunt (Cursed Shacklehorde)" hidden="false" />
    <categoryEntry id="sph-cat::slasher-host" name="Spearhead: Nighthaunt (Slasher Host)" hidden="false" />
    <categoryEntry id="sph-faction::ossiarch-bonereapers" name="Ossiarch Bonereapers" hidden="false" />
    <categoryEntry id="sph-cat::kavalos-vanguard" name="Spearhead: Ossiarch Bonereapers (Kavalos Vanguard)" hidden="false" />
    <categoryEntry id="sph-cat::mortisan-elite" name="Spearhead: Ossiarch Bonereapers (Mortisan Elite)" hidden="false" />
    <categoryEntry id="sph-cat::tithe-reaper-echelon" name="Spearhead: Ossiarch Bonereapers (Tithe-Reaper Echelon)" hidden="false" />
    <categoryEntry id="sph-faction::soulblight-gravelords" name="Soulblight Gravelords" hidden="false" />
    <categoryEntry id="sph-cat::bloodcrave-hunt" name="Spearhead: Soulblight Gravelords (Bloodcrave Hunt)" hidden="false" />
    <categoryEntry id="sph-kw::vampire" name="Vampire" hidden="false" />
    <categoryEntry id="sph-cat::deathrattle-tomb-host" name="Spearhead: Soulblight Gravelords (Deathrattle Tomb Host)" hidden="false" />
    <categoryEntry id="sph-alliance::destruction" name="Destruction" hidden="false" />
    <categoryEntry id="sph-cat::bad-moon-madmob" name="Spearhead: Gloomspite Gitz (Bad Moon Madmob)" hidden="false" />
    <categoryEntry id="sph-cat::snarlpack-huntaz" name="Spearhead: Gloomspite Gitz (Snarlpack Huntaz)" hidden="false" />
    <categoryEntry id="sph-faction::gloomspite-gitz" name="Gloomspite Gitz" hidden="false" />
    <categoryEntry id="sph-cat::scrapglutt" name="Spearhead: Ogor Mawtribes (Scrapglutt)" hidden="false" />
    <categoryEntry id="sph-cat::tyrants-bellow" name="Spearhead: Ogor Mawtribes (Tyrant's Bellow)" hidden="false" />
    <categoryEntry id="sph-cat::warglutt-marauders" name="Spearhead: Ogor Mawtribes (Warglutt Marauders)" hidden="false" />
    <categoryEntry id="sph-cat::mawseeker-mob" name="Spearhead: Ogor Mawtribes (Mawseeker Mob)" hidden="false" />
    <categoryEntry id="sph-faction::ogor-mawtribes" name="Ogor Mawtribes" hidden="false" />
    <categoryEntry id="sph-cat::ironjawz-bigmob" name="Spearhead: Orruk Warclans (Ironjawz Bigmob)" hidden="false" />
    <categoryEntry id="sph-cat::swampskulka-gang" name="Spearhead: Orruk Warclans (Swampskulka Gang)" hidden="false" />
    <categoryEntry id="sph-faction::orruk-warclans" name="Orruk Warclans" hidden="false" />
    <categoryEntry id="sph-kw::brute" name="Brute" hidden="false" />
  </categoryEntries>
  <forceEntries>
    <forceEntry id="sph-force::spearhead" name="Spearhead" hidden="false">
      <categoryLinks>
        <categoryLink id="37570171" name="Spearhead: Stormcast Eternals (Vigilant Brotherhood)" hidden="false" targetId="sph-cat::vigilant-brotherhood" />
        <categoryLink id="5f649ebe" name="Stormcast Eternals" hidden="false" targetId="sph-faction::stormcast-eternals" />
        <categoryLink id="443ee3df" name="Order" hidden="false" targetId="sph-alliance::order" />
        <categoryLink id="0b7c33c1" name="Legends" hidden="false" targetId="sph-flag::legends" />
        <categoryLink id="16a38ef6" name="Hero" hidden="false" targetId="sph-kw::hero" />
        <categoryLink id="08901358" name="Cavalry" hidden="false" targetId="sph-kw::cavalry" />
        <categoryLink id="25d297db" name="Priest" hidden="false" targetId="sph-kw::priest" />
        <categoryLink id="51ada155" name="Infantry" hidden="false" targetId="sph-kw::infantry" />
        <categoryLink id="d0f7d77d" name="Fly" hidden="false" targetId="sph-kw::fly" />
        <categoryLink id="53ec8137" name="Reinforcements" hidden="false" targetId="sph-kw::reinforcements" />
        <categoryLink id="5da2ee3b" name="Spearhead: Stormcast Eternals (Yndrasta's Spearhead)" hidden="false" targetId="sph-cat::yndrastas-spearhead" />
        <categoryLink id="572a0249" name="Ward (6+)" hidden="false" targetId="sph-kw::ward-6" />
        <categoryLink id="e1b7a682" name="War Machine" hidden="false" targetId="sph-kw::war-machine" />
        <categoryLink id="6240f34c" name="Spearhead: Cities of Sigmar (Fusil Platoon)" hidden="false" targetId="sph-cat::fusil-platoon" />
        <categoryLink id="1adf4ae5" name="Spearhead: Cities of Sigmar (Castellite Company)" hidden="false" targetId="sph-cat::castellite-company" />
        <categoryLink id="d3420274" name="Spearhead: Cities of Sigmar (Sentinels of Embergard)" hidden="false" targetId="sph-cat::sentinels-of-embergard" />
        <categoryLink id="1ea85b57" name="Spearhead: Cities of Sigmar (Zenestra's Zealots)" hidden="false" targetId="sph-cat::zenestras-zealots" />
        <categoryLink id="8951ac12" name="Cities of Sigmar" hidden="false" targetId="sph-faction::cities-of-sigmar" />
        <categoryLink id="2114cbcc" name="Castelite" hidden="false" targetId="sph-kw::castelite" />
        <categoryLink id="b2f7fd7a" name="Wizard" hidden="false" targetId="sph-kw::wizard" />
        <categoryLink id="103fb822" name="Ward (4+)" hidden="false" targetId="sph-kw::ward-4" />
        <categoryLink id="849d5e94" name="Spearhead: Daughters of Khaine (Heartflayer Troupe)" hidden="false" targetId="sph-cat::heartflayer-troupe" />
        <categoryLink id="a357dae5" name="Spearhead: Daughters of Khaine (Khainite Shadow Coven)" hidden="false" targetId="sph-cat::khainite-shadow-coven" />
        <categoryLink id="02035d33" name="Daughters of Khaine" hidden="false" targetId="sph-faction::daughters-of-khaine" />
        <categoryLink id="a350ac29" name="Spearhead: Fyreslayers (Saga Axeband)" hidden="false" targetId="sph-cat::saga-axeband" />
        <categoryLink id="267e3f93" name="Fyreslayers" hidden="false" targetId="sph-faction::fyreslayers" />
        <categoryLink id="e6f85903" name="Spearhead: Idoneth Deepkin (Akhelian Tide Guard)" hidden="false" targetId="sph-cat::akhelian-tide-guard" />
        <categoryLink id="734b2f3b" name="Spearhead: Idoneth Deepkin (Soulraid Hunt)" hidden="false" targetId="sph-cat::soulraid-hunt" />
        <categoryLink id="ff50933f" name="Idoneth Deepkin" hidden="false" targetId="sph-faction::idoneth-deepkin" />
        <categoryLink id="97cdd88e" name="Spearhead: Kharadron Overlords (Grundstok Trailblazers)" hidden="false" targetId="sph-cat::grundstok-trailblazers" />
        <categoryLink id="b6027245" name="Spearhead: Kharadron Overlords (Skyhammer Task Force)" hidden="false" targetId="sph-cat::skyhammer-task-force" />
        <categoryLink id="17276999" name="Kharadron Overlords" hidden="false" targetId="sph-faction::kharadron-overlords" />
        <categoryLink id="bb70910d" name="Spearhead: Lumineth Realm-Lords (Glittering Phalanx)" hidden="false" targetId="sph-cat::glittering-phalanx" />
        <categoryLink id="8dc5ca16" name="Spearhead: Lumineth Realm-Lords (Hurakan Vanguard)" hidden="false" targetId="sph-cat::hurakan-vanguard" />
        <categoryLink id="cbd4a49b" name="Lumineth Realm-Lords" hidden="false" targetId="sph-faction::lumineth-realm-lords" />
        <categoryLink id="970c6376" name="Monster" hidden="false" targetId="sph-kw::monster" />
        <categoryLink id="8b99e9ea" name="Ward (5+)" hidden="false" targetId="sph-kw::ward-5" />
        <categoryLink id="e78f63b1" name="Spearhead: Seraphon (Starscale Warhost)" hidden="false" targetId="sph-cat::starscale-warhost" />
        <categoryLink id="a85c0161" name="Spearhead: Seraphon (Sunblooded Prowlers)" hidden="false" targetId="sph-cat::sunblooded-prowlers" />
        <categoryLink id="3e6aecd9" name="Seraphon" hidden="false" targetId="sph-faction::seraphon" />
        <categoryLink id="eb0229e6" name="Beast" hidden="false" targetId="sph-kw::beast" />
        <categoryLink id="66719144" name="Saurus" hidden="false" targetId="sph-kw::saurus" />
        <categoryLink id="c0b847df" name="Skink" hidden="false" targetId="sph-kw::skink" />
        <categoryLink id="7ecec3b4" name="Spearhead: Sylvaneth (Bitterbark Copse)" hidden="false" targetId="sph-cat::bitterbark-copse" />
        <categoryLink id="cdc5eb6f" name="Spearhead: Sylvaneth (Spitewing Flight)" hidden="false" targetId="sph-cat::spitewing-flight" />
        <categoryLink id="270a43d8" name="Sylvaneth" hidden="false" targetId="sph-faction::sylvaneth" />
        <categoryLink id="f5bda857" name="Spearhead: Blades of Khorne (Bloodbound Gore Pilgrims)" hidden="false" targetId="sph-cat::bloodbound-gore-pilgrims" />
        <categoryLink id="ef479a9e" name="Spearhead: Blades of Khorne (Fangs of the Blood God)" hidden="false" targetId="sph-cat::fangs-of-the-blood-god" />
        <categoryLink id="b7f10120" name="Blades of Khorne" hidden="false" targetId="sph-faction::blades-of-khorne" />
        <categoryLink id="f0be801c" name="Chaos" hidden="false" targetId="sph-alliance::chaos" />
        <categoryLink id="b3d30d0a" name="Spearhead: Disciples of Tzeentch (Fluxblade Coven)" hidden="false" targetId="sph-cat::fluxblade-coven" />
        <categoryLink id="2946c687" name="Spearhead: Disciples of Tzeentch (Tzaangor Warflock)" hidden="false" targetId="sph-cat::tzaangor-warflock" />
        <categoryLink id="4cdddec5" name="Disciples of Tzeentch" hidden="false" targetId="sph-faction::disciples-of-tzeentch" />
        <categoryLink id="864788d8" name="Spearhead: Hedonites of Slaanesh (Blades of the Lurid Dream)" hidden="false" targetId="sph-cat::blades-of-the-lurid-dream" />
        <categoryLink id="4bdb0d58" name="Spearhead: Hedonites of Slaanesh (Epicurean Revellers)" hidden="false" targetId="sph-cat::epicurean-revellers" />
        <categoryLink id="4ca5d0c8" name="Hedonites of Slaanesh" hidden="false" targetId="sph-faction::hedonites-of-slaanesh" />
        <categoryLink id="15be41ee" name="Spearhead: Helsmiths of Hashut (Helforge Host)" hidden="false" targetId="sph-cat::helforge-host" />
        <categoryLink id="9034ea1c" name="Helsmiths of Hashut" hidden="false" targetId="sph-faction::helsmiths-of-hashut" />
        <categoryLink id="79e80562" name="Spearhead: Maggotkin of Nurgle (Bleak Host)" hidden="false" targetId="sph-cat::bleak-host" />
        <categoryLink id="cc290ce4" name="Spearhead: Maggotkin of Nurgle (Bubonic Cell)" hidden="false" targetId="sph-cat::bubonic-cell" />
        <categoryLink id="b189d1f6" name="Maggotkin of Nurgle" hidden="false" targetId="sph-faction::maggotkin-of-nurgle" />
        <categoryLink id="d5e09374" name="Spearhead: Skaven (Gnawfeast Clawpack)" hidden="false" targetId="sph-cat::gnawfeast-clawpack" />
        <categoryLink id="652afcfe" name="Spearhead: Skaven (Warpspark Clawpack)" hidden="false" targetId="sph-cat::warpspark-clawpack" />
        <categoryLink id="1a809160" name="Spearhead: Skaven (Crixxit's Kill Pack)" hidden="false" targetId="sph-cat::crixxits-kill-pack" />
        <categoryLink id="b8798889" name="Skaven" hidden="false" targetId="sph-faction::skaven" />
        <categoryLink id="48384df6" name="Spearhead: Slaves to Darkness (Darkoath Raiders)" hidden="false" targetId="sph-cat::darkoath-raiders" />
        <categoryLink id="ee70a668" name="Spearhead: Slaves to Darkness (Bloodwind Legion)" hidden="false" targetId="sph-cat::bloodwind-legion" />
        <categoryLink id="663c267b" name="Slaves to Darkness" hidden="false" targetId="sph-faction::slaves-to-darkness" />
        <categoryLink id="5ad3e02e" name="Destruction" hidden="false" targetId="sph-alliance::destruction" />
        <categoryLink id="83270144" name="Spearhead: Gloomspite Gitz (Bad Moon Madmob)" hidden="false" targetId="sph-cat::bad-moon-madmob" />
        <categoryLink id="cb9675f7" name="Spearhead: Gloomspite Gitz (Snarlpack Huntaz)" hidden="false" targetId="sph-cat::snarlpack-huntaz" />
        <categoryLink id="e5e38786" name="Gloomspite Gitz" hidden="false" targetId="sph-faction::gloomspite-gitz" />
        <categoryLink id="9bf1746b" name="Spearhead: Ogor Mawtribes (Scrapglutt)" hidden="false" targetId="sph-cat::scrapglutt" />
        <categoryLink id="52125731" name="Spearhead: Ogor Mawtribes (Tyrant's Bellow)" hidden="false" targetId="sph-cat::tyrants-bellow" />
        <categoryLink id="f4a49abd" name="Spearhead: Ogor Mawtribes (Warglutt Marauders)" hidden="false" targetId="sph-cat::warglutt-marauders" />
        <categoryLink id="ca0c4cb2" name="Spearhead: Ogor Mawtribes (Mawseeker Mob)" hidden="false" targetId="sph-cat::mawseeker-mob" />
        <categoryLink id="70c693a2" name="Ogor Mawtribes" hidden="false" targetId="sph-faction::ogor-mawtribes" />
        <categoryLink id="26f2c6dc" name="Spearhead: Orruk Warclans (Ironjawz Bigmob)" hidden="false" targetId="sph-cat::ironjawz-bigmob" />
        <categoryLink id="b97e0cf1" name="Spearhead: Orruk Warclans (Swampskulka Gang)" hidden="false" targetId="sph-cat::swampskulka-gang" />
        <categoryLink id="f19931fe" name="Orruk Warclans" hidden="false" targetId="sph-faction::orruk-warclans" />
      </categoryLinks>
    </forceEntry>
  </forceEntries>
</gameSystem>
