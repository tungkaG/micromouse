<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="16" fill="1" visible="no" active="no"/>
<layer number="3" name="Route3" color="17" fill="1" visible="no" active="no"/>
<layer number="4" name="Route4" color="18" fill="1" visible="no" active="no"/>
<layer number="5" name="Route5" color="19" fill="1" visible="no" active="no"/>
<layer number="6" name="Route6" color="25" fill="1" visible="no" active="no"/>
<layer number="7" name="Route7" color="26" fill="1" visible="no" active="no"/>
<layer number="8" name="Route8" color="27" fill="1" visible="no" active="no"/>
<layer number="9" name="Route9" color="28" fill="1" visible="no" active="no"/>
<layer number="10" name="Route10" color="29" fill="1" visible="no" active="no"/>
<layer number="11" name="Route11" color="30" fill="1" visible="no" active="no"/>
<layer number="12" name="Route12" color="20" fill="1" visible="no" active="no"/>
<layer number="13" name="Route13" color="21" fill="1" visible="no" active="no"/>
<layer number="14" name="Route14" color="22" fill="1" visible="no" active="no"/>
<layer number="15" name="Route15" color="23" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="DSPIC33FJ64MC804-H_PT">
<packages>
<package name="TQFP44_10X10MC_MCH">
<smd name="1" x="-5.6134" y="4" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="2" x="-5.6134" y="3.2" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="3" x="-5.6134" y="2.4" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="4" x="-5.6134" y="1.6" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="5" x="-5.6134" y="0.8" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="6" x="-5.6134" y="0" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="7" x="-5.6134" y="-0.8" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="8" x="-5.6134" y="-1.6" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="9" x="-5.6134" y="-2.4" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="10" x="-5.6134" y="-3.2" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="11" x="-5.6134" y="-4" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="12" x="-4" y="-5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="13" x="-3.2" y="-5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="14" x="-2.4" y="-5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="15" x="-1.6" y="-5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="16" x="-0.8" y="-5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="17" x="0" y="-5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="18" x="0.8" y="-5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="19" x="1.6" y="-5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="20" x="2.4" y="-5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="21" x="3.2" y="-5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="22" x="4" y="-5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="23" x="5.6134" y="-4" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="24" x="5.6134" y="-3.2" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="25" x="5.6134" y="-2.4" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="26" x="5.6134" y="-1.6" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="27" x="5.6134" y="-0.8" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="28" x="5.6134" y="0" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="29" x="5.6134" y="0.8" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="30" x="5.6134" y="1.6" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="31" x="5.6134" y="2.4" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="32" x="5.6134" y="3.2" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="33" x="5.6134" y="4" dx="0.508" dy="1.4732" layer="1" rot="R270"/>
<smd name="34" x="4" y="5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="35" x="3.2" y="5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="36" x="2.4" y="5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="37" x="1.6" y="5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="38" x="0.8" y="5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="39" x="0" y="5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="40" x="-0.8" y="5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="41" x="-1.6" y="5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="42" x="-2.4" y="5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="43" x="-3.2" y="5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<smd name="44" x="-4" y="5.6134" dx="0.508" dy="1.4732" layer="1" rot="R180"/>
<wire x1="-5.1308" y1="-5.1308" x2="-4.5974" y2="-5.1308" width="0.1524" layer="21"/>
<wire x1="5.1308" y1="-5.1308" x2="5.1308" y2="-4.5974" width="0.1524" layer="21"/>
<wire x1="5.1308" y1="5.1308" x2="4.5974" y2="5.1308" width="0.1524" layer="21"/>
<wire x1="-5.1308" y1="5.1308" x2="-5.1308" y2="4.5974" width="0.1524" layer="21"/>
<wire x1="-5.1308" y1="-4.5974" x2="-5.1308" y2="-5.1308" width="0.1524" layer="21"/>
<wire x1="4.5974" y1="-5.1308" x2="5.1308" y2="-5.1308" width="0.1524" layer="21"/>
<wire x1="5.1308" y1="4.5974" x2="5.1308" y2="5.1308" width="0.1524" layer="21"/>
<wire x1="-4.5974" y1="5.1308" x2="-5.1308" y2="5.1308" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="-6.858" y="-3.0095"/>
<vertex x="-6.858" y="-3.3905"/>
<vertex x="-6.604" y="-3.3905"/>
<vertex x="-6.604" y="-3.0095"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="2.2095" y="-6.604"/>
<vertex x="2.2095" y="-6.858"/>
<vertex x="2.5905" y="-6.858"/>
<vertex x="2.5905" y="-6.604"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="6.858" y="1.7905"/>
<vertex x="6.858" y="1.4095"/>
<vertex x="6.604" y="1.4095"/>
<vertex x="6.604" y="1.7905"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-0.9905" y="6.604"/>
<vertex x="-0.9905" y="6.858"/>
<vertex x="-0.6095" y="6.858"/>
<vertex x="-0.6095" y="6.604"/>
</polygon>
<text x="-7.5692" y="4.1402" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="5.6134" y1="3.9878" x2="5.9944" y2="3.9878" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="3.9878" x2="8.5344" y2="3.9878" width="0.1524" layer="48"/>
<wire x1="8.5344" y1="3.9878" x2="8.9154" y2="3.9878" width="0.1524" layer="48"/>
<wire x1="5.6134" y1="3.2004" x2="8.5344" y2="3.2004" width="0.1524" layer="48"/>
<wire x1="8.5344" y1="3.2004" x2="8.9154" y2="3.2004" width="0.1524" layer="48"/>
<wire x1="8.5344" y1="3.9878" x2="8.5344" y2="5.2578" width="0.1524" layer="48"/>
<wire x1="8.5344" y1="3.2004" x2="8.5344" y2="1.9304" width="0.1524" layer="48"/>
<wire x1="8.5344" y1="3.9878" x2="8.4074" y2="4.2418" width="0.1524" layer="48"/>
<wire x1="8.5344" y1="3.9878" x2="8.6614" y2="4.2418" width="0.1524" layer="48"/>
<wire x1="8.4074" y1="4.2418" x2="8.6614" y2="4.2418" width="0.1524" layer="48"/>
<wire x1="8.5344" y1="3.2004" x2="8.4074" y2="2.9464" width="0.1524" layer="48"/>
<wire x1="8.5344" y1="3.2004" x2="8.6614" y2="2.9464" width="0.1524" layer="48"/>
<wire x1="8.4074" y1="2.9464" x2="8.6614" y2="2.9464" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="3.9878" x2="5.2324" y2="8.5344" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="8.5344" x2="5.2324" y2="8.9154" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="3.9878" x2="5.9944" y2="8.5344" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="8.5344" x2="3.9624" y2="8.5344" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="8.5344" x2="7.2644" y2="8.5344" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="8.5344" x2="4.9784" y2="8.6614" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="8.5344" x2="4.9784" y2="8.4074" width="0.1524" layer="48"/>
<wire x1="4.9784" y1="8.6614" x2="4.9784" y2="8.4074" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="8.5344" x2="6.2484" y2="8.6614" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="8.5344" x2="6.2484" y2="8.4074" width="0.1524" layer="48"/>
<wire x1="6.2484" y1="8.6614" x2="6.2484" y2="8.4074" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="3.9878" x2="-5.9944" y2="10.4394" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="10.4394" x2="-5.9944" y2="10.8204" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="8.5344" x2="5.9944" y2="10.4394" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="10.4394" x2="5.9944" y2="10.8204" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="10.4394" x2="5.9944" y2="10.4394" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="10.4394" x2="-5.7404" y2="10.5664" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="10.4394" x2="-5.7404" y2="10.3124" width="0.1524" layer="48"/>
<wire x1="-5.7404" y1="10.5664" x2="-5.7404" y2="10.3124" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="10.4394" x2="5.7404" y2="10.5664" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="10.4394" x2="5.7404" y2="10.3124" width="0.1524" layer="48"/>
<wire x1="5.7404" y1="10.5664" x2="5.7404" y2="10.3124" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-3.9878" x2="-5.0038" y2="-8.5344" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-8.5344" x2="-5.0038" y2="-8.9154" width="0.1524" layer="48"/>
<wire x1="5.0038" y1="-3.9878" x2="5.0038" y2="-8.5344" width="0.1524" layer="48"/>
<wire x1="5.0038" y1="-8.5344" x2="5.0038" y2="-8.9154" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-8.5344" x2="5.0038" y2="-8.5344" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-8.5344" x2="-4.7498" y2="-8.4074" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-8.5344" x2="-4.7498" y2="-8.6614" width="0.1524" layer="48"/>
<wire x1="-4.7498" y1="-8.4074" x2="-4.7498" y2="-8.6614" width="0.1524" layer="48"/>
<wire x1="5.0038" y1="-8.5344" x2="4.7498" y2="-8.4074" width="0.1524" layer="48"/>
<wire x1="5.0038" y1="-8.5344" x2="4.7498" y2="-8.6614" width="0.1524" layer="48"/>
<wire x1="4.7498" y1="-8.4074" x2="4.7498" y2="-8.6614" width="0.1524" layer="48"/>
<wire x1="-3.9878" y1="5.0038" x2="-8.5344" y2="5.0038" width="0.1524" layer="48"/>
<wire x1="-8.5344" y1="5.0038" x2="-8.9154" y2="5.0038" width="0.1524" layer="48"/>
<wire x1="-3.9878" y1="-5.0038" x2="-8.5344" y2="-5.0038" width="0.1524" layer="48"/>
<wire x1="-8.5344" y1="-5.0038" x2="-8.9154" y2="-5.0038" width="0.1524" layer="48"/>
<wire x1="-8.5344" y1="5.0038" x2="-8.5344" y2="-5.0038" width="0.1524" layer="48"/>
<wire x1="-8.5344" y1="5.0038" x2="-8.6614" y2="4.7498" width="0.1524" layer="48"/>
<wire x1="-8.5344" y1="5.0038" x2="-8.4074" y2="4.7498" width="0.1524" layer="48"/>
<wire x1="-8.6614" y1="4.7498" x2="-8.4074" y2="4.7498" width="0.1524" layer="48"/>
<wire x1="-8.5344" y1="-5.0038" x2="-8.6614" y2="-4.7498" width="0.1524" layer="48"/>
<wire x1="-8.5344" y1="-5.0038" x2="-8.4074" y2="-4.7498" width="0.1524" layer="48"/>
<wire x1="-8.6614" y1="-4.7498" x2="-8.4074" y2="-4.7498" width="0.1524" layer="48"/>
<wire x1="3.9878" y1="5.9944" x2="10.4394" y2="5.9944" width="0.1524" layer="48"/>
<wire x1="10.4394" y1="5.9944" x2="10.8204" y2="5.9944" width="0.1524" layer="48"/>
<wire x1="3.9878" y1="-5.9944" x2="10.4394" y2="-5.9944" width="0.1524" layer="48"/>
<wire x1="10.4394" y1="-5.9944" x2="10.8204" y2="-5.9944" width="0.1524" layer="48"/>
<wire x1="10.4394" y1="5.9944" x2="10.4394" y2="-5.9944" width="0.1524" layer="48"/>
<wire x1="10.4394" y1="5.9944" x2="10.3124" y2="5.7404" width="0.1524" layer="48"/>
<wire x1="10.4394" y1="5.9944" x2="10.5664" y2="5.7404" width="0.1524" layer="48"/>
<wire x1="10.3124" y1="5.7404" x2="10.5664" y2="5.7404" width="0.1524" layer="48"/>
<wire x1="10.4394" y1="-5.9944" x2="10.3124" y2="-5.7404" width="0.1524" layer="48"/>
<wire x1="10.4394" y1="-5.9944" x2="10.5664" y2="-5.7404" width="0.1524" layer="48"/>
<wire x1="10.3124" y1="-5.7404" x2="10.5664" y2="-5.7404" width="0.1524" layer="48"/>
<text x="-18.4658" y="-12.3444" size="1.27" layer="48" ratio="6" rot="SR0">Default Horiz Padstyle: RX20Y58D0T</text>
<text x="-17.907" y="-13.8684" size="1.27" layer="48" ratio="6" rot="SR0">Default Vert Padstyle: RX20Y58D0T</text>
<text x="-14.8082" y="-18.4404" size="1.27" layer="48" ratio="6" rot="SR0">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8082" y="-19.9644" size="1.27" layer="48" ratio="6" rot="SR0">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="9.0424" y="3.2766" size="0.635" layer="48" ratio="4" rot="SR0">0.031in/0.8mm</text>
<text x="1.8542" y="9.0424" size="0.635" layer="48" ratio="4" rot="SR0">0.03in/0.762mm</text>
<text x="-4.318" y="10.9474" size="0.635" layer="48" ratio="4" rot="SR0">0.472in/11.989mm</text>
<text x="-4.318" y="-9.6774" size="0.635" layer="48" ratio="4" rot="SR0">0.394in/10.008mm</text>
<text x="-17.7038" y="-0.3048" size="0.635" layer="48" ratio="4" rot="SR0">0.394in/10.008mm</text>
<text x="10.9474" y="-0.3048" size="0.635" layer="48" ratio="4" rot="SR0">0.472in/11.989mm</text>
<wire x1="3.7592" y1="5.0038" x2="4.2164" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="5.0038" x2="4.2164" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="5.9944" x2="3.7592" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="3.7592" y1="5.9944" x2="3.7592" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.9718" y1="5.0038" x2="3.429" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="3.429" y1="5.0038" x2="3.429" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="3.429" y1="5.9944" x2="2.9718" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.9718" y1="5.9944" x2="2.9718" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.159" y1="5.0038" x2="2.6162" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="5.0038" x2="2.6162" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="5.9944" x2="2.159" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.159" y1="5.9944" x2="2.159" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="5.0038" x2="1.8288" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.8288" y1="5.0038" x2="1.8288" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.8288" y1="5.9944" x2="1.3716" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="5.9944" x2="1.3716" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="5.0038" x2="1.016" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.016" y1="5.0038" x2="1.016" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.016" y1="5.9944" x2="0.5588" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="5.9944" x2="0.5588" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.2286" y1="5.0038" x2="0.2286" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="5.0038" x2="0.2286" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="5.9944" x2="-0.2286" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-0.2286" y1="5.9944" x2="-0.2286" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="5.0038" x2="-0.5588" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.5588" y1="5.0038" x2="-0.5588" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-0.5588" y1="5.9944" x2="-1.016" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="5.9944" x2="-1.016" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.8288" y1="5.0038" x2="-1.3716" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="5.0038" x2="-1.3716" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="5.9944" x2="-1.8288" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.8288" y1="5.9944" x2="-1.8288" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="5.0038" x2="-2.159" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="5.0038" x2="-2.159" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="5.9944" x2="-2.6162" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="5.9944" x2="-2.6162" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="5.0038" x2="-2.9718" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.9718" y1="5.0038" x2="-2.9718" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.9718" y1="5.9944" x2="-3.429" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="5.9944" x2="-3.429" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-4.2164" y1="5.0038" x2="-3.7592" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.7592" y1="5.0038" x2="-3.7592" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-3.7592" y1="5.9944" x2="-4.2164" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-4.2164" y1="5.9944" x2="-4.2164" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.7592" x2="-5.0038" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="4.2164" x2="-5.9944" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="4.2164" x2="-5.9944" y2="3.7592" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="3.7592" x2="-5.0038" y2="3.7592" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.9718" x2="-5.0038" y2="3.429" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.429" x2="-5.9944" y2="3.429" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="3.429" x2="-5.9944" y2="2.9718" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.9718" x2="-5.0038" y2="2.9718" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.159" x2="-5.0038" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.6162" x2="-5.9944" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.6162" x2="-5.9944" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.159" x2="-5.0038" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.3716" x2="-5.0038" y2="1.8288" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.8288" x2="-5.9944" y2="1.8288" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.8288" x2="-5.9944" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.3716" x2="-5.0038" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="0.5588" x2="-5.0038" y2="1.016" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.016" x2="-5.9944" y2="1.016" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.016" x2="-5.9944" y2="0.5588" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="0.5588" x2="-5.0038" y2="0.5588" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-0.2286" x2="-5.0038" y2="0.2286" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="0.2286" x2="-5.9944" y2="0.2286" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="0.2286" x2="-5.9944" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-0.2286" x2="-5.0038" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.016" x2="-5.0038" y2="-0.5588" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-0.5588" x2="-5.9944" y2="-0.5588" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-0.5588" x2="-5.9944" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.016" x2="-5.0038" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.8288" x2="-5.0038" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.3716" x2="-5.9944" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.3716" x2="-5.9944" y2="-1.8288" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.8288" x2="-5.0038" y2="-1.8288" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.6162" x2="-5.0038" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.159" x2="-5.9944" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.159" x2="-5.9944" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.6162" x2="-5.0038" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-3.429" x2="-5.0038" y2="-2.9718" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.9718" x2="-5.9944" y2="-2.9718" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.9718" x2="-5.9944" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-3.429" x2="-5.0038" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-4.2164" x2="-5.0038" y2="-3.7592" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-3.7592" x2="-5.9944" y2="-3.7592" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-3.7592" x2="-5.9944" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-4.2164" x2="-5.0038" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="-3.7592" y1="-5.0038" x2="-4.2164" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-4.2164" y1="-5.0038" x2="-4.2164" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-4.2164" y1="-5.9944" x2="-3.7592" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-3.7592" y1="-5.9944" x2="-3.7592" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.9718" y1="-5.0038" x2="-3.429" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="-5.0038" x2="-3.429" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="-5.9944" x2="-2.9718" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.9718" y1="-5.9944" x2="-2.9718" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="-5.0038" x2="-2.6162" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="-5.0038" x2="-2.6162" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="-5.9944" x2="-2.159" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="-5.9944" x2="-2.159" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="-5.0038" x2="-1.8288" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.8288" y1="-5.0038" x2="-1.8288" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.8288" y1="-5.9944" x2="-1.3716" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="-5.9944" x2="-1.3716" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-0.5588" y1="-5.0038" x2="-1.016" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-5.0038" x2="-1.016" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-5.9944" x2="-0.5588" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-0.5588" y1="-5.9944" x2="-0.5588" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="-5.0038" x2="-0.2286" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-0.2286" y1="-5.0038" x2="-0.2286" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-0.2286" y1="-5.9944" x2="0.2286" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="-5.9944" x2="0.2286" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-5.0038" x2="0.5588" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="-5.0038" x2="0.5588" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="-5.9944" x2="1.016" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-5.9944" x2="1.016" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.8288" y1="-5.0038" x2="1.3716" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="-5.0038" x2="1.3716" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="-5.9944" x2="1.8288" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.8288" y1="-5.9944" x2="1.8288" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="-5.0038" x2="2.159" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.159" y1="-5.0038" x2="2.159" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.159" y1="-5.9944" x2="2.6162" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="-5.9944" x2="2.6162" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="3.429" y1="-5.0038" x2="2.9718" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.9718" y1="-5.0038" x2="2.9718" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.9718" y1="-5.9944" x2="3.429" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="3.429" y1="-5.9944" x2="3.429" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="-5.0038" x2="3.7592" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="3.7592" y1="-5.0038" x2="3.7592" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="3.7592" y1="-5.9944" x2="4.2164" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="-5.9944" x2="4.2164" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-3.7592" x2="5.0038" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-4.2164" x2="5.9944" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-4.2164" x2="5.9944" y2="-3.7592" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-3.7592" x2="5.0038" y2="-3.7592" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.9718" x2="5.0038" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-3.429" x2="5.9944" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-3.429" x2="5.9944" y2="-2.9718" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.9718" x2="5.0038" y2="-2.9718" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.159" x2="5.0038" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.6162" x2="5.9944" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.6162" x2="5.9944" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.159" x2="5.0038" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.3716" x2="5.0038" y2="-1.8288" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.8288" x2="5.9944" y2="-1.8288" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.8288" x2="5.9944" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.3716" x2="5.0038" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-0.5588" x2="5.0038" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.016" x2="5.9944" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.016" x2="5.9944" y2="-0.5588" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-0.5588" x2="5.0038" y2="-0.5588" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="0.2286" x2="5.0038" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-0.2286" x2="5.9944" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-0.2286" x2="5.9944" y2="0.2286" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="0.2286" x2="5.0038" y2="0.2286" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.016" x2="5.0038" y2="0.5588" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="0.5588" x2="5.9944" y2="0.5588" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="0.5588" x2="5.9944" y2="1.016" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.016" x2="5.0038" y2="1.016" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.8288" x2="5.0038" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.3716" x2="5.9944" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.3716" x2="5.9944" y2="1.8288" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.8288" x2="5.0038" y2="1.8288" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.6162" x2="5.0038" y2="2.159" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.159" x2="5.9944" y2="2.159" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.159" x2="5.9944" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.6162" x2="5.0038" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="3.429" x2="5.0038" y2="2.9718" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.9718" x2="5.9944" y2="2.9718" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.9718" x2="5.9944" y2="3.429" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="3.429" x2="5.0038" y2="3.429" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="4.2164" x2="5.0038" y2="3.7592" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="3.7592" x2="5.9944" y2="3.7592" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="3.7592" x2="5.9944" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="4.2164" x2="5.0038" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.7338" x2="-3.7338" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-5.0038" x2="5.0038" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-5.0038" x2="5.0038" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="5.0038" x2="-5.0038" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="5.0038" x2="-5.0038" y2="-5.0038" width="0.1524" layer="51"/>
<text x="-5.207" y="3.7592" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="TQFP44_10X10MC_MCH-M">
<smd name="1" x="-5.6642" y="4" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="2" x="-5.6642" y="3.2" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="3" x="-5.6642" y="2.4" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="4" x="-5.6642" y="1.6" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="5" x="-5.6642" y="0.8" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="6" x="-5.6642" y="0" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="7" x="-5.6642" y="-0.8" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="8" x="-5.6642" y="-1.6" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="9" x="-5.6642" y="-2.4" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="10" x="-5.6642" y="-3.2" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="11" x="-5.6642" y="-4" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="12" x="-4" y="-5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="13" x="-3.2" y="-5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="14" x="-2.4" y="-5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="15" x="-1.6" y="-5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="16" x="-0.8" y="-5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="17" x="0" y="-5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="18" x="0.8" y="-5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="19" x="1.6" y="-5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="20" x="2.4" y="-5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="21" x="3.2" y="-5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="22" x="4" y="-5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="23" x="5.6642" y="-4" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="24" x="5.6642" y="-3.2" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="25" x="5.6642" y="-2.4" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="26" x="5.6642" y="-1.6" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="27" x="5.6642" y="-0.8" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="28" x="5.6642" y="0" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="29" x="5.6642" y="0.8" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="30" x="5.6642" y="1.6" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="31" x="5.6642" y="2.4" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="32" x="5.6642" y="3.2" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="33" x="5.6642" y="4" dx="0.508" dy="1.778" layer="1" rot="R270"/>
<smd name="34" x="4" y="5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="35" x="3.2" y="5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="36" x="2.4" y="5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="37" x="1.6" y="5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="38" x="0.8" y="5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="39" x="0" y="5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="40" x="-0.8" y="5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="41" x="-1.6" y="5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="42" x="-2.4" y="5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="43" x="-3.2" y="5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<smd name="44" x="-4" y="5.6642" dx="0.508" dy="1.778" layer="1" rot="R180"/>
<wire x1="-5.1308" y1="5.1308" x2="-5.1308" y2="4.5974" width="0.1524" layer="21"/>
<wire x1="-5.1308" y1="-5.1308" x2="-4.5974" y2="-5.1308" width="0.1524" layer="21"/>
<wire x1="5.1308" y1="-5.1308" x2="5.1308" y2="-4.5974" width="0.1524" layer="21"/>
<wire x1="5.1308" y1="5.1308" x2="4.5974" y2="5.1308" width="0.1524" layer="21"/>
<wire x1="-5.1308" y1="-4.5974" x2="-5.1308" y2="-5.1308" width="0.1524" layer="21"/>
<wire x1="4.5974" y1="-5.1308" x2="5.1308" y2="-5.1308" width="0.1524" layer="21"/>
<wire x1="5.1308" y1="4.5974" x2="5.1308" y2="5.1308" width="0.1524" layer="21"/>
<wire x1="-4.5974" y1="5.1308" x2="-5.1308" y2="5.1308" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="-7.0612" y="-3.0095"/>
<vertex x="-7.0612" y="-3.3905"/>
<vertex x="-6.8072" y="-3.3905"/>
<vertex x="-6.8072" y="-3.0095"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="2.2095" y="-6.8072"/>
<vertex x="2.2095" y="-7.0612"/>
<vertex x="2.5905" y="-7.0612"/>
<vertex x="2.5905" y="-6.8072"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="7.0612" y="1.7905"/>
<vertex x="7.0612" y="1.4095"/>
<vertex x="6.8072" y="1.4095"/>
<vertex x="6.8072" y="1.7905"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-0.9905" y="6.8072"/>
<vertex x="-0.9905" y="7.0612"/>
<vertex x="-0.6095" y="7.0612"/>
<vertex x="-0.6095" y="6.8072"/>
</polygon>
<text x="-7.7724" y="4.1402" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="5.6642" y1="3.9878" x2="5.9944" y2="3.9878" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="3.9878" x2="8.5852" y2="3.9878" width="0.1524" layer="48"/>
<wire x1="8.5852" y1="3.9878" x2="8.9662" y2="3.9878" width="0.1524" layer="48"/>
<wire x1="5.6642" y1="3.2004" x2="8.5852" y2="3.2004" width="0.1524" layer="48"/>
<wire x1="8.5852" y1="3.2004" x2="8.9662" y2="3.2004" width="0.1524" layer="48"/>
<wire x1="8.5852" y1="3.9878" x2="8.5852" y2="5.2578" width="0.1524" layer="48"/>
<wire x1="8.5852" y1="3.2004" x2="8.5852" y2="1.9304" width="0.1524" layer="48"/>
<wire x1="8.5852" y1="3.9878" x2="8.4582" y2="4.2418" width="0.1524" layer="48"/>
<wire x1="8.5852" y1="3.9878" x2="8.7122" y2="4.2418" width="0.1524" layer="48"/>
<wire x1="8.4582" y1="4.2418" x2="8.7122" y2="4.2418" width="0.1524" layer="48"/>
<wire x1="8.5852" y1="3.2004" x2="8.4582" y2="2.9464" width="0.1524" layer="48"/>
<wire x1="8.5852" y1="3.2004" x2="8.7122" y2="2.9464" width="0.1524" layer="48"/>
<wire x1="8.4582" y1="2.9464" x2="8.7122" y2="2.9464" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="3.9878" x2="5.2324" y2="8.5852" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="8.5852" x2="5.2324" y2="8.9662" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="3.9878" x2="5.9944" y2="8.5852" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="8.5852" x2="3.9624" y2="8.5852" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="8.5852" x2="7.2644" y2="8.5852" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="8.5852" x2="4.9784" y2="8.7122" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="8.5852" x2="4.9784" y2="8.4582" width="0.1524" layer="48"/>
<wire x1="4.9784" y1="8.7122" x2="4.9784" y2="8.4582" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="8.5852" x2="6.2484" y2="8.7122" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="8.5852" x2="6.2484" y2="8.4582" width="0.1524" layer="48"/>
<wire x1="6.2484" y1="8.7122" x2="6.2484" y2="8.4582" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="3.9878" x2="-5.9944" y2="10.4902" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="10.4902" x2="-5.9944" y2="10.8712" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="8.5852" x2="5.9944" y2="10.4902" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="10.4902" x2="5.9944" y2="10.8712" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="10.4902" x2="5.9944" y2="10.4902" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="10.4902" x2="-5.7404" y2="10.6172" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="10.4902" x2="-5.7404" y2="10.3632" width="0.1524" layer="48"/>
<wire x1="-5.7404" y1="10.6172" x2="-5.7404" y2="10.3632" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="10.4902" x2="5.7404" y2="10.6172" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="10.4902" x2="5.7404" y2="10.3632" width="0.1524" layer="48"/>
<wire x1="5.7404" y1="10.6172" x2="5.7404" y2="10.3632" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-3.9878" x2="-5.0038" y2="-8.5852" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-8.5852" x2="-5.0038" y2="-8.9662" width="0.1524" layer="48"/>
<wire x1="5.0038" y1="-3.9878" x2="5.0038" y2="-8.5852" width="0.1524" layer="48"/>
<wire x1="5.0038" y1="-8.5852" x2="5.0038" y2="-8.9662" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-8.5852" x2="5.0038" y2="-8.5852" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-8.5852" x2="-4.7498" y2="-8.4582" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-8.5852" x2="-4.7498" y2="-8.7122" width="0.1524" layer="48"/>
<wire x1="-4.7498" y1="-8.4582" x2="-4.7498" y2="-8.7122" width="0.1524" layer="48"/>
<wire x1="5.0038" y1="-8.5852" x2="4.7498" y2="-8.4582" width="0.1524" layer="48"/>
<wire x1="5.0038" y1="-8.5852" x2="4.7498" y2="-8.7122" width="0.1524" layer="48"/>
<wire x1="4.7498" y1="-8.4582" x2="4.7498" y2="-8.7122" width="0.1524" layer="48"/>
<wire x1="-3.9878" y1="5.0038" x2="-8.5852" y2="5.0038" width="0.1524" layer="48"/>
<wire x1="-8.5852" y1="5.0038" x2="-8.9662" y2="5.0038" width="0.1524" layer="48"/>
<wire x1="-3.9878" y1="-5.0038" x2="-8.5852" y2="-5.0038" width="0.1524" layer="48"/>
<wire x1="-8.5852" y1="-5.0038" x2="-8.9662" y2="-5.0038" width="0.1524" layer="48"/>
<wire x1="-8.5852" y1="5.0038" x2="-8.5852" y2="-5.0038" width="0.1524" layer="48"/>
<wire x1="-8.5852" y1="5.0038" x2="-8.7122" y2="4.7498" width="0.1524" layer="48"/>
<wire x1="-8.5852" y1="5.0038" x2="-8.4582" y2="4.7498" width="0.1524" layer="48"/>
<wire x1="-8.7122" y1="4.7498" x2="-8.4582" y2="4.7498" width="0.1524" layer="48"/>
<wire x1="-8.5852" y1="-5.0038" x2="-8.7122" y2="-4.7498" width="0.1524" layer="48"/>
<wire x1="-8.5852" y1="-5.0038" x2="-8.4582" y2="-4.7498" width="0.1524" layer="48"/>
<wire x1="-8.7122" y1="-4.7498" x2="-8.4582" y2="-4.7498" width="0.1524" layer="48"/>
<wire x1="3.9878" y1="5.9944" x2="10.4902" y2="5.9944" width="0.1524" layer="48"/>
<wire x1="10.4902" y1="5.9944" x2="10.8712" y2="5.9944" width="0.1524" layer="48"/>
<wire x1="3.9878" y1="-5.9944" x2="10.4902" y2="-5.9944" width="0.1524" layer="48"/>
<wire x1="10.4902" y1="-5.9944" x2="10.8712" y2="-5.9944" width="0.1524" layer="48"/>
<wire x1="10.4902" y1="5.9944" x2="10.4902" y2="-5.9944" width="0.1524" layer="48"/>
<wire x1="10.4902" y1="5.9944" x2="10.3632" y2="5.7404" width="0.1524" layer="48"/>
<wire x1="10.4902" y1="5.9944" x2="10.6172" y2="5.7404" width="0.1524" layer="48"/>
<wire x1="10.3632" y1="5.7404" x2="10.6172" y2="5.7404" width="0.1524" layer="48"/>
<wire x1="10.4902" y1="-5.9944" x2="10.3632" y2="-5.7404" width="0.1524" layer="48"/>
<wire x1="10.4902" y1="-5.9944" x2="10.6172" y2="-5.7404" width="0.1524" layer="48"/>
<wire x1="10.3632" y1="-5.7404" x2="10.6172" y2="-5.7404" width="0.1524" layer="48"/>
<text x="-18.4658" y="-12.3952" size="1.27" layer="48" ratio="6" rot="SR0">Default Horiz Padstyle: RX20Y70D0T</text>
<text x="-17.907" y="-13.9192" size="1.27" layer="48" ratio="6" rot="SR0">Default Vert Padstyle: RX20Y70D0T</text>
<text x="-14.8082" y="-18.4912" size="1.27" layer="48" ratio="6" rot="SR0">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8082" y="-20.0152" size="1.27" layer="48" ratio="6" rot="SR0">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="9.0932" y="3.2766" size="0.635" layer="48" ratio="4" rot="SR0">0.031in/0.8mm</text>
<text x="1.8542" y="9.0932" size="0.635" layer="48" ratio="4" rot="SR0">0.03in/0.762mm</text>
<text x="-4.318" y="10.9982" size="0.635" layer="48" ratio="4" rot="SR0">0.472in/11.989mm</text>
<text x="-4.318" y="-9.7282" size="0.635" layer="48" ratio="4" rot="SR0">0.394in/10.008mm</text>
<text x="-17.7546" y="-0.3048" size="0.635" layer="48" ratio="4" rot="SR0">0.394in/10.008mm</text>
<text x="10.9982" y="-0.3048" size="0.635" layer="48" ratio="4" rot="SR0">0.472in/11.989mm</text>
<wire x1="3.7592" y1="5.0038" x2="4.2164" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="5.0038" x2="4.2164" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="5.9944" x2="3.7592" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="3.7592" y1="5.9944" x2="3.7592" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.9718" y1="5.0038" x2="3.429" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="3.429" y1="5.0038" x2="3.429" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="3.429" y1="5.9944" x2="2.9718" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.9718" y1="5.9944" x2="2.9718" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.159" y1="5.0038" x2="2.6162" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="5.0038" x2="2.6162" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="5.9944" x2="2.159" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.159" y1="5.9944" x2="2.159" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="5.0038" x2="1.8288" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.8288" y1="5.0038" x2="1.8288" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.8288" y1="5.9944" x2="1.3716" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="5.9944" x2="1.3716" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="5.0038" x2="1.016" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.016" y1="5.0038" x2="1.016" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.016" y1="5.9944" x2="0.5588" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="5.9944" x2="0.5588" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.2286" y1="5.0038" x2="0.2286" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="5.0038" x2="0.2286" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="5.9944" x2="-0.2286" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-0.2286" y1="5.9944" x2="-0.2286" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="5.0038" x2="-0.5588" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.5588" y1="5.0038" x2="-0.5588" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-0.5588" y1="5.9944" x2="-1.016" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="5.9944" x2="-1.016" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.8288" y1="5.0038" x2="-1.3716" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="5.0038" x2="-1.3716" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="5.9944" x2="-1.8288" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.8288" y1="5.9944" x2="-1.8288" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="5.0038" x2="-2.159" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="5.0038" x2="-2.159" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="5.9944" x2="-2.6162" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="5.9944" x2="-2.6162" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="5.0038" x2="-2.9718" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.9718" y1="5.0038" x2="-2.9718" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.9718" y1="5.9944" x2="-3.429" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="5.9944" x2="-3.429" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-4.2164" y1="5.0038" x2="-3.7592" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.7592" y1="5.0038" x2="-3.7592" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-3.7592" y1="5.9944" x2="-4.2164" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-4.2164" y1="5.9944" x2="-4.2164" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.7592" x2="-5.0038" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="4.2164" x2="-5.9944" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="4.2164" x2="-5.9944" y2="3.7592" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="3.7592" x2="-5.0038" y2="3.7592" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.9718" x2="-5.0038" y2="3.429" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.429" x2="-5.9944" y2="3.429" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="3.429" x2="-5.9944" y2="2.9718" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.9718" x2="-5.0038" y2="2.9718" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.159" x2="-5.0038" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.6162" x2="-5.9944" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.6162" x2="-5.9944" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.159" x2="-5.0038" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.3716" x2="-5.0038" y2="1.8288" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.8288" x2="-5.9944" y2="1.8288" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.8288" x2="-5.9944" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.3716" x2="-5.0038" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="0.5588" x2="-5.0038" y2="1.016" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.016" x2="-5.9944" y2="1.016" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.016" x2="-5.9944" y2="0.5588" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="0.5588" x2="-5.0038" y2="0.5588" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-0.2286" x2="-5.0038" y2="0.2286" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="0.2286" x2="-5.9944" y2="0.2286" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="0.2286" x2="-5.9944" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-0.2286" x2="-5.0038" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.016" x2="-5.0038" y2="-0.5588" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-0.5588" x2="-5.9944" y2="-0.5588" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-0.5588" x2="-5.9944" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.016" x2="-5.0038" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.8288" x2="-5.0038" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.3716" x2="-5.9944" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.3716" x2="-5.9944" y2="-1.8288" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.8288" x2="-5.0038" y2="-1.8288" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.6162" x2="-5.0038" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.159" x2="-5.9944" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.159" x2="-5.9944" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.6162" x2="-5.0038" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-3.429" x2="-5.0038" y2="-2.9718" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.9718" x2="-5.9944" y2="-2.9718" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.9718" x2="-5.9944" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-3.429" x2="-5.0038" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-4.2164" x2="-5.0038" y2="-3.7592" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-3.7592" x2="-5.9944" y2="-3.7592" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-3.7592" x2="-5.9944" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-4.2164" x2="-5.0038" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="-3.7592" y1="-5.0038" x2="-4.2164" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-4.2164" y1="-5.0038" x2="-4.2164" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-4.2164" y1="-5.9944" x2="-3.7592" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-3.7592" y1="-5.9944" x2="-3.7592" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.9718" y1="-5.0038" x2="-3.429" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="-5.0038" x2="-3.429" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="-5.9944" x2="-2.9718" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.9718" y1="-5.9944" x2="-2.9718" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="-5.0038" x2="-2.6162" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="-5.0038" x2="-2.6162" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="-5.9944" x2="-2.159" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="-5.9944" x2="-2.159" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="-5.0038" x2="-1.8288" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.8288" y1="-5.0038" x2="-1.8288" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.8288" y1="-5.9944" x2="-1.3716" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="-5.9944" x2="-1.3716" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-0.5588" y1="-5.0038" x2="-1.016" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-5.0038" x2="-1.016" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-5.9944" x2="-0.5588" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-0.5588" y1="-5.9944" x2="-0.5588" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="-5.0038" x2="-0.2286" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-0.2286" y1="-5.0038" x2="-0.2286" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-0.2286" y1="-5.9944" x2="0.2286" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="-5.9944" x2="0.2286" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-5.0038" x2="0.5588" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="-5.0038" x2="0.5588" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="-5.9944" x2="1.016" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-5.9944" x2="1.016" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.8288" y1="-5.0038" x2="1.3716" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="-5.0038" x2="1.3716" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="-5.9944" x2="1.8288" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.8288" y1="-5.9944" x2="1.8288" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="-5.0038" x2="2.159" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.159" y1="-5.0038" x2="2.159" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.159" y1="-5.9944" x2="2.6162" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="-5.9944" x2="2.6162" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="3.429" y1="-5.0038" x2="2.9718" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.9718" y1="-5.0038" x2="2.9718" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.9718" y1="-5.9944" x2="3.429" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="3.429" y1="-5.9944" x2="3.429" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="-5.0038" x2="3.7592" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="3.7592" y1="-5.0038" x2="3.7592" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="3.7592" y1="-5.9944" x2="4.2164" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="-5.9944" x2="4.2164" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-3.7592" x2="5.0038" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-4.2164" x2="5.9944" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-4.2164" x2="5.9944" y2="-3.7592" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-3.7592" x2="5.0038" y2="-3.7592" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.9718" x2="5.0038" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-3.429" x2="5.9944" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-3.429" x2="5.9944" y2="-2.9718" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.9718" x2="5.0038" y2="-2.9718" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.159" x2="5.0038" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.6162" x2="5.9944" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.6162" x2="5.9944" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.159" x2="5.0038" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.3716" x2="5.0038" y2="-1.8288" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.8288" x2="5.9944" y2="-1.8288" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.8288" x2="5.9944" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.3716" x2="5.0038" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-0.5588" x2="5.0038" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.016" x2="5.9944" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.016" x2="5.9944" y2="-0.5588" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-0.5588" x2="5.0038" y2="-0.5588" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="0.2286" x2="5.0038" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-0.2286" x2="5.9944" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-0.2286" x2="5.9944" y2="0.2286" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="0.2286" x2="5.0038" y2="0.2286" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.016" x2="5.0038" y2="0.5588" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="0.5588" x2="5.9944" y2="0.5588" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="0.5588" x2="5.9944" y2="1.016" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.016" x2="5.0038" y2="1.016" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.8288" x2="5.0038" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.3716" x2="5.9944" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.3716" x2="5.9944" y2="1.8288" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.8288" x2="5.0038" y2="1.8288" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.6162" x2="5.0038" y2="2.159" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.159" x2="5.9944" y2="2.159" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.159" x2="5.9944" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.6162" x2="5.0038" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="3.429" x2="5.0038" y2="2.9718" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.9718" x2="5.9944" y2="2.9718" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.9718" x2="5.9944" y2="3.429" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="3.429" x2="5.0038" y2="3.429" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="4.2164" x2="5.0038" y2="3.7592" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="3.7592" x2="5.9944" y2="3.7592" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="3.7592" x2="5.9944" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="4.2164" x2="5.0038" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.7338" x2="-3.7338" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="5.0038" x2="-5.0038" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-5.0038" x2="5.0038" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-5.0038" x2="5.0038" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="5.0038" x2="-5.0038" y2="5.0038" width="0.1524" layer="51"/>
<text x="-5.207" y="3.7592" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="TQFP44_10X10MC_MCH-L">
<smd name="1" x="-5.5626" y="4" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="2" x="-5.5626" y="3.2" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="3" x="-5.5626" y="2.4" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="4" x="-5.5626" y="1.6" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="5" x="-5.5626" y="0.8" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="6" x="-5.5626" y="0" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="7" x="-5.5626" y="-0.8" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="8" x="-5.5626" y="-1.6" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="9" x="-5.5626" y="-2.4" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="10" x="-5.5626" y="-3.2" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="11" x="-5.5626" y="-4" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="12" x="-4" y="-5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="13" x="-3.2" y="-5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="14" x="-2.4" y="-5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="15" x="-1.6" y="-5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="16" x="-0.8" y="-5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="17" x="0" y="-5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="18" x="0.8" y="-5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="19" x="1.6" y="-5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="20" x="2.4" y="-5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="21" x="3.2" y="-5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="22" x="4" y="-5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="23" x="5.5626" y="-4" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="24" x="5.5626" y="-3.2" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="25" x="5.5626" y="-2.4" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="26" x="5.5626" y="-1.6" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="27" x="5.5626" y="-0.8" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="28" x="5.5626" y="0" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="29" x="5.5626" y="0.8" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="30" x="5.5626" y="1.6" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="31" x="5.5626" y="2.4" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="32" x="5.5626" y="3.2" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="33" x="5.5626" y="4" dx="0.4572" dy="1.1684" layer="1" rot="R270"/>
<smd name="34" x="4" y="5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="35" x="3.2" y="5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="36" x="2.4" y="5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="37" x="1.6" y="5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="38" x="0.8" y="5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="39" x="0" y="5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="40" x="-0.8" y="5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="41" x="-1.6" y="5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="42" x="-2.4" y="5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="43" x="-3.2" y="5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<smd name="44" x="-4" y="5.5626" dx="0.4572" dy="1.1684" layer="1" rot="R180"/>
<wire x1="-5.1308" y1="5.1308" x2="-5.1308" y2="4.572" width="0.1524" layer="21"/>
<wire x1="-5.1308" y1="-5.1308" x2="-4.572" y2="-5.1308" width="0.1524" layer="21"/>
<wire x1="5.1308" y1="-5.1308" x2="5.1308" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="5.1308" y1="5.1308" x2="4.572" y2="5.1308" width="0.1524" layer="21"/>
<wire x1="-5.1308" y1="-4.572" x2="-5.1308" y2="-5.1308" width="0.1524" layer="21"/>
<wire x1="4.572" y1="-5.1308" x2="5.1308" y2="-5.1308" width="0.1524" layer="21"/>
<wire x1="5.1308" y1="4.572" x2="5.1308" y2="5.1308" width="0.1524" layer="21"/>
<wire x1="-4.572" y1="5.1308" x2="-5.1308" y2="5.1308" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="-6.6548" y="-3.0095"/>
<vertex x="-6.6548" y="-3.3905"/>
<vertex x="-6.4008" y="-3.3905"/>
<vertex x="-6.4008" y="-3.0095"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="2.2095" y="-6.4008"/>
<vertex x="2.2095" y="-6.6548"/>
<vertex x="2.5905" y="-6.6548"/>
<vertex x="2.5905" y="-6.4008"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="6.6548" y="1.7905"/>
<vertex x="6.6548" y="1.4095"/>
<vertex x="6.4008" y="1.4095"/>
<vertex x="6.4008" y="1.7905"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-0.9905" y="6.4008"/>
<vertex x="-0.9905" y="6.6548"/>
<vertex x="-0.6095" y="6.6548"/>
<vertex x="-0.6095" y="6.4008"/>
</polygon>
<text x="-7.366" y="4.1402" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="5.5626" y1="3.9878" x2="5.9944" y2="3.9878" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="3.9878" x2="8.4836" y2="3.9878" width="0.1524" layer="48"/>
<wire x1="8.4836" y1="3.9878" x2="8.8646" y2="3.9878" width="0.1524" layer="48"/>
<wire x1="5.5626" y1="3.2004" x2="8.4836" y2="3.2004" width="0.1524" layer="48"/>
<wire x1="8.4836" y1="3.2004" x2="8.8646" y2="3.2004" width="0.1524" layer="48"/>
<wire x1="8.4836" y1="3.9878" x2="8.4836" y2="5.2578" width="0.1524" layer="48"/>
<wire x1="8.4836" y1="3.2004" x2="8.4836" y2="1.9304" width="0.1524" layer="48"/>
<wire x1="8.4836" y1="3.9878" x2="8.3566" y2="4.2418" width="0.1524" layer="48"/>
<wire x1="8.4836" y1="3.9878" x2="8.6106" y2="4.2418" width="0.1524" layer="48"/>
<wire x1="8.3566" y1="4.2418" x2="8.6106" y2="4.2418" width="0.1524" layer="48"/>
<wire x1="8.4836" y1="3.2004" x2="8.3566" y2="2.9464" width="0.1524" layer="48"/>
<wire x1="8.4836" y1="3.2004" x2="8.6106" y2="2.9464" width="0.1524" layer="48"/>
<wire x1="8.3566" y1="2.9464" x2="8.6106" y2="2.9464" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="3.9878" x2="5.2324" y2="8.4836" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="8.4836" x2="5.2324" y2="8.8646" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="3.9878" x2="5.9944" y2="8.4836" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="8.4836" x2="3.9624" y2="8.4836" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="8.4836" x2="7.2644" y2="8.4836" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="8.4836" x2="4.9784" y2="8.6106" width="0.1524" layer="48"/>
<wire x1="5.2324" y1="8.4836" x2="4.9784" y2="8.3566" width="0.1524" layer="48"/>
<wire x1="4.9784" y1="8.6106" x2="4.9784" y2="8.3566" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="8.4836" x2="6.2484" y2="8.6106" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="8.4836" x2="6.2484" y2="8.3566" width="0.1524" layer="48"/>
<wire x1="6.2484" y1="8.6106" x2="6.2484" y2="8.3566" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="3.9878" x2="-5.9944" y2="10.3886" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="10.3886" x2="-5.9944" y2="10.7696" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="8.4836" x2="5.9944" y2="10.3886" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="10.3886" x2="5.9944" y2="10.7696" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="10.3886" x2="5.9944" y2="10.3886" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="10.3886" x2="-5.7404" y2="10.5156" width="0.1524" layer="48"/>
<wire x1="-5.9944" y1="10.3886" x2="-5.7404" y2="10.2616" width="0.1524" layer="48"/>
<wire x1="-5.7404" y1="10.5156" x2="-5.7404" y2="10.2616" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="10.3886" x2="5.7404" y2="10.5156" width="0.1524" layer="48"/>
<wire x1="5.9944" y1="10.3886" x2="5.7404" y2="10.2616" width="0.1524" layer="48"/>
<wire x1="5.7404" y1="10.5156" x2="5.7404" y2="10.2616" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-3.9878" x2="-5.0038" y2="-8.4836" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-8.4836" x2="-5.0038" y2="-8.8646" width="0.1524" layer="48"/>
<wire x1="5.0038" y1="-3.9878" x2="5.0038" y2="-8.4836" width="0.1524" layer="48"/>
<wire x1="5.0038" y1="-8.4836" x2="5.0038" y2="-8.8646" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-8.4836" x2="5.0038" y2="-8.4836" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-8.4836" x2="-4.7498" y2="-8.3566" width="0.1524" layer="48"/>
<wire x1="-5.0038" y1="-8.4836" x2="-4.7498" y2="-8.6106" width="0.1524" layer="48"/>
<wire x1="-4.7498" y1="-8.3566" x2="-4.7498" y2="-8.6106" width="0.1524" layer="48"/>
<wire x1="5.0038" y1="-8.4836" x2="4.7498" y2="-8.3566" width="0.1524" layer="48"/>
<wire x1="5.0038" y1="-8.4836" x2="4.7498" y2="-8.6106" width="0.1524" layer="48"/>
<wire x1="4.7498" y1="-8.3566" x2="4.7498" y2="-8.6106" width="0.1524" layer="48"/>
<wire x1="-3.9878" y1="5.0038" x2="-8.4836" y2="5.0038" width="0.1524" layer="48"/>
<wire x1="-8.4836" y1="5.0038" x2="-8.8646" y2="5.0038" width="0.1524" layer="48"/>
<wire x1="-3.9878" y1="-5.0038" x2="-8.4836" y2="-5.0038" width="0.1524" layer="48"/>
<wire x1="-8.4836" y1="-5.0038" x2="-8.8646" y2="-5.0038" width="0.1524" layer="48"/>
<wire x1="-8.4836" y1="5.0038" x2="-8.4836" y2="-5.0038" width="0.1524" layer="48"/>
<wire x1="-8.4836" y1="5.0038" x2="-8.6106" y2="4.7498" width="0.1524" layer="48"/>
<wire x1="-8.4836" y1="5.0038" x2="-8.3566" y2="4.7498" width="0.1524" layer="48"/>
<wire x1="-8.6106" y1="4.7498" x2="-8.3566" y2="4.7498" width="0.1524" layer="48"/>
<wire x1="-8.4836" y1="-5.0038" x2="-8.6106" y2="-4.7498" width="0.1524" layer="48"/>
<wire x1="-8.4836" y1="-5.0038" x2="-8.3566" y2="-4.7498" width="0.1524" layer="48"/>
<wire x1="-8.6106" y1="-4.7498" x2="-8.3566" y2="-4.7498" width="0.1524" layer="48"/>
<wire x1="3.9878" y1="5.9944" x2="10.3886" y2="5.9944" width="0.1524" layer="48"/>
<wire x1="10.3886" y1="5.9944" x2="10.7696" y2="5.9944" width="0.1524" layer="48"/>
<wire x1="3.9878" y1="-5.9944" x2="10.3886" y2="-5.9944" width="0.1524" layer="48"/>
<wire x1="10.3886" y1="-5.9944" x2="10.7696" y2="-5.9944" width="0.1524" layer="48"/>
<wire x1="10.3886" y1="5.9944" x2="10.3886" y2="-5.9944" width="0.1524" layer="48"/>
<wire x1="10.3886" y1="5.9944" x2="10.2616" y2="5.7404" width="0.1524" layer="48"/>
<wire x1="10.3886" y1="5.9944" x2="10.5156" y2="5.7404" width="0.1524" layer="48"/>
<wire x1="10.2616" y1="5.7404" x2="10.5156" y2="5.7404" width="0.1524" layer="48"/>
<wire x1="10.3886" y1="-5.9944" x2="10.2616" y2="-5.7404" width="0.1524" layer="48"/>
<wire x1="10.3886" y1="-5.9944" x2="10.5156" y2="-5.7404" width="0.1524" layer="48"/>
<wire x1="10.2616" y1="-5.7404" x2="10.5156" y2="-5.7404" width="0.1524" layer="48"/>
<text x="-18.4658" y="-12.2936" size="1.27" layer="48" ratio="6" rot="SR0">Default Horiz Padstyle: RX18Y46D0T</text>
<text x="-17.907" y="-13.8176" size="1.27" layer="48" ratio="6" rot="SR0">Default Vert Padstyle: RX18Y46D0T</text>
<text x="-14.8082" y="-18.3896" size="1.27" layer="48" ratio="6" rot="SR0">Alt 1 Padstyle: OX60Y90D30P</text>
<text x="-14.8082" y="-19.9136" size="1.27" layer="48" ratio="6" rot="SR0">Alt 2 Padstyle: OX90Y60D30P</text>
<text x="8.9916" y="3.2766" size="0.635" layer="48" ratio="4" rot="SR0">0.031in/0.8mm</text>
<text x="1.8542" y="8.9916" size="0.635" layer="48" ratio="4" rot="SR0">0.03in/0.762mm</text>
<text x="-4.318" y="10.8966" size="0.635" layer="48" ratio="4" rot="SR0">0.472in/11.989mm</text>
<text x="-4.318" y="-9.6266" size="0.635" layer="48" ratio="4" rot="SR0">0.394in/10.008mm</text>
<text x="-17.653" y="-0.3048" size="0.635" layer="48" ratio="4" rot="SR0">0.394in/10.008mm</text>
<text x="10.8966" y="-0.3048" size="0.635" layer="48" ratio="4" rot="SR0">0.472in/11.989mm</text>
<wire x1="3.7592" y1="5.0038" x2="4.2164" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="5.0038" x2="4.2164" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="5.9944" x2="3.7592" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="3.7592" y1="5.9944" x2="3.7592" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.9718" y1="5.0038" x2="3.429" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="3.429" y1="5.0038" x2="3.429" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="3.429" y1="5.9944" x2="2.9718" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.9718" y1="5.9944" x2="2.9718" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.159" y1="5.0038" x2="2.6162" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="5.0038" x2="2.6162" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="5.9944" x2="2.159" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="2.159" y1="5.9944" x2="2.159" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="5.0038" x2="1.8288" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.8288" y1="5.0038" x2="1.8288" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.8288" y1="5.9944" x2="1.3716" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="5.9944" x2="1.3716" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="5.0038" x2="1.016" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="1.016" y1="5.0038" x2="1.016" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="1.016" y1="5.9944" x2="0.5588" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="5.9944" x2="0.5588" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.2286" y1="5.0038" x2="0.2286" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="5.0038" x2="0.2286" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="5.9944" x2="-0.2286" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-0.2286" y1="5.9944" x2="-0.2286" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="5.0038" x2="-0.5588" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-0.5588" y1="5.0038" x2="-0.5588" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-0.5588" y1="5.9944" x2="-1.016" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="5.9944" x2="-1.016" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.8288" y1="5.0038" x2="-1.3716" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="5.0038" x2="-1.3716" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="5.9944" x2="-1.8288" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-1.8288" y1="5.9944" x2="-1.8288" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="5.0038" x2="-2.159" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="5.0038" x2="-2.159" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="5.9944" x2="-2.6162" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="5.9944" x2="-2.6162" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="5.0038" x2="-2.9718" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-2.9718" y1="5.0038" x2="-2.9718" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-2.9718" y1="5.9944" x2="-3.429" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="5.9944" x2="-3.429" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-4.2164" y1="5.0038" x2="-3.7592" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-3.7592" y1="5.0038" x2="-3.7592" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-3.7592" y1="5.9944" x2="-4.2164" y2="5.9944" width="0.1524" layer="51"/>
<wire x1="-4.2164" y1="5.9944" x2="-4.2164" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.7592" x2="-5.0038" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="4.2164" x2="-5.9944" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="4.2164" x2="-5.9944" y2="3.7592" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="3.7592" x2="-5.0038" y2="3.7592" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.9718" x2="-5.0038" y2="3.429" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.429" x2="-5.9944" y2="3.429" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="3.429" x2="-5.9944" y2="2.9718" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.9718" x2="-5.0038" y2="2.9718" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.159" x2="-5.0038" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="2.6162" x2="-5.9944" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.6162" x2="-5.9944" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="2.159" x2="-5.0038" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.3716" x2="-5.0038" y2="1.8288" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.8288" x2="-5.9944" y2="1.8288" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.8288" x2="-5.9944" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.3716" x2="-5.0038" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="0.5588" x2="-5.0038" y2="1.016" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="1.016" x2="-5.9944" y2="1.016" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.016" x2="-5.9944" y2="0.5588" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="0.5588" x2="-5.0038" y2="0.5588" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-0.2286" x2="-5.0038" y2="0.2286" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="0.2286" x2="-5.9944" y2="0.2286" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="0.2286" x2="-5.9944" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-0.2286" x2="-5.0038" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.016" x2="-5.0038" y2="-0.5588" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-0.5588" x2="-5.9944" y2="-0.5588" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-0.5588" x2="-5.9944" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.016" x2="-5.0038" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.8288" x2="-5.0038" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-1.3716" x2="-5.9944" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.3716" x2="-5.9944" y2="-1.8288" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-1.8288" x2="-5.0038" y2="-1.8288" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.6162" x2="-5.0038" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.159" x2="-5.9944" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.159" x2="-5.9944" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.6162" x2="-5.0038" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-3.429" x2="-5.0038" y2="-2.9718" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-2.9718" x2="-5.9944" y2="-2.9718" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-2.9718" x2="-5.9944" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-3.429" x2="-5.0038" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-4.2164" x2="-5.0038" y2="-3.7592" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-3.7592" x2="-5.9944" y2="-3.7592" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-3.7592" x2="-5.9944" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="-4.2164" x2="-5.0038" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="-3.7592" y1="-5.0038" x2="-4.2164" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-4.2164" y1="-5.0038" x2="-4.2164" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-4.2164" y1="-5.9944" x2="-3.7592" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-3.7592" y1="-5.9944" x2="-3.7592" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.9718" y1="-5.0038" x2="-3.429" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="-5.0038" x2="-3.429" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="-5.9944" x2="-2.9718" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.9718" y1="-5.9944" x2="-2.9718" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="-5.0038" x2="-2.6162" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="-5.0038" x2="-2.6162" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.6162" y1="-5.9944" x2="-2.159" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="-5.9944" x2="-2.159" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="-5.0038" x2="-1.8288" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.8288" y1="-5.0038" x2="-1.8288" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.8288" y1="-5.9944" x2="-1.3716" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="-5.9944" x2="-1.3716" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-0.5588" y1="-5.0038" x2="-1.016" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-5.0038" x2="-1.016" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-5.9944" x2="-0.5588" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-0.5588" y1="-5.9944" x2="-0.5588" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="-5.0038" x2="-0.2286" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-0.2286" y1="-5.0038" x2="-0.2286" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="-0.2286" y1="-5.9944" x2="0.2286" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="0.2286" y1="-5.9944" x2="0.2286" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-5.0038" x2="0.5588" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="-5.0038" x2="0.5588" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="0.5588" y1="-5.9944" x2="1.016" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-5.9944" x2="1.016" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.8288" y1="-5.0038" x2="1.3716" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="-5.0038" x2="1.3716" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="-5.9944" x2="1.8288" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="1.8288" y1="-5.9944" x2="1.8288" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="-5.0038" x2="2.159" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.159" y1="-5.0038" x2="2.159" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.159" y1="-5.9944" x2="2.6162" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.6162" y1="-5.9944" x2="2.6162" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="3.429" y1="-5.0038" x2="2.9718" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="2.9718" y1="-5.0038" x2="2.9718" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="2.9718" y1="-5.9944" x2="3.429" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="3.429" y1="-5.9944" x2="3.429" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="-5.0038" x2="3.7592" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="3.7592" y1="-5.0038" x2="3.7592" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="3.7592" y1="-5.9944" x2="4.2164" y2="-5.9944" width="0.1524" layer="51"/>
<wire x1="4.2164" y1="-5.9944" x2="4.2164" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-3.7592" x2="5.0038" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-4.2164" x2="5.9944" y2="-4.2164" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-4.2164" x2="5.9944" y2="-3.7592" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-3.7592" x2="5.0038" y2="-3.7592" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.9718" x2="5.0038" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-3.429" x2="5.9944" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-3.429" x2="5.9944" y2="-2.9718" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.9718" x2="5.0038" y2="-2.9718" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.159" x2="5.0038" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-2.6162" x2="5.9944" y2="-2.6162" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.6162" x2="5.9944" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-2.159" x2="5.0038" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.3716" x2="5.0038" y2="-1.8288" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.8288" x2="5.9944" y2="-1.8288" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.8288" x2="5.9944" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.3716" x2="5.0038" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-0.5588" x2="5.0038" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-1.016" x2="5.9944" y2="-1.016" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-1.016" x2="5.9944" y2="-0.5588" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-0.5588" x2="5.0038" y2="-0.5588" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="0.2286" x2="5.0038" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-0.2286" x2="5.9944" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="-0.2286" x2="5.9944" y2="0.2286" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="0.2286" x2="5.0038" y2="0.2286" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.016" x2="5.0038" y2="0.5588" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="0.5588" x2="5.9944" y2="0.5588" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="0.5588" x2="5.9944" y2="1.016" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.016" x2="5.0038" y2="1.016" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.8288" x2="5.0038" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="1.3716" x2="5.9944" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.3716" x2="5.9944" y2="1.8288" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="1.8288" x2="5.0038" y2="1.8288" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.6162" x2="5.0038" y2="2.159" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.159" x2="5.9944" y2="2.159" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.159" x2="5.9944" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.6162" x2="5.0038" y2="2.6162" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="3.429" x2="5.0038" y2="2.9718" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="2.9718" x2="5.9944" y2="2.9718" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="2.9718" x2="5.9944" y2="3.429" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="3.429" x2="5.0038" y2="3.429" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="4.2164" x2="5.0038" y2="3.7592" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="3.7592" x2="5.9944" y2="3.7592" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="3.7592" x2="5.9944" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="5.9944" y1="4.2164" x2="5.0038" y2="4.2164" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="3.7338" x2="-3.7338" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="5.0038" x2="-5.0038" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="-5.0038" y1="-5.0038" x2="5.0038" y2="-5.0038" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="-5.0038" x2="5.0038" y2="5.0038" width="0.1524" layer="51"/>
<wire x1="5.0038" y1="5.0038" x2="-5.0038" y2="5.0038" width="0.1524" layer="51"/>
<text x="-5.207" y="3.7592" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Name</text>
<text x="-1.7272" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
</packages>
<symbols>
<symbol name="DSPIC33FJ64MC804-X_PT">
<pin name="SDA1/RP9/CN21/PMD3/RB9" x="0" y="0"/>
<pin name="PWM2H1/RP22/CN18/PMA1/RC6" x="0" y="-2.54"/>
<pin name="PWM2L1/RP23/CN17/PMA0/RC7" x="0" y="-5.08"/>
<pin name="RP24/CN20/PMA5/RC8" x="0" y="-7.62"/>
<pin name="RP25/CN19/PMA6/RC9" x="0" y="-10.16"/>
<pin name="VSS_2" x="0" y="-12.7" direction="pwr"/>
<pin name="VCAP/VDDCORE" x="0" y="-15.24" direction="pwr"/>
<pin name="PGED2/EMCD2/PWM1H3/RP10/CN16/PMD2/RB10" x="0" y="-17.78"/>
<pin name="PGEC2/PWM1L3/RP11/CN15/PMD1/RB11" x="0" y="-20.32"/>
<pin name="PWM1H2/DAC1RP/RP12/CN14/PMD0/RB12" x="0" y="-22.86"/>
<pin name="PWM1L2/DAC1RN/RP13/CN13/PMRD/RB13" x="0" y="-25.4"/>
<pin name="TMS/PMA10/RA10" x="0" y="-27.94"/>
<pin name="TCK/PMA7/RA7" x="0" y="-30.48"/>
<pin name="PWM1H1/DAC1LP/RTCC/RP14/CN12/PMWR/RB14" x="0" y="-33.02"/>
<pin name="PWM1L1/DAC1LN/RP15/CN11/PMCS1/RB15" x="0" y="-35.56"/>
<pin name="AVSS" x="0" y="-38.1" direction="pwr"/>
<pin name="AVDD" x="0" y="-40.64" direction="pwr"/>
<pin name="!MCLR" x="0" y="-43.18" direction="in"/>
<pin name="AN0/VREF+/CN2/RA0" x="0" y="-45.72"/>
<pin name="AN1/VREF-/CN3/RA1" x="0" y="-48.26"/>
<pin name="PGED1/AN2/C2IN-/RP0/CN4/RB0" x="0" y="-50.8"/>
<pin name="PGEC1/AN3/C2IN+/RP1/CN5/RB1" x="0" y="-53.34"/>
<pin name="AN4/C1IN-/RP2/CN6/RB2" x="187.96" y="-53.34" rot="R180"/>
<pin name="AN5/C1IN+/RP3/CN7/RB3" x="187.96" y="-50.8" rot="R180"/>
<pin name="AN6/DAC1RM/RP16/CN8/RC0" x="187.96" y="-48.26" rot="R180"/>
<pin name="AN7/DAC1LM/RP17/CN9/RC1" x="187.96" y="-45.72" rot="R180"/>
<pin name="AN8/CVREF/RP18/PMA2/CN10/RC2" x="187.96" y="-43.18" rot="R180"/>
<pin name="VDD_2" x="187.96" y="-40.64" direction="pwr" rot="R180"/>
<pin name="VSS_3" x="187.96" y="-38.1" direction="pwr" rot="R180"/>
<pin name="OSC1/CLKI/CN30/RA2" x="187.96" y="-35.56" rot="R180"/>
<pin name="OSC2/CLKO/CN29/RA3" x="187.96" y="-33.02" rot="R180"/>
<pin name="TDO/PMA8/RA8" x="187.96" y="-30.48" rot="R180"/>
<pin name="SOSCI/RP4/CN1/RB4" x="187.96" y="-27.94" rot="R180"/>
<pin name="SOSCO/T1CK/CN0/RA4" x="187.96" y="-25.4" rot="R180"/>
<pin name="TDI/PMA9/RA9" x="187.96" y="-22.86" rot="R180"/>
<pin name="RP19/CN28/PMBE/RC3" x="187.96" y="-20.32" rot="R180"/>
<pin name="RP20/CN25/PMA4/RC4" x="187.96" y="-17.78" rot="R180"/>
<pin name="RP21/CN26/PMA3/RC5" x="187.96" y="-15.24" rot="R180"/>
<pin name="VSS" x="187.96" y="-12.7" direction="pwr" rot="R180"/>
<pin name="VDD" x="187.96" y="-10.16" direction="pwr" rot="R180"/>
<pin name="PGED3/ASDA1/RP5/CN27/PMD7/RB5" x="187.96" y="-7.62" rot="R180"/>
<pin name="PGEC3/ASCL1/RP6/CN24/PMD6/RB6" x="187.96" y="-5.08" rot="R180"/>
<pin name="INT0/RP7/CN23/PMD5/RB7" x="187.96" y="-2.54" rot="R180"/>
<pin name="SCL1/RP8/CN22/PMD4/RB8" x="187.96" y="0" rot="R180"/>
<wire x1="7.112" y1="0" x2="6.0452" y2="0.508" width="0.1524" layer="94"/>
<wire x1="7.112" y1="0" x2="6.0452" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="0.508" x2="4.4958" y2="0" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-0.508" x2="4.4958" y2="0" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-2.54" x2="6.0452" y2="-2.032" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-2.54" x2="6.0452" y2="-3.048" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-2.032" x2="4.4958" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-3.048" x2="4.4958" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-5.08" x2="6.0452" y2="-4.572" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-5.08" x2="6.0452" y2="-5.588" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-4.572" x2="4.4958" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-5.588" x2="4.4958" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-7.62" x2="6.0452" y2="-7.112" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-7.62" x2="6.0452" y2="-8.128" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-7.112" x2="4.4958" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-8.128" x2="4.4958" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-10.16" x2="6.0452" y2="-9.652" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-10.16" x2="6.0452" y2="-10.668" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-9.652" x2="4.4958" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-10.668" x2="4.4958" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-17.78" x2="6.0452" y2="-17.272" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-17.78" x2="6.0452" y2="-18.288" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-17.272" x2="4.4958" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-18.288" x2="4.4958" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-20.32" x2="6.0452" y2="-19.812" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-20.32" x2="6.0452" y2="-20.828" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-19.812" x2="4.4958" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-20.828" x2="4.4958" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-22.86" x2="6.0452" y2="-22.352" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-22.86" x2="6.0452" y2="-23.368" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-22.352" x2="4.4958" y2="-22.86" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-23.368" x2="4.4958" y2="-22.86" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-25.4" x2="6.0452" y2="-24.892" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-25.4" x2="6.0452" y2="-25.908" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-24.892" x2="4.4958" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-25.908" x2="4.4958" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-27.94" x2="6.0452" y2="-27.432" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-27.94" x2="6.0452" y2="-28.448" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-27.432" x2="4.4958" y2="-27.94" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-28.448" x2="4.4958" y2="-27.94" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-30.48" x2="6.0452" y2="-29.972" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-30.48" x2="6.0452" y2="-30.988" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-29.972" x2="4.4958" y2="-30.48" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-30.988" x2="4.4958" y2="-30.48" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-33.02" x2="6.0452" y2="-32.512" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-33.02" x2="6.0452" y2="-33.528" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-32.512" x2="4.4958" y2="-33.02" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-33.528" x2="4.4958" y2="-33.02" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-35.56" x2="6.0452" y2="-35.052" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-35.56" x2="6.0452" y2="-36.068" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-35.052" x2="4.4958" y2="-35.56" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-36.068" x2="4.4958" y2="-35.56" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-43.18" x2="6.0452" y2="-42.672" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-43.18" x2="6.0452" y2="-43.688" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-45.72" x2="6.0452" y2="-45.212" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-45.72" x2="6.0452" y2="-46.228" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-45.212" x2="4.4958" y2="-45.72" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-46.228" x2="4.4958" y2="-45.72" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-48.26" x2="6.0452" y2="-47.752" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-48.26" x2="6.0452" y2="-48.768" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-47.752" x2="4.4958" y2="-48.26" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-48.768" x2="4.4958" y2="-48.26" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-50.8" x2="6.0452" y2="-50.292" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-50.8" x2="6.0452" y2="-51.308" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-50.292" x2="4.4958" y2="-50.8" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-51.308" x2="4.4958" y2="-50.8" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-53.34" x2="6.0452" y2="-52.832" width="0.1524" layer="94"/>
<wire x1="7.112" y1="-53.34" x2="6.0452" y2="-53.848" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-52.832" x2="4.4958" y2="-53.34" width="0.1524" layer="94"/>
<wire x1="5.5372" y1="-53.848" x2="4.4958" y2="-53.34" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-53.34" x2="181.9148" y2="-52.832" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-53.34" x2="181.9148" y2="-53.848" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-52.832" x2="183.4642" y2="-53.34" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-53.848" x2="183.4642" y2="-53.34" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-50.8" x2="181.9148" y2="-50.292" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-50.8" x2="181.9148" y2="-51.308" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-50.292" x2="183.4642" y2="-50.8" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-51.308" x2="183.4642" y2="-50.8" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-48.26" x2="181.9148" y2="-47.752" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-48.26" x2="181.9148" y2="-48.768" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-47.752" x2="183.4642" y2="-48.26" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-48.768" x2="183.4642" y2="-48.26" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-45.72" x2="181.9148" y2="-45.212" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-45.72" x2="181.9148" y2="-46.228" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-45.212" x2="183.4642" y2="-45.72" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-46.228" x2="183.4642" y2="-45.72" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-43.18" x2="181.9148" y2="-42.672" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-43.18" x2="181.9148" y2="-43.688" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-42.672" x2="183.4642" y2="-43.18" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-43.688" x2="183.4642" y2="-43.18" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-35.56" x2="181.9148" y2="-35.052" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-35.56" x2="181.9148" y2="-36.068" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-35.052" x2="183.4642" y2="-35.56" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-36.068" x2="183.4642" y2="-35.56" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-33.02" x2="181.9148" y2="-32.512" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-33.02" x2="181.9148" y2="-33.528" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-32.512" x2="183.4642" y2="-33.02" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-33.528" x2="183.4642" y2="-33.02" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-30.48" x2="181.9148" y2="-29.972" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-30.48" x2="181.9148" y2="-30.988" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-29.972" x2="183.4642" y2="-30.48" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-30.988" x2="183.4642" y2="-30.48" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-27.94" x2="181.9148" y2="-27.432" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-27.94" x2="181.9148" y2="-28.448" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-27.432" x2="183.4642" y2="-27.94" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-28.448" x2="183.4642" y2="-27.94" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-25.4" x2="181.9148" y2="-24.892" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-25.4" x2="181.9148" y2="-25.908" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-24.892" x2="183.4642" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-25.908" x2="183.4642" y2="-25.4" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-22.86" x2="181.9148" y2="-22.352" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-22.86" x2="181.9148" y2="-23.368" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-22.352" x2="183.4642" y2="-22.86" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-23.368" x2="183.4642" y2="-22.86" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-20.32" x2="181.9148" y2="-19.812" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-20.32" x2="181.9148" y2="-20.828" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-19.812" x2="183.4642" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-20.828" x2="183.4642" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-17.78" x2="181.9148" y2="-17.272" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-17.78" x2="181.9148" y2="-18.288" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-17.272" x2="183.4642" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-18.288" x2="183.4642" y2="-17.78" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-15.24" x2="181.9148" y2="-14.732" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-15.24" x2="181.9148" y2="-15.748" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-14.732" x2="183.4642" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-15.748" x2="183.4642" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-7.62" x2="181.9148" y2="-7.112" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-7.62" x2="181.9148" y2="-8.128" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-7.112" x2="183.4642" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-8.128" x2="183.4642" y2="-7.62" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-5.08" x2="181.9148" y2="-4.572" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-5.08" x2="181.9148" y2="-5.588" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-4.572" x2="183.4642" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-5.588" x2="183.4642" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-2.54" x2="181.9148" y2="-2.032" width="0.1524" layer="94"/>
<wire x1="180.848" y1="-2.54" x2="181.9148" y2="-3.048" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-2.032" x2="183.4642" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-3.048" x2="183.4642" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="180.848" y1="0" x2="181.9148" y2="0.508" width="0.1524" layer="94"/>
<wire x1="180.848" y1="0" x2="181.9148" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="0.508" x2="183.4642" y2="0" width="0.1524" layer="94"/>
<wire x1="182.4228" y1="-0.508" x2="183.4642" y2="0" width="0.1524" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-58.42" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-58.42" x2="180.34" y2="-58.42" width="0.1524" layer="94"/>
<wire x1="180.34" y1="-58.42" x2="180.34" y2="5.08" width="0.1524" layer="94"/>
<wire x1="180.34" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<text x="89.2556" y="9.1186" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="88.6206" y="6.5786" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DSPIC33FJ64MC804-H/PT" prefix="U">
<gates>
<gate name="A" symbol="DSPIC33FJ64MC804-X_PT" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TQFP44_10X10MC_MCH">
<connects>
<connect gate="A" pin="!MCLR" pad="18"/>
<connect gate="A" pin="AN0/VREF+/CN2/RA0" pad="19"/>
<connect gate="A" pin="AN1/VREF-/CN3/RA1" pad="20"/>
<connect gate="A" pin="AN4/C1IN-/RP2/CN6/RB2" pad="23"/>
<connect gate="A" pin="AN5/C1IN+/RP3/CN7/RB3" pad="24"/>
<connect gate="A" pin="AN6/DAC1RM/RP16/CN8/RC0" pad="25"/>
<connect gate="A" pin="AN7/DAC1LM/RP17/CN9/RC1" pad="26"/>
<connect gate="A" pin="AN8/CVREF/RP18/PMA2/CN10/RC2" pad="27"/>
<connect gate="A" pin="AVDD" pad="17"/>
<connect gate="A" pin="AVSS" pad="16"/>
<connect gate="A" pin="INT0/RP7/CN23/PMD5/RB7" pad="43"/>
<connect gate="A" pin="OSC1/CLKI/CN30/RA2" pad="30"/>
<connect gate="A" pin="OSC2/CLKO/CN29/RA3" pad="31"/>
<connect gate="A" pin="PGEC1/AN3/C2IN+/RP1/CN5/RB1" pad="22"/>
<connect gate="A" pin="PGEC2/PWM1L3/RP11/CN15/PMD1/RB11" pad="9"/>
<connect gate="A" pin="PGEC3/ASCL1/RP6/CN24/PMD6/RB6" pad="42"/>
<connect gate="A" pin="PGED1/AN2/C2IN-/RP0/CN4/RB0" pad="21"/>
<connect gate="A" pin="PGED2/EMCD2/PWM1H3/RP10/CN16/PMD2/RB10" pad="8"/>
<connect gate="A" pin="PGED3/ASDA1/RP5/CN27/PMD7/RB5" pad="41"/>
<connect gate="A" pin="PWM1H1/DAC1LP/RTCC/RP14/CN12/PMWR/RB14" pad="14"/>
<connect gate="A" pin="PWM1H2/DAC1RP/RP12/CN14/PMD0/RB12" pad="10"/>
<connect gate="A" pin="PWM1L1/DAC1LN/RP15/CN11/PMCS1/RB15" pad="15"/>
<connect gate="A" pin="PWM1L2/DAC1RN/RP13/CN13/PMRD/RB13" pad="11"/>
<connect gate="A" pin="PWM2H1/RP22/CN18/PMA1/RC6" pad="2"/>
<connect gate="A" pin="PWM2L1/RP23/CN17/PMA0/RC7" pad="3"/>
<connect gate="A" pin="RP19/CN28/PMBE/RC3" pad="36"/>
<connect gate="A" pin="RP20/CN25/PMA4/RC4" pad="37"/>
<connect gate="A" pin="RP21/CN26/PMA3/RC5" pad="38"/>
<connect gate="A" pin="RP24/CN20/PMA5/RC8" pad="4"/>
<connect gate="A" pin="RP25/CN19/PMA6/RC9" pad="5"/>
<connect gate="A" pin="SCL1/RP8/CN22/PMD4/RB8" pad="44"/>
<connect gate="A" pin="SDA1/RP9/CN21/PMD3/RB9" pad="1"/>
<connect gate="A" pin="SOSCI/RP4/CN1/RB4" pad="33"/>
<connect gate="A" pin="SOSCO/T1CK/CN0/RA4" pad="34"/>
<connect gate="A" pin="TCK/PMA7/RA7" pad="13"/>
<connect gate="A" pin="TDI/PMA9/RA9" pad="35"/>
<connect gate="A" pin="TDO/PMA8/RA8" pad="32"/>
<connect gate="A" pin="TMS/PMA10/RA10" pad="12"/>
<connect gate="A" pin="VCAP/VDDCORE" pad="7"/>
<connect gate="A" pin="VDD" pad="40"/>
<connect gate="A" pin="VDD_2" pad="28"/>
<connect gate="A" pin="VSS" pad="39"/>
<connect gate="A" pin="VSS_2" pad="6"/>
<connect gate="A" pin="VSS_3" pad="29"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Microchip" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="DSPIC33FJ64MC804-H/PT" constant="no"/>
</technology>
</technologies>
</device>
<device name="TQFP44_10X10MC_MCH-M" package="TQFP44_10X10MC_MCH-M">
<connects>
<connect gate="A" pin="!MCLR" pad="18"/>
<connect gate="A" pin="AN0/VREF+/CN2/RA0" pad="19"/>
<connect gate="A" pin="AN1/VREF-/CN3/RA1" pad="20"/>
<connect gate="A" pin="AN4/C1IN-/RP2/CN6/RB2" pad="23"/>
<connect gate="A" pin="AN5/C1IN+/RP3/CN7/RB3" pad="24"/>
<connect gate="A" pin="AN6/DAC1RM/RP16/CN8/RC0" pad="25"/>
<connect gate="A" pin="AN7/DAC1LM/RP17/CN9/RC1" pad="26"/>
<connect gate="A" pin="AN8/CVREF/RP18/PMA2/CN10/RC2" pad="27"/>
<connect gate="A" pin="AVDD" pad="17"/>
<connect gate="A" pin="AVSS" pad="16"/>
<connect gate="A" pin="INT0/RP7/CN23/PMD5/RB7" pad="43"/>
<connect gate="A" pin="OSC1/CLKI/CN30/RA2" pad="30"/>
<connect gate="A" pin="OSC2/CLKO/CN29/RA3" pad="31"/>
<connect gate="A" pin="PGEC1/AN3/C2IN+/RP1/CN5/RB1" pad="22"/>
<connect gate="A" pin="PGEC2/PWM1L3/RP11/CN15/PMD1/RB11" pad="9"/>
<connect gate="A" pin="PGEC3/ASCL1/RP6/CN24/PMD6/RB6" pad="42"/>
<connect gate="A" pin="PGED1/AN2/C2IN-/RP0/CN4/RB0" pad="21"/>
<connect gate="A" pin="PGED2/EMCD2/PWM1H3/RP10/CN16/PMD2/RB10" pad="8"/>
<connect gate="A" pin="PGED3/ASDA1/RP5/CN27/PMD7/RB5" pad="41"/>
<connect gate="A" pin="PWM1H1/DAC1LP/RTCC/RP14/CN12/PMWR/RB14" pad="14"/>
<connect gate="A" pin="PWM1H2/DAC1RP/RP12/CN14/PMD0/RB12" pad="10"/>
<connect gate="A" pin="PWM1L1/DAC1LN/RP15/CN11/PMCS1/RB15" pad="15"/>
<connect gate="A" pin="PWM1L2/DAC1RN/RP13/CN13/PMRD/RB13" pad="11"/>
<connect gate="A" pin="PWM2H1/RP22/CN18/PMA1/RC6" pad="2"/>
<connect gate="A" pin="PWM2L1/RP23/CN17/PMA0/RC7" pad="3"/>
<connect gate="A" pin="RP19/CN28/PMBE/RC3" pad="36"/>
<connect gate="A" pin="RP20/CN25/PMA4/RC4" pad="37"/>
<connect gate="A" pin="RP21/CN26/PMA3/RC5" pad="38"/>
<connect gate="A" pin="RP24/CN20/PMA5/RC8" pad="4"/>
<connect gate="A" pin="RP25/CN19/PMA6/RC9" pad="5"/>
<connect gate="A" pin="SCL1/RP8/CN22/PMD4/RB8" pad="44"/>
<connect gate="A" pin="SDA1/RP9/CN21/PMD3/RB9" pad="1"/>
<connect gate="A" pin="SOSCI/RP4/CN1/RB4" pad="33"/>
<connect gate="A" pin="SOSCO/T1CK/CN0/RA4" pad="34"/>
<connect gate="A" pin="TCK/PMA7/RA7" pad="13"/>
<connect gate="A" pin="TDI/PMA9/RA9" pad="35"/>
<connect gate="A" pin="TDO/PMA8/RA8" pad="32"/>
<connect gate="A" pin="TMS/PMA10/RA10" pad="12"/>
<connect gate="A" pin="VCAP/VDDCORE" pad="7"/>
<connect gate="A" pin="VDD" pad="40"/>
<connect gate="A" pin="VDD_2" pad="28"/>
<connect gate="A" pin="VSS" pad="39"/>
<connect gate="A" pin="VSS_2" pad="6"/>
<connect gate="A" pin="VSS_3" pad="29"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Microchip" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="DSPIC33FJ64MC804-H/PT" constant="no"/>
</technology>
</technologies>
</device>
<device name="TQFP44_10X10MC_MCH-L" package="TQFP44_10X10MC_MCH-L">
<connects>
<connect gate="A" pin="!MCLR" pad="18"/>
<connect gate="A" pin="AN0/VREF+/CN2/RA0" pad="19"/>
<connect gate="A" pin="AN1/VREF-/CN3/RA1" pad="20"/>
<connect gate="A" pin="AN4/C1IN-/RP2/CN6/RB2" pad="23"/>
<connect gate="A" pin="AN5/C1IN+/RP3/CN7/RB3" pad="24"/>
<connect gate="A" pin="AN6/DAC1RM/RP16/CN8/RC0" pad="25"/>
<connect gate="A" pin="AN7/DAC1LM/RP17/CN9/RC1" pad="26"/>
<connect gate="A" pin="AN8/CVREF/RP18/PMA2/CN10/RC2" pad="27"/>
<connect gate="A" pin="AVDD" pad="17"/>
<connect gate="A" pin="AVSS" pad="16"/>
<connect gate="A" pin="INT0/RP7/CN23/PMD5/RB7" pad="43"/>
<connect gate="A" pin="OSC1/CLKI/CN30/RA2" pad="30"/>
<connect gate="A" pin="OSC2/CLKO/CN29/RA3" pad="31"/>
<connect gate="A" pin="PGEC1/AN3/C2IN+/RP1/CN5/RB1" pad="22"/>
<connect gate="A" pin="PGEC2/PWM1L3/RP11/CN15/PMD1/RB11" pad="9"/>
<connect gate="A" pin="PGEC3/ASCL1/RP6/CN24/PMD6/RB6" pad="42"/>
<connect gate="A" pin="PGED1/AN2/C2IN-/RP0/CN4/RB0" pad="21"/>
<connect gate="A" pin="PGED2/EMCD2/PWM1H3/RP10/CN16/PMD2/RB10" pad="8"/>
<connect gate="A" pin="PGED3/ASDA1/RP5/CN27/PMD7/RB5" pad="41"/>
<connect gate="A" pin="PWM1H1/DAC1LP/RTCC/RP14/CN12/PMWR/RB14" pad="14"/>
<connect gate="A" pin="PWM1H2/DAC1RP/RP12/CN14/PMD0/RB12" pad="10"/>
<connect gate="A" pin="PWM1L1/DAC1LN/RP15/CN11/PMCS1/RB15" pad="15"/>
<connect gate="A" pin="PWM1L2/DAC1RN/RP13/CN13/PMRD/RB13" pad="11"/>
<connect gate="A" pin="PWM2H1/RP22/CN18/PMA1/RC6" pad="2"/>
<connect gate="A" pin="PWM2L1/RP23/CN17/PMA0/RC7" pad="3"/>
<connect gate="A" pin="RP19/CN28/PMBE/RC3" pad="36"/>
<connect gate="A" pin="RP20/CN25/PMA4/RC4" pad="37"/>
<connect gate="A" pin="RP21/CN26/PMA3/RC5" pad="38"/>
<connect gate="A" pin="RP24/CN20/PMA5/RC8" pad="4"/>
<connect gate="A" pin="RP25/CN19/PMA6/RC9" pad="5"/>
<connect gate="A" pin="SCL1/RP8/CN22/PMD4/RB8" pad="44"/>
<connect gate="A" pin="SDA1/RP9/CN21/PMD3/RB9" pad="1"/>
<connect gate="A" pin="SOSCI/RP4/CN1/RB4" pad="33"/>
<connect gate="A" pin="SOSCO/T1CK/CN0/RA4" pad="34"/>
<connect gate="A" pin="TCK/PMA7/RA7" pad="13"/>
<connect gate="A" pin="TDI/PMA9/RA9" pad="35"/>
<connect gate="A" pin="TDO/PMA8/RA8" pad="32"/>
<connect gate="A" pin="TMS/PMA10/RA10" pad="12"/>
<connect gate="A" pin="VCAP/VDDCORE" pad="7"/>
<connect gate="A" pin="VDD" pad="40"/>
<connect gate="A" pin="VDD_2" pad="28"/>
<connect gate="A" pin="VSS" pad="39"/>
<connect gate="A" pin="VSS_2" pad="6"/>
<connect gate="A" pin="VSS_3" pad="29"/>
</connects>
<technologies>
<technology name="">
<attribute name="COPYRIGHT" value="Copyright (C) 2025 Ultra Librarian. All rights reserved." constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Microchip" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="DSPIC33FJ64MC804-H/PT" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X03" urn="urn:adsk.eagle:footprint:22340/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-3.8862" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
</package>
<package name="1X03/90" urn="urn:adsk.eagle:footprint:22341/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.81" y1="-1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="6.985" x2="-2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="6.985" x2="0" y2="1.27" width="0.762" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="6.985" x2="2.54" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-4.445" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="5.715" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.921" y1="0.635" x2="-2.159" y2="1.143" layer="21"/>
<rectangle x1="-0.381" y1="0.635" x2="0.381" y2="1.143" layer="21"/>
<rectangle x1="2.159" y1="0.635" x2="2.921" y2="1.143" layer="21"/>
<rectangle x1="-2.921" y1="-2.921" x2="-2.159" y2="-1.905" layer="21"/>
<rectangle x1="-0.381" y1="-2.921" x2="0.381" y2="-1.905" layer="21"/>
<rectangle x1="2.159" y1="-2.921" x2="2.921" y2="-1.905" layer="21"/>
</package>
<package name="1X06" urn="urn:adsk.eagle:footprint:22361/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-7.6962" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-7.62" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
</package>
<package name="1X06/90" urn="urn:adsk.eagle:footprint:22362/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-7.62" y1="-1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="6.985" x2="-6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="6.985" x2="6.35" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-8.255" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="9.525" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-6.731" y1="0.635" x2="-5.969" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="5.969" y1="0.635" x2="6.731" y2="1.143" layer="21"/>
<rectangle x1="-6.731" y1="-2.921" x2="-5.969" y2="-1.905" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
<rectangle x1="5.969" y1="-2.921" x2="6.731" y2="-1.905" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="1X03" urn="urn:adsk.eagle:package:22458/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X03"/>
</packageinstances>
</package3d>
<package3d name="1X03/90" urn="urn:adsk.eagle:package:22459/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X03/90"/>
</packageinstances>
</package3d>
<package3d name="1X06" urn="urn:adsk.eagle:package:22472/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X06"/>
</packageinstances>
</package3d>
<package3d name="1X06/90" urn="urn:adsk.eagle:package:22475/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X06/90"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINHD3" urn="urn:adsk.eagle:symbol:22339/1" library_version="4">
<wire x1="-6.35" y1="-5.08" x2="1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-5.08" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
<symbol name="PINHD6" urn="urn:adsk.eagle:symbol:22360/1" library_version="4">
<wire x1="-6.35" y1="-7.62" x2="1.27" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-7.62" x2="1.27" y2="10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="10.16" x2="-6.35" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="10.16" x2="-6.35" y2="-7.62" width="0.4064" layer="94"/>
<text x="-6.35" y="10.795" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X3" urn="urn:adsk.eagle:component:22524/4" prefix="JP" uservalue="yes" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X03">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22458/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="92" constant="no"/>
</technology>
</technologies>
</device>
<device name="/90" package="1X03/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22459/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="17" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHD-1X6" urn="urn:adsk.eagle:component:22533/4" prefix="JP" uservalue="yes" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD6" x="0" y="-2.54"/>
</gates>
<devices>
<device name="" package="1X06">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22472/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="79" constant="no"/>
</technology>
</technologies>
</device>
<device name="/90" package="1X06/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22475/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="10" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="VCC" urn="urn:adsk.eagle:symbol:26928/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" urn="urn:adsk.eagle:component:26957/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="1761681-1">
<description>&lt;Body Features: Primary Product Color Black | Connector Profile Low | Daisy Chain With | Configuration Features: PCB Mount Orientation Vertical | Number of Positions 6 | Number of Rows 2 | Contact Features: Contact Mating Area Plating Material Thickness 15 MICIN | Contact Type Pin | PCB Contact Termination Area Plating Material Tin | Contact Base Material Phosphor Bronze | PCB Contact Termination Area Plating Material Thickness 100 MICIN | Contact Current Rating (Max) 1 AMP | Contact Underplating Material Ni&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="SHDR6W67P254_2X3_1524X916X922P">
<description>&lt;b&gt;1761681-1&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="1.15" diameter="1.725" shape="square"/>
<pad name="2" x="0" y="2.54" drill="1.15" diameter="1.725"/>
<pad name="3" x="2.54" y="0" drill="1.15" diameter="1.725"/>
<pad name="4" x="2.54" y="2.54" drill="1.15" diameter="1.725"/>
<pad name="5" x="5.08" y="0" drill="1.15" diameter="1.725"/>
<pad name="6" x="5.08" y="2.54" drill="1.15" diameter="1.725"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-5.33" y1="-3.425" x2="-5.33" y2="6.425" width="0.05" layer="51"/>
<wire x1="-5.33" y1="6.425" x2="10.41" y2="6.425" width="0.05" layer="51"/>
<wire x1="10.41" y1="6.425" x2="10.41" y2="-3.425" width="0.05" layer="51"/>
<wire x1="10.41" y1="-3.425" x2="-5.33" y2="-3.425" width="0.05" layer="51"/>
<wire x1="-5.08" y1="-3.175" x2="-5.08" y2="6.175" width="0.1" layer="51"/>
<wire x1="-5.08" y1="6.175" x2="10.16" y2="6.175" width="0.1" layer="51"/>
<wire x1="10.16" y1="6.175" x2="10.16" y2="-3.175" width="0.1" layer="51"/>
<wire x1="10.16" y1="-3.175" x2="-5.08" y2="-3.175" width="0.1" layer="51"/>
<wire x1="0" y1="-3.175" x2="10.16" y2="-3.175" width="0.2" layer="21"/>
<wire x1="10.16" y1="-3.175" x2="10.16" y2="6.175" width="0.2" layer="21"/>
<wire x1="10.16" y1="6.175" x2="-5.08" y2="6.175" width="0.2" layer="21"/>
<wire x1="-5.08" y1="6.175" x2="-5.08" y2="0" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="1761681-1">
<wire x1="5.08" y1="2.54" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-7.62" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="16.51" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="16.51" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" length="middle"/>
<pin name="3" x="0" y="-2.54" length="middle"/>
<pin name="5" x="0" y="-5.08" length="middle"/>
<pin name="2" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="4" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="6" x="20.32" y="-5.08" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="1761681-1" prefix="J">
<description>&lt;b&gt;Body Features: Primary Product Color Black | Connector Profile Low | Daisy Chain With | Configuration Features: PCB Mount Orientation Vertical | Number of Positions 6 | Number of Rows 2 | Contact Features: Contact Mating Area Plating Material Thickness 15 MICIN | Contact Type Pin | PCB Contact Termination Area Plating Material Tin | Contact Base Material Phosphor Bronze | PCB Contact Termination Area Plating Material Thickness 100 MICIN | Contact Current Rating (Max) 1 AMP | Contact Underplating Material Ni&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.te.com/commerce/DocumentDelivery/DDEController?Action=showdoc&amp;DocId=Customer Drawing1761681A1pdfEnglishENG_CD_1761681_A1.pdf1761681-1"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="1761681-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SHDR6W67P254_2X3_1524X916X922P">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Body Features: Primary Product Color Black | Connector Profile Low | Daisy Chain With | Configuration Features: PCB Mount Orientation Vertical | Number of Positions 6 | Number of Rows 2 | Contact Features: Contact Mating Area Plating Material Thickness 15 MICIN | Contact Type Pin | PCB Contact Termination Area Plating Material Tin | Contact Base Material Phosphor Bronze | PCB Contact Termination Area Plating Material Thickness 100 MICIN | Contact Current Rating (Max) 1 AMP | Contact Underplating Material Ni" constant="no"/>
<attribute name="HEIGHT" value="9.22mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="TE Connectivity" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="1761681-1" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="571-1761681-1" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/TE-Connectivity/1761681-1?qs=BqFpTYCQ3dLAeZ2wzdz7aw%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="UA78M33CDCYG3">
<description>&lt;Linear Voltage Regulators 3.3 V 500mA Fix Pos Voltage Regulator&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="SOT230P700X180-4N">
<description>&lt;b&gt;SOT-223__&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-3.15" y="2.3" dx="1.75" dy="0.95" layer="1"/>
<smd name="2" x="-3.15" y="0" dx="1.75" dy="0.95" layer="1"/>
<smd name="3" x="-3.15" y="-2.3" dx="1.75" dy="0.95" layer="1"/>
<smd name="4" x="3.15" y="0" dx="3.2" dy="1.75" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-4.275" y1="3.6" x2="4.275" y2="3.6" width="0.05" layer="51"/>
<wire x1="4.275" y1="3.6" x2="4.275" y2="-3.6" width="0.05" layer="51"/>
<wire x1="4.275" y1="-3.6" x2="-4.275" y2="-3.6" width="0.05" layer="51"/>
<wire x1="-4.275" y1="-3.6" x2="-4.275" y2="3.6" width="0.05" layer="51"/>
<wire x1="-1.75" y1="3.25" x2="1.75" y2="3.25" width="0.1" layer="51"/>
<wire x1="1.75" y1="3.25" x2="1.75" y2="-3.25" width="0.1" layer="51"/>
<wire x1="1.75" y1="-3.25" x2="-1.75" y2="-3.25" width="0.1" layer="51"/>
<wire x1="-1.75" y1="-3.25" x2="-1.75" y2="3.25" width="0.1" layer="51"/>
<wire x1="-1.75" y1="0.95" x2="0.55" y2="3.25" width="0.1" layer="51"/>
<wire x1="-1.75" y1="3.25" x2="1.75" y2="3.25" width="0.2" layer="21"/>
<wire x1="1.75" y1="3.25" x2="1.75" y2="-3.25" width="0.2" layer="21"/>
<wire x1="1.75" y1="-3.25" x2="-1.75" y2="-3.25" width="0.2" layer="21"/>
<wire x1="-1.75" y1="-3.25" x2="-1.75" y2="3.25" width="0.2" layer="21"/>
<wire x1="-4.025" y1="3.125" x2="-2.275" y2="3.125" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="UA78M33CDCYG3">
<wire x1="5.08" y1="2.54" x2="33.02" y2="2.54" width="0.254" layer="94"/>
<wire x1="33.02" y1="-7.62" x2="33.02" y2="2.54" width="0.254" layer="94"/>
<wire x1="33.02" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="34.29" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="34.29" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="INPUT" x="0" y="0" length="middle"/>
<pin name="COMMON_1" x="0" y="-2.54" length="middle"/>
<pin name="OUTPUT" x="0" y="-5.08" length="middle"/>
<pin name="COMMON_2" x="38.1" y="0" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="UA78M33CDCYG3" prefix="IC">
<description>&lt;b&gt;Linear Voltage Regulators 3.3 V 500mA Fix Pos Voltage Regulator&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://www.ti.com/lit/ds/symlink/ua78m.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="UA78M33CDCYG3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT230P700X180-4N">
<connects>
<connect gate="G$1" pin="COMMON_1" pad="2"/>
<connect gate="G$1" pin="COMMON_2" pad="4"/>
<connect gate="G$1" pin="INPUT" pad="1"/>
<connect gate="G$1" pin="OUTPUT" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Linear Voltage Regulators 3.3 V 500mA Fix Pos Voltage Regulator" constant="no"/>
<attribute name="HEIGHT" value="1.8mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Texas Instruments" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="UA78M33CDCYG3" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="595-UA78M33CDCYG3" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Texas-Instruments/UA78M33CDCYG3?qs=0O%2FZFlpUpJU0kFSZAC76Kw%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="TB6612FNG_C_8_EL">
<description>&lt;otor / Motion / Ignition Controllers &amp; Drivers Brush Motor Driver IC&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="SOP65P760X160-24N">
<description>&lt;b&gt;TB6575FNG,C,8,EL-1&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-3.562" y="3.575" dx="1.525" dy="0.45" layer="1"/>
<smd name="2" x="-3.562" y="2.925" dx="1.525" dy="0.45" layer="1"/>
<smd name="3" x="-3.562" y="2.275" dx="1.525" dy="0.45" layer="1"/>
<smd name="4" x="-3.562" y="1.625" dx="1.525" dy="0.45" layer="1"/>
<smd name="5" x="-3.562" y="0.975" dx="1.525" dy="0.45" layer="1"/>
<smd name="6" x="-3.562" y="0.325" dx="1.525" dy="0.45" layer="1"/>
<smd name="7" x="-3.562" y="-0.325" dx="1.525" dy="0.45" layer="1"/>
<smd name="8" x="-3.562" y="-0.975" dx="1.525" dy="0.45" layer="1"/>
<smd name="9" x="-3.562" y="-1.625" dx="1.525" dy="0.45" layer="1"/>
<smd name="10" x="-3.562" y="-2.275" dx="1.525" dy="0.45" layer="1"/>
<smd name="11" x="-3.562" y="-2.925" dx="1.525" dy="0.45" layer="1"/>
<smd name="12" x="-3.562" y="-3.575" dx="1.525" dy="0.45" layer="1"/>
<smd name="13" x="3.562" y="-3.575" dx="1.525" dy="0.45" layer="1"/>
<smd name="14" x="3.562" y="-2.925" dx="1.525" dy="0.45" layer="1"/>
<smd name="15" x="3.562" y="-2.275" dx="1.525" dy="0.45" layer="1"/>
<smd name="16" x="3.562" y="-1.625" dx="1.525" dy="0.45" layer="1"/>
<smd name="17" x="3.562" y="-0.975" dx="1.525" dy="0.45" layer="1"/>
<smd name="18" x="3.562" y="-0.325" dx="1.525" dy="0.45" layer="1"/>
<smd name="19" x="3.562" y="0.325" dx="1.525" dy="0.45" layer="1"/>
<smd name="20" x="3.562" y="0.975" dx="1.525" dy="0.45" layer="1"/>
<smd name="21" x="3.562" y="1.625" dx="1.525" dy="0.45" layer="1"/>
<smd name="22" x="3.562" y="2.275" dx="1.525" dy="0.45" layer="1"/>
<smd name="23" x="3.562" y="2.925" dx="1.525" dy="0.45" layer="1"/>
<smd name="24" x="3.562" y="3.575" dx="1.525" dy="0.45" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-4.575" y1="4.4" x2="4.575" y2="4.4" width="0.05" layer="51"/>
<wire x1="4.575" y1="4.4" x2="4.575" y2="-4.4" width="0.05" layer="51"/>
<wire x1="4.575" y1="-4.4" x2="-4.575" y2="-4.4" width="0.05" layer="51"/>
<wire x1="-4.575" y1="-4.4" x2="-4.575" y2="4.4" width="0.05" layer="51"/>
<wire x1="-2.8" y1="4.15" x2="2.8" y2="4.15" width="0.1" layer="51"/>
<wire x1="2.8" y1="4.15" x2="2.8" y2="-4.15" width="0.1" layer="51"/>
<wire x1="2.8" y1="-4.15" x2="-2.8" y2="-4.15" width="0.1" layer="51"/>
<wire x1="-2.8" y1="-4.15" x2="-2.8" y2="4.15" width="0.1" layer="51"/>
<wire x1="-2.8" y1="3.5" x2="-2.15" y2="4.15" width="0.1" layer="51"/>
<wire x1="-2.45" y1="4.15" x2="2.45" y2="4.15" width="0.2" layer="21"/>
<wire x1="2.45" y1="4.15" x2="2.45" y2="-4.15" width="0.2" layer="21"/>
<wire x1="2.45" y1="-4.15" x2="-2.45" y2="-4.15" width="0.2" layer="21"/>
<wire x1="-2.45" y1="-4.15" x2="-2.45" y2="4.15" width="0.2" layer="21"/>
<wire x1="-4.325" y1="4.15" x2="-2.8" y2="4.15" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="TB6612FNG,C,8,EL">
<wire x1="5.08" y1="2.54" x2="27.94" y2="2.54" width="0.254" layer="94"/>
<wire x1="27.94" y1="-30.48" x2="27.94" y2="2.54" width="0.254" layer="94"/>
<wire x1="27.94" y1="-30.48" x2="5.08" y2="-30.48" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-30.48" width="0.254" layer="94"/>
<text x="29.21" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="29.21" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="AO1_1" x="0" y="0" length="middle"/>
<pin name="AO1_2" x="0" y="-2.54" length="middle"/>
<pin name="PGND1_1" x="0" y="-5.08" length="middle"/>
<pin name="PGND1_2" x="0" y="-7.62" length="middle"/>
<pin name="AO2_1" x="0" y="-10.16" length="middle"/>
<pin name="AO2_2" x="0" y="-12.7" length="middle"/>
<pin name="BO2_1" x="0" y="-15.24" length="middle"/>
<pin name="BO2_2" x="0" y="-17.78" length="middle"/>
<pin name="PGND2_1" x="0" y="-20.32" length="middle"/>
<pin name="PGND2_2" x="0" y="-22.86" length="middle"/>
<pin name="BO1_1" x="0" y="-25.4" length="middle"/>
<pin name="BO1_2" x="0" y="-27.94" length="middle"/>
<pin name="VM1" x="33.02" y="0" length="middle" rot="R180"/>
<pin name="PWMA" x="33.02" y="-2.54" length="middle" rot="R180"/>
<pin name="AIN2" x="33.02" y="-5.08" length="middle" rot="R180"/>
<pin name="AIN1" x="33.02" y="-7.62" length="middle" rot="R180"/>
<pin name="VCC" x="33.02" y="-10.16" length="middle" rot="R180"/>
<pin name="STBY" x="33.02" y="-12.7" length="middle" rot="R180"/>
<pin name="GND" x="33.02" y="-15.24" length="middle" rot="R180"/>
<pin name="BIN1" x="33.02" y="-17.78" length="middle" rot="R180"/>
<pin name="BIN2" x="33.02" y="-20.32" length="middle" rot="R180"/>
<pin name="PWMB" x="33.02" y="-22.86" length="middle" rot="R180"/>
<pin name="VM3" x="33.02" y="-25.4" length="middle" rot="R180"/>
<pin name="VM2" x="33.02" y="-27.94" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TB6612FNG,C,8,EL" prefix="IC">
<description>&lt;b&gt;otor / Motion / Ignition Controllers &amp; Drivers Brush Motor Driver IC&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://toshiba.semicon-storage.com/info/docget.jsp?did=10660&amp;prodName=TB6612FNG"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="TB6612FNG,C,8,EL" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOP65P760X160-24N">
<connects>
<connect gate="G$1" pin="AIN1" pad="21"/>
<connect gate="G$1" pin="AIN2" pad="22"/>
<connect gate="G$1" pin="AO1_1" pad="1"/>
<connect gate="G$1" pin="AO1_2" pad="2"/>
<connect gate="G$1" pin="AO2_1" pad="5"/>
<connect gate="G$1" pin="AO2_2" pad="6"/>
<connect gate="G$1" pin="BIN1" pad="17"/>
<connect gate="G$1" pin="BIN2" pad="16"/>
<connect gate="G$1" pin="BO1_1" pad="11"/>
<connect gate="G$1" pin="BO1_2" pad="12"/>
<connect gate="G$1" pin="BO2_1" pad="7"/>
<connect gate="G$1" pin="BO2_2" pad="8"/>
<connect gate="G$1" pin="GND" pad="18"/>
<connect gate="G$1" pin="PGND1_1" pad="3"/>
<connect gate="G$1" pin="PGND1_2" pad="4"/>
<connect gate="G$1" pin="PGND2_1" pad="9"/>
<connect gate="G$1" pin="PGND2_2" pad="10"/>
<connect gate="G$1" pin="PWMA" pad="23"/>
<connect gate="G$1" pin="PWMB" pad="15"/>
<connect gate="G$1" pin="STBY" pad="19"/>
<connect gate="G$1" pin="VCC" pad="20"/>
<connect gate="G$1" pin="VM1" pad="24"/>
<connect gate="G$1" pin="VM2" pad="13"/>
<connect gate="G$1" pin="VM3" pad="14"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="otor / Motion / Ignition Controllers &amp; Drivers Brush Motor Driver IC" constant="no"/>
<attribute name="HEIGHT" value="1.6mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Toshiba" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="TB6612FNG,C,8,EL" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="757-TB6612FNGC8EL" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Toshiba/TB6612FNGC8EL?qs=rsevcuukUAy2UalRuv4E%2FQ%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ABM8-20.000MHZ-B2-T">
<description>&lt;20 MHz +/-20ppm Crystal 18pF 50 Ohms 4-SMD, No Lead&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="ABM810000MHZ12D2W">
<description>&lt;b&gt;ABM8&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-1.15" y="-0.925" dx="1.3" dy="1.05" layer="1"/>
<smd name="2" x="1.15" y="-0.925" dx="1.3" dy="1.05" layer="1"/>
<smd name="3" x="1.15" y="0.925" dx="1.3" dy="1.05" layer="1"/>
<smd name="4" x="-1.15" y="0.925" dx="1.3" dy="1.05" layer="1"/>
<text x="0" y="-0.218" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="-0.218" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.6" y1="1.25" x2="1.6" y2="1.25" width="0.2" layer="51"/>
<wire x1="1.6" y1="1.25" x2="1.6" y2="-1.25" width="0.2" layer="51"/>
<wire x1="1.6" y1="-1.25" x2="-1.6" y2="-1.25" width="0.2" layer="51"/>
<wire x1="-1.6" y1="-1.25" x2="-1.6" y2="1.25" width="0.2" layer="51"/>
<wire x1="-2.8" y1="2.45" x2="2.8" y2="2.45" width="0.1" layer="51"/>
<wire x1="2.8" y1="2.45" x2="2.8" y2="-2.887" width="0.1" layer="51"/>
<wire x1="2.8" y1="-2.887" x2="-2.8" y2="-2.887" width="0.1" layer="51"/>
<wire x1="-2.8" y1="-2.887" x2="-2.8" y2="2.45" width="0.1" layer="51"/>
<wire x1="-1.25" y1="-1.854" x2="-1.25" y2="-1.854" width="0.2" layer="21"/>
<wire x1="-1.25" y1="-1.854" x2="-1.05" y2="-1.854" width="0.2" layer="21" curve="180"/>
<wire x1="-1.05" y1="-1.854" x2="-1.05" y2="-1.854" width="0.2" layer="21"/>
<wire x1="-1.05" y1="-1.854" x2="-1.25" y2="-1.854" width="0.2" layer="21" curve="180"/>
<wire x1="-0.2" y1="1.25" x2="0.2" y2="1.25" width="0.2" layer="21"/>
<wire x1="-0.2" y1="-1.25" x2="0.2" y2="-1.25" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="ABM8-20.000MHZ-B2-T">
<wire x1="5.08" y1="2.54" x2="25.4" y2="2.54" width="0.254" layer="94"/>
<wire x1="25.4" y1="-5.08" x2="25.4" y2="2.54" width="0.254" layer="94"/>
<wire x1="25.4" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="26.67" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="26.67" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="X1" x="0" y="-2.54" length="middle"/>
<pin name="GND_1" x="30.48" y="-2.54" length="middle" rot="R180"/>
<pin name="X2" x="30.48" y="0" length="middle" rot="R180"/>
<pin name="GND_2" x="0" y="0" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ABM8-20.000MHZ-B2-T" prefix="Y">
<description>&lt;b&gt;20 MHz +/-20ppm Crystal 18pF 50 Ohms 4-SMD, No Lead&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://abracon.com/Resonators/abm8.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ABM8-20.000MHZ-B2-T" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ABM810000MHZ12D2W">
<connects>
<connect gate="G$1" pin="GND_1" pad="2"/>
<connect gate="G$1" pin="GND_2" pad="4"/>
<connect gate="G$1" pin="X1" pad="1"/>
<connect gate="G$1" pin="X2" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="20 MHz +/-20ppm Crystal 18pF 50 Ohms 4-SMD, No Lead" constant="no"/>
<attribute name="HEIGHT" value="0.8mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="ABRACON" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ABM8-20.000MHZ-B2-T" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="815-ABM8-20-B2-T" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/ABRACON/ABM8-20000MHZ-B2-T?qs=zLkLEWnxMJwLicGB81opDg%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="RN4871-I_RM130">
<description>&lt;Bluetooth BLE Module, Shielded, Antenna,&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="RN4871">
<description>&lt;b&gt;RN4871&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-4.25" y="6.7" dx="1.5" dy="0.7" layer="1"/>
<smd name="2" x="-4.25" y="5.5" dx="1.5" dy="0.7" layer="1"/>
<smd name="3" x="-4.25" y="4.3" dx="1.5" dy="0.7" layer="1"/>
<smd name="4" x="-4.25" y="3.1" dx="1.5" dy="0.7" layer="1"/>
<smd name="5" x="-4.25" y="1.9" dx="1.5" dy="0.7" layer="1"/>
<smd name="6" x="-3" y="0.25" dx="1.5" dy="0.7" layer="1" rot="R90"/>
<smd name="7" x="-1.8" y="0.25" dx="1.5" dy="0.7" layer="1" rot="R90"/>
<smd name="8" x="-0.6" y="0.25" dx="1.5" dy="0.7" layer="1" rot="R90"/>
<smd name="9" x="0.6" y="0.25" dx="1.5" dy="0.7" layer="1" rot="R90"/>
<smd name="10" x="1.8" y="0.25" dx="1.5" dy="0.7" layer="1" rot="R90"/>
<smd name="11" x="3" y="0.25" dx="1.5" dy="0.7" layer="1" rot="R90"/>
<smd name="12" x="4.25" y="1.9" dx="1.5" dy="0.7" layer="1"/>
<smd name="13" x="4.25" y="3.1" dx="1.5" dy="0.7" layer="1"/>
<smd name="14" x="4.25" y="4.3" dx="1.5" dy="0.7" layer="1"/>
<smd name="15" x="4.25" y="5.5" dx="1.5" dy="0.7" layer="1"/>
<smd name="16" x="4.25" y="6.7" dx="1.5" dy="0.7" layer="1"/>
<text x="-0.424959375" y="4.40673125" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="-0.424959375" y="4.40673125" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-4.5" y1="11.5" x2="4.5" y2="11.5" width="0.2" layer="51"/>
<wire x1="4.5" y1="11.5" x2="4.5" y2="0" width="0.2" layer="51"/>
<wire x1="4.5" y1="0" x2="-4.5" y2="0" width="0.2" layer="51"/>
<wire x1="-4.5" y1="0" x2="-4.5" y2="11.5" width="0.2" layer="51"/>
<wire x1="-4.5" y1="11.5" x2="4.5" y2="11.5" width="0.2" layer="21"/>
<wire x1="-4.5" y1="11.5" x2="-4.5" y2="7.475" width="0.2" layer="21"/>
<wire x1="4.5" y1="11.5" x2="4.5" y2="7.475" width="0.2" layer="21"/>
<wire x1="-4.5" y1="0" x2="-4.5" y2="1.139" width="0.2" layer="21"/>
<wire x1="4.5" y1="0" x2="4.5" y2="1.139" width="0.2" layer="21"/>
<wire x1="-4.5" y1="0" x2="-3.715" y2="0" width="0.2" layer="21"/>
<wire x1="4.5" y1="0" x2="3.715" y2="0" width="0.2" layer="21"/>
<circle x="-5.627" y="6.741" radius="0.045" width="0.2" layer="25"/>
</package>
</packages>
<symbols>
<symbol name="RN4871-I_RM130">
<wire x1="5.08" y1="2.54" x2="27.94" y2="2.54" width="0.254" layer="94"/>
<wire x1="27.94" y1="-20.32" x2="27.94" y2="2.54" width="0.254" layer="94"/>
<wire x1="27.94" y1="-20.32" x2="5.08" y2="-20.32" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-20.32" width="0.254" layer="94"/>
<text x="29.21" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="29.21" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="NC" x="0" y="0" length="middle" direction="nc"/>
<pin name="GND_1" x="0" y="-2.54" length="middle"/>
<pin name="P1_2" x="0" y="-5.08" length="middle"/>
<pin name="P1_3" x="0" y="-7.62" length="middle"/>
<pin name="P1_7" x="0" y="-10.16" length="middle"/>
<pin name="P1_6" x="0" y="-12.7" length="middle"/>
<pin name="UART_RX" x="0" y="-15.24" length="middle"/>
<pin name="UART_TX" x="0" y="-17.78" length="middle"/>
<pin name="P3_6" x="33.02" y="0" length="middle" rot="R180"/>
<pin name="RST_N" x="33.02" y="-2.54" length="middle" rot="R180"/>
<pin name="P0_0" x="33.02" y="-5.08" length="middle" rot="R180"/>
<pin name="P0_2" x="33.02" y="-7.62" length="middle" rot="R180"/>
<pin name="GND_2" x="33.02" y="-10.16" length="middle" rot="R180"/>
<pin name="VBAT" x="33.02" y="-12.7" length="middle" rot="R180"/>
<pin name="P2_7" x="33.02" y="-15.24" length="middle" rot="R180"/>
<pin name="P2_0" x="33.02" y="-17.78" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RN4871-I_RM130" prefix="IC">
<description>&lt;b&gt;Bluetooth BLE Module, Shielded, Antenna,&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://ww1.microchip.com/downloads/en/DeviceDoc/50002489C.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="RN4871-I_RM130" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RN4871">
<connects>
<connect gate="G$1" pin="GND_1" pad="2"/>
<connect gate="G$1" pin="GND_2" pad="13"/>
<connect gate="G$1" pin="NC" pad="1"/>
<connect gate="G$1" pin="P0_0" pad="11"/>
<connect gate="G$1" pin="P0_2" pad="12"/>
<connect gate="G$1" pin="P1_2" pad="3"/>
<connect gate="G$1" pin="P1_3" pad="4"/>
<connect gate="G$1" pin="P1_6" pad="6"/>
<connect gate="G$1" pin="P1_7" pad="5"/>
<connect gate="G$1" pin="P2_0" pad="16"/>
<connect gate="G$1" pin="P2_7" pad="15"/>
<connect gate="G$1" pin="P3_6" pad="9"/>
<connect gate="G$1" pin="RST_N" pad="10"/>
<connect gate="G$1" pin="UART_RX" pad="7"/>
<connect gate="G$1" pin="UART_TX" pad="8"/>
<connect gate="G$1" pin="VBAT" pad="14"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Bluetooth BLE Module, Shielded, Antenna," constant="no"/>
<attribute name="HEIGHT" value="mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Microchip" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="RN4871-I/RM130" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="579-RN4871IRM130" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Microchip-Technology/RN4871-I-RM130?qs=MLItCLRbWswoZsrzvVbGYw%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="APT3216LSECK_J3-PRV">
<description>&lt;3.2X1.6mm Low Current Red SMD LED; Water Clear; 625nm; 120 Viewing Angle&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="LEDC3216X95N">
<description>&lt;b&gt;APT3216LSECK/J3-PRV&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-1.5" y="0" dx="1.8" dy="1.15" layer="1" rot="R90"/>
<smd name="2" x="1.5" y="0" dx="1.8" dy="1.15" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-2.525" y1="1.35" x2="2.525" y2="1.35" width="0.05" layer="51"/>
<wire x1="2.525" y1="1.35" x2="2.525" y2="-1.35" width="0.05" layer="51"/>
<wire x1="2.525" y1="-1.35" x2="-2.525" y2="-1.35" width="0.05" layer="51"/>
<wire x1="-2.525" y1="-1.35" x2="-2.525" y2="1.35" width="0.05" layer="51"/>
<wire x1="-1.6" y1="0.8" x2="1.6" y2="0.8" width="0.1" layer="51"/>
<wire x1="1.6" y1="0.8" x2="1.6" y2="-0.8" width="0.1" layer="51"/>
<wire x1="1.6" y1="-0.8" x2="-1.6" y2="-0.8" width="0.1" layer="51"/>
<wire x1="-1.6" y1="-0.8" x2="-1.6" y2="0.8" width="0.1" layer="51"/>
<wire x1="-1.6" y1="0.267" x2="-1.067" y2="0.8" width="0.1" layer="51"/>
<wire x1="1.5" y1="1.25" x2="-2.425" y2="1.25" width="0.2" layer="21"/>
<wire x1="-2.425" y1="1.25" x2="-2.425" y2="-1.25" width="0.2" layer="21"/>
<wire x1="-2.425" y1="-1.25" x2="1.5" y2="-1.25" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="APT3216LSECK_J3-PRV">
<wire x1="5.08" y1="2.54" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="6.35" y1="2.54" x2="3.81" y2="5.08" width="0.254" layer="94"/>
<wire x1="8.89" y1="2.54" x2="6.35" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.254" layer="94"/>
<wire x1="10.16" y1="0" x2="12.7" y2="0" width="0.254" layer="94"/>
<text x="12.7" y="8.89" size="1.778" layer="95">&gt;NAME</text>
<text x="12.7" y="6.35" size="1.778" layer="96">&gt;VALUE</text>
<pin name="K" x="0" y="0" visible="pad" length="short"/>
<pin name="A" x="15.24" y="0" visible="pad" length="short" rot="R180"/>
<polygon width="0.254" layer="94">
<vertex x="5.08" y="0"/>
<vertex x="10.16" y="2.54"/>
<vertex x="10.16" y="-2.54"/>
</polygon>
<polygon width="0.254" layer="94">
<vertex x="5.334" y="4.318"/>
<vertex x="4.572" y="3.556"/>
<vertex x="3.81" y="5.08"/>
</polygon>
<polygon width="0.254" layer="94">
<vertex x="7.874" y="4.318"/>
<vertex x="7.112" y="3.556"/>
<vertex x="6.35" y="5.08"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="APT3216LSECK_J3-PRV" prefix="LED">
<description>&lt;b&gt;3.2X1.6mm Low Current Red SMD LED; Water Clear; 625nm; 120 Viewing Angle&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://componentsearchengine.com/Datasheets/1/APT3216LSECK_J3-PRV.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="APT3216LSECK_J3-PRV" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LEDC3216X95N">
<connects>
<connect gate="G$1" pin="A" pad="2"/>
<connect gate="G$1" pin="K" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="3.2X1.6mm Low Current Red SMD LED; Water Clear; 625nm; 120 Viewing Angle" constant="no"/>
<attribute name="HEIGHT" value="0.95mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Kingbright" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="APT3216LSECK/J3-PRV" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="604-APT3216LSECKJ3RV" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Kingbright/APT3216LSECK-J3-PRV?qs=6oMev5NRZMH6FCB40E9NQw%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="B3F-1020">
<description>&lt;Switch Tact SPST,flat 5mm act,PC Pins Black Plunger Tactile Switch, SPST-NO 0.05 A@ 24 V dc 0.9mm&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="B3F1000">
<description>&lt;b&gt;B3F1000&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="3.25" y="-2.25" drill="1.1" diameter="1.65"/>
<pad name="2" x="-3.25" y="-2.25" drill="1.1" diameter="1.65"/>
<pad name="3" x="3.25" y="2.25" drill="1.1" diameter="1.65"/>
<pad name="4" x="-3.25" y="2.25" drill="1.1" diameter="1.65"/>
<text x="-0.33" y="0.055" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="-0.33" y="0.055" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-3" y1="3" x2="3" y2="3" width="0.2" layer="51"/>
<wire x1="3" y1="3" x2="3" y2="-3" width="0.2" layer="51"/>
<wire x1="3" y1="-3" x2="-3" y2="-3" width="0.2" layer="51"/>
<wire x1="-3" y1="-3" x2="-3" y2="3" width="0.2" layer="51"/>
<wire x1="-2.5" y1="3" x2="2.5" y2="3" width="0.2" layer="21"/>
<wire x1="-2.5" y1="-3" x2="2.5" y2="-3" width="0.2" layer="21"/>
<wire x1="-3" y1="1.2" x2="-3" y2="-1.2" width="0.2" layer="21"/>
<wire x1="3" y1="1.2" x2="3" y2="-1.2" width="0.2" layer="21"/>
<circle x="4.527" y="-3.273" radius="0.10288125" width="0.2" layer="25"/>
</package>
</packages>
<symbols>
<symbol name="B3F-1020">
<wire x1="5.08" y1="2.54" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-5.08" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="16.51" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="16.51" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="2" x="0" y="-2.54" length="middle"/>
<pin name="3" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="4" x="0" y="0" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="B3F-1020" prefix="S">
<description>&lt;b&gt;Switch Tact SPST,flat 5mm act,PC Pins Black Plunger Tactile Switch, SPST-NO 0.05 A@ 24 V dc 0.9mm&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="http://www.omron.com/ecb/products/pdf/en-b3f.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="B3F-1020" x="0" y="0"/>
</gates>
<devices>
<device name="" package="B3F1000">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Switch Tact SPST,flat 5mm act,PC Pins Black Plunger Tactile Switch, SPST-NO 0.05 A@ 24 V dc 0.9mm" constant="no"/>
<attribute name="HEIGHT" value="mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Omron Electronics" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="B3F-1020" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="653-B3F-1020" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Omron-Electronics/B3F-1020?qs=lK7M36XCk6J1%2FfWxwEHrqA%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="22-23-2021">
<description>&lt;Headers &amp; Wire Housings VERT PCB HDR 2P TIN FRICTION LOCK&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="SHDR2W87P0X254_1X2_493X635X110">
<description>&lt;b&gt;22-23-2021&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="0" y="0" drill="1.45" diameter="2.175" shape="square"/>
<pad name="2" x="2.54" y="0" drill="1.45" diameter="2.175"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.44" y1="-3.5" x2="-1.44" y2="3.6" width="0.05" layer="51"/>
<wire x1="-1.44" y1="3.6" x2="4.475" y2="3.6" width="0.05" layer="51"/>
<wire x1="4.475" y1="3.6" x2="4.475" y2="-3.5" width="0.05" layer="51"/>
<wire x1="4.475" y1="-3.5" x2="-1.44" y2="-3.5" width="0.05" layer="51"/>
<wire x1="-1.19" y1="-3.25" x2="-1.19" y2="3.35" width="0.1" layer="51"/>
<wire x1="-1.19" y1="3.35" x2="3.99" y2="3.35" width="0.1" layer="51"/>
<wire x1="3.99" y1="3.35" x2="3.99" y2="-3.25" width="0.1" layer="51"/>
<wire x1="3.99" y1="-3.25" x2="-1.19" y2="-3.25" width="0.1" layer="51"/>
<wire x1="0" y1="-3.25" x2="3.978" y2="-3.25" width="0.2" layer="21"/>
<wire x1="3.978" y1="-3.25" x2="3.978" y2="3.35" width="0.2" layer="21"/>
<wire x1="3.978" y1="3.35" x2="-1.4375" y2="3.35" width="0.2" layer="21"/>
<wire x1="-1.4375" y1="3.35" x2="-1.4375" y2="0" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="22-23-2021">
<wire x1="5.08" y1="2.54" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-5.08" x2="15.24" y2="2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-5.08" width="0.254" layer="94"/>
<text x="16.51" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="16.51" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" length="middle"/>
<pin name="2" x="0" y="-2.54" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="22-23-2021" prefix="J">
<description>&lt;b&gt;Headers &amp; Wire Housings VERT PCB HDR 2P TIN FRICTION LOCK&lt;/b&gt;&lt;p&gt;
Source: &lt;a href=""&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="22-23-2021" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SHDR2W87P0X254_1X2_493X635X110">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Headers &amp; Wire Housings VERT PCB HDR 2P TIN FRICTION LOCK" constant="no"/>
<attribute name="HEIGHT" value="11.05mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Molex" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="22-23-2021" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="538-22-23-2021" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Molex/22-23-2021?qs=ILqg114nvd4YKlRlbo3yMg%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ADP3338AKCZ-5-R7">
<description>&lt;Analog Devices ADP3338AKCZ-5-R7, LDO Voltage Regulator, 1A, 5 V +/-1.6%, 2.7  8 Vin, 3-Pin SOT-223&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="SOT230P700X180-4N">
<description>&lt;b&gt;SOT230P700X180-4N&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-3.2004" y="2.3114" dx="1.6256" dy="0.889" layer="1"/>
<smd name="2" x="-3.2004" y="0" dx="1.6256" dy="0.889" layer="1"/>
<smd name="3" x="-3.2004" y="-2.3114" dx="1.6256" dy="0.889" layer="1"/>
<smd name="4" x="3.2004" y="0" dx="3.175" dy="1.6256" layer="1" rot="R90"/>
<text x="-4.8006" y="3.556" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="-5.715" y="-5.8674" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.8542" y1="1.8796" x2="-1.8542" y2="2.7432" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="2.7432" x2="-3.6576" y2="2.7432" width="0.1524" layer="51"/>
<wire x1="-3.6576" y1="2.7432" x2="-3.6576" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="-3.6576" y1="1.8796" x2="-1.8542" y2="1.8796" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="-0.4318" x2="-1.8542" y2="0.4318" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="0.4318" x2="-3.6576" y2="0.4318" width="0.1524" layer="51"/>
<wire x1="-3.6576" y1="0.4318" x2="-3.6576" y2="-0.4318" width="0.1524" layer="51"/>
<wire x1="-3.6576" y1="-0.4318" x2="-1.8542" y2="-0.4318" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="-2.7432" x2="-1.8542" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="-1.8796" x2="-3.6576" y2="-1.8796" width="0.1524" layer="51"/>
<wire x1="-3.6576" y1="-1.8796" x2="-3.6576" y2="-2.7432" width="0.1524" layer="51"/>
<wire x1="-3.6576" y1="-2.7432" x2="-1.8542" y2="-2.7432" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="1.5748" x2="1.8542" y2="-1.5748" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="-1.5748" x2="3.6576" y2="-1.5748" width="0.1524" layer="51"/>
<wire x1="3.6576" y1="-1.5748" x2="3.6576" y2="1.6002" width="0.1524" layer="51"/>
<wire x1="3.6576" y1="1.6002" x2="1.8542" y2="1.5748" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="-3.3528" x2="1.8542" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="-3.3528" x2="1.8542" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="3.3528" x2="-1.8542" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="3.3528" x2="-1.8542" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="-3.3528" x2="1.8542" y2="-3.3528" width="0.1524" layer="21"/>
<wire x1="1.8542" y1="-3.3528" x2="1.8542" y2="3.3528" width="0.1524" layer="21"/>
<wire x1="1.8542" y1="3.3528" x2="-1.8542" y2="3.3528" width="0.1524" layer="21"/>
<wire x1="-1.8542" y1="3.3528" x2="-1.8542" y2="-3.3528" width="0.1524" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="ADP3338AKCZ-5-R7">
<wire x1="5.08" y1="2.54" x2="22.86" y2="2.54" width="0.254" layer="94"/>
<wire x1="22.86" y1="-7.62" x2="22.86" y2="2.54" width="0.254" layer="94"/>
<wire x1="22.86" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="24.13" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="24.13" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="GND" x="0" y="0" length="middle"/>
<pin name="OUT_2" x="0" y="-2.54" length="middle"/>
<pin name="IN" x="0" y="-5.08" length="middle"/>
<pin name="OUT" x="27.94" y="0" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ADP3338AKCZ-5-R7" prefix="IC">
<description>&lt;b&gt;Analog Devices ADP3338AKCZ-5-R7, LDO Voltage Regulator, 1A, 5 V +/-1.6%, 2.7  8 Vin, 3-Pin SOT-223&lt;/b&gt;&lt;p&gt;
Source: &lt;a href=""&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ADP3338AKCZ-5-R7" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT230P700X180-4N">
<connects>
<connect gate="G$1" pin="GND" pad="1"/>
<connect gate="G$1" pin="IN" pad="3"/>
<connect gate="G$1" pin="OUT" pad="4"/>
<connect gate="G$1" pin="OUT_2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Analog Devices ADP3338AKCZ-5-R7, LDO Voltage Regulator, 1A, 5 V +/-1.6%, 2.7  8 Vin, 3-Pin SOT-223" constant="no"/>
<attribute name="HEIGHT" value="mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Analog Devices" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ADP3338AKCZ-5-R7" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="584-ADP3338AKCZ-5-R7" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Analog-Devices/ADP3338AKCZ-5-R7?qs=WIvQP4zGangs6Tv%252BSE3hsA%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="C0805J104K1RACAUTO">
<description>&lt;SMD Auto X7R FO, Ceramic, 0.1 uF, 10%, 100 VDC, X7R, SMD, MLCC, Open Mode, Automotive Grade, 0805, 0.6 mm&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="CAPC2012X140N">
<description>&lt;b&gt;C0805 (1.4)&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.81" y="0" dx="1.57" dy="1.1" layer="1" rot="R90"/>
<smd name="2" x="0.81" y="0" dx="1.57" dy="1.1" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.51" y1="0.94" x2="1.51" y2="0.94" width="0.05" layer="51"/>
<wire x1="1.51" y1="0.94" x2="1.51" y2="-0.94" width="0.05" layer="51"/>
<wire x1="1.51" y1="-0.94" x2="-1.51" y2="-0.94" width="0.05" layer="51"/>
<wire x1="-1.51" y1="-0.94" x2="-1.51" y2="0.94" width="0.05" layer="51"/>
<wire x1="-1" y1="0.625" x2="1" y2="0.625" width="0.1" layer="51"/>
<wire x1="1" y1="0.625" x2="1" y2="-0.625" width="0.1" layer="51"/>
<wire x1="1" y1="-0.625" x2="-1" y2="-0.625" width="0.1" layer="51"/>
<wire x1="-1" y1="-0.625" x2="-1" y2="0.625" width="0.1" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="C0805J104K1RACAUTO">
<wire x1="5.588" y1="2.54" x2="5.588" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.588" y2="0" width="0.254" layer="94"/>
<wire x1="7.112" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<text x="8.89" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="8.89" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="12.7" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="C0805J104K1RACAUTO" prefix="C">
<description>&lt;b&gt;SMD Auto X7R FO, Ceramic, 0.1 uF, 10%, 100 VDC, X7R, SMD, MLCC, Open Mode, Automotive Grade, 0805, 0.6 mm&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://search.kemet.com/component-documentation/download/specsheet/C0805J104K1RACAUTO"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="C0805J104K1RACAUTO" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPC2012X140N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="SMD Auto X7R FO, Ceramic, 0.1 uF, 10%, 100 VDC, X7R, SMD, MLCC, Open Mode, Automotive Grade, 0805, 0.6 mm" constant="no"/>
<attribute name="HEIGHT" value="1.4mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="KEMET" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="C0805J104K1RACAUTO" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="0805YC106KAT2A">
<description>&lt;Multilayer Ceramic Capacitors MLCC - SMD/SMT 16V 10uF X7R 0805 10%&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="CAPC2012X94N">
<description>&lt;b&gt;0805-ren13&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.81" y="0" dx="1.47" dy="1.02" layer="1" rot="R90"/>
<smd name="2" x="0.81" y="0" dx="1.47" dy="1.02" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.47" y1="0.89" x2="1.47" y2="0.89" width="0.05" layer="51"/>
<wire x1="1.47" y1="0.89" x2="1.47" y2="-0.89" width="0.05" layer="51"/>
<wire x1="1.47" y1="-0.89" x2="-1.47" y2="-0.89" width="0.05" layer="51"/>
<wire x1="-1.47" y1="-0.89" x2="-1.47" y2="0.89" width="0.05" layer="51"/>
<wire x1="-1.005" y1="0.625" x2="1.005" y2="0.625" width="0.1" layer="51"/>
<wire x1="1.005" y1="0.625" x2="1.005" y2="-0.625" width="0.1" layer="51"/>
<wire x1="1.005" y1="-0.625" x2="-1.005" y2="-0.625" width="0.1" layer="51"/>
<wire x1="-1.005" y1="-0.625" x2="-1.005" y2="0.625" width="0.1" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="0805YC106KAT2A">
<wire x1="5.588" y1="2.54" x2="5.588" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.588" y2="0" width="0.254" layer="94"/>
<wire x1="7.112" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<text x="8.89" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="8.89" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="12.7" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="0805YC106KAT2A" prefix="C">
<description>&lt;b&gt;Multilayer Ceramic Capacitors MLCC - SMD/SMT 16V 10uF X7R 0805 10%&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.mouser.fr/datasheet/2/40/AVX_X7RDielectric_777024-1853642.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="0805YC106KAT2A" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPC2012X94N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Multilayer Ceramic Capacitors MLCC - SMD/SMT 16V 10uF X7R 0805 10%" constant="no"/>
<attribute name="HEIGHT" value="0.94mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Kyocera AVX" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="0805YC106KAT2A" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="581-0805YC106KAT2A" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/KYOCERA-AVX/0805YC106KAT2A?qs=3HJ2avRr9PKwMzeRMZhF2g%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="08053C334KAZ2A">
<description>&lt;AVX 330nF Multilayer Ceramic Capacitor (MLCC) 25 V 0805 SMT Max. Op. Temp. +125C&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="CAPC2012X152N">
<description>&lt;b&gt;0805_H=1.52&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.81" y="0" dx="1.47" dy="1.02" layer="1" rot="R90"/>
<smd name="2" x="0.81" y="0" dx="1.47" dy="1.02" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.47" y1="0.89" x2="1.47" y2="0.89" width="0.05" layer="51"/>
<wire x1="1.47" y1="0.89" x2="1.47" y2="-0.89" width="0.05" layer="51"/>
<wire x1="1.47" y1="-0.89" x2="-1.47" y2="-0.89" width="0.05" layer="51"/>
<wire x1="-1.47" y1="-0.89" x2="-1.47" y2="0.89" width="0.05" layer="51"/>
<wire x1="-1.005" y1="0.625" x2="1.005" y2="0.625" width="0.1" layer="51"/>
<wire x1="1.005" y1="0.625" x2="1.005" y2="-0.625" width="0.1" layer="51"/>
<wire x1="1.005" y1="-0.625" x2="-1.005" y2="-0.625" width="0.1" layer="51"/>
<wire x1="-1.005" y1="-0.625" x2="-1.005" y2="0.625" width="0.1" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="08053C334KAZ2A">
<wire x1="5.588" y1="2.54" x2="5.588" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.588" y2="0" width="0.254" layer="94"/>
<wire x1="7.112" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<text x="8.89" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="8.89" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="12.7" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="08053C334KAZ2A" prefix="C">
<description>&lt;b&gt;AVX 330nF Multilayer Ceramic Capacitor (MLCC) 25 V 0805 SMT Max. Op. Temp. +125C&lt;/b&gt;&lt;p&gt;
Source: &lt;a href=""&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="08053C334KAZ2A" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPC2012X152N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="AVX 330nF Multilayer Ceramic Capacitor (MLCC) 25 V 0805 SMT Max. Op. Temp. +125C" constant="no"/>
<attribute name="HEIGHT" value="1.52mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Kyocera AVX" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="08053C334KAZ2A" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="1N4148WS-HG3-08">
<description>&lt;Diodes - General Purpose, Power, Switching 1V Vf, 4pF; 25nA Ir SOD-323&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="SOD2713X115N">
<description>&lt;b&gt;SOD-323-2&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-1.162" y="0" dx="1.125" dy="0.5" layer="1"/>
<smd name="2" x="1.162" y="0" dx="1.125" dy="0.5" layer="1"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-2.025" y1="1.225" x2="2.025" y2="1.225" width="0.05" layer="51"/>
<wire x1="2.025" y1="1.225" x2="2.025" y2="-1.225" width="0.05" layer="51"/>
<wire x1="2.025" y1="-1.225" x2="-2.025" y2="-1.225" width="0.05" layer="51"/>
<wire x1="-2.025" y1="-1.225" x2="-2.025" y2="1.225" width="0.05" layer="51"/>
<wire x1="-0.888" y1="0.65" x2="0.888" y2="0.65" width="0.1" layer="51"/>
<wire x1="0.888" y1="0.65" x2="0.888" y2="-0.65" width="0.1" layer="51"/>
<wire x1="0.888" y1="-0.65" x2="-0.888" y2="-0.65" width="0.1" layer="51"/>
<wire x1="-0.888" y1="-0.65" x2="-0.888" y2="0.65" width="0.1" layer="51"/>
<wire x1="-0.888" y1="0.088" x2="-0.325" y2="0.65" width="0.1" layer="51"/>
<wire x1="-1.725" y1="0.65" x2="0.888" y2="0.65" width="0.2" layer="21"/>
<wire x1="-0.888" y1="-0.65" x2="0.888" y2="-0.65" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="1N4148WS-HG3-08">
<wire x1="5.08" y1="2.54" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.254" layer="94"/>
<wire x1="10.16" y1="0" x2="12.7" y2="0" width="0.254" layer="94"/>
<text x="11.43" y="5.08" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="11.43" y="2.54" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="K" x="0" y="0" visible="pad" length="short"/>
<pin name="A" x="15.24" y="0" visible="pad" length="short" rot="R180"/>
<polygon width="0.254" layer="94">
<vertex x="5.08" y="0"/>
<vertex x="10.16" y="2.54"/>
<vertex x="10.16" y="-2.54"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="1N4148WS-HG3-08" prefix="D">
<description>&lt;b&gt;Diodes - General Purpose, Power, Switching 1V Vf, 4pF; 25nA Ir SOD-323&lt;/b&gt;&lt;p&gt;
Source: &lt;a href=""&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="1N4148WS-HG3-08" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOD2713X115N">
<connects>
<connect gate="G$1" pin="A" pad="2"/>
<connect gate="G$1" pin="K" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Diodes - General Purpose, Power, Switching 1V Vf, 4pF; 25nA Ir SOD-323" constant="no"/>
<attribute name="HEIGHT" value="1.15mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Vishay" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="1N4148WS-HG3-08" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="78-1N4148WS-HG3-08" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Vishay-Semiconductors/1N4148WS-HG3-08?qs=MLItCLRbWsz%2FnO5zs5RZvA%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ERA-6ARW472V">
<description>&lt;Thin Film Resistors - SMD 0805 4.7Kohm 0.05% 10ppm AEC-Q200&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="ERA6AEB101V">
<description>&lt;b&gt;ERA6A&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-1.175" y="0" dx="1.15" dy="1.15" layer="1" rot="R90"/>
<smd name="2" x="1.175" y="0" dx="1.15" dy="1.15" layer="1" rot="R90"/>
<text x="-0.175" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="-0.175" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1" y1="0.625" x2="1" y2="0.625" width="0.1" layer="51"/>
<wire x1="1" y1="0.625" x2="1" y2="-0.625" width="0.1" layer="51"/>
<wire x1="1" y1="-0.625" x2="-1" y2="-0.625" width="0.1" layer="51"/>
<wire x1="-1" y1="-0.625" x2="-1" y2="0.625" width="0.1" layer="51"/>
<wire x1="-3.1" y1="1.625" x2="2.75" y2="1.625" width="0.1" layer="51"/>
<wire x1="2.75" y1="1.625" x2="2.75" y2="-1.625" width="0.1" layer="51"/>
<wire x1="2.75" y1="-1.625" x2="-3.1" y2="-1.625" width="0.1" layer="51"/>
<wire x1="-3.1" y1="-1.625" x2="-3.1" y2="1.625" width="0.1" layer="51"/>
<wire x1="-2.5" y1="0.1" x2="-2.5" y2="0.1" width="0.2" layer="21"/>
<wire x1="-2.5" y1="0.1" x2="-2.5" y2="-0.1" width="0.2" layer="21" curve="180"/>
<wire x1="-2.5" y1="-0.1" x2="-2.5" y2="-0.1" width="0.2" layer="21"/>
<wire x1="-2.5" y1="-0.1" x2="-2.5" y2="0.1" width="0.2" layer="21" curve="180"/>
<wire x1="-0.2" y1="-0.625" x2="0.2" y2="-0.625" width="0.2" layer="21"/>
<wire x1="-0.2" y1="0.625" x2="0.2" y2="0.625" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="ERA-6ARW472V">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ERA-6ARW472V" prefix="R">
<description>&lt;b&gt;Thin Film Resistors - SMD 0805 4.7Kohm 0.05% 10ppm AEC-Q200&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://industrial.panasonic.com/cdbs/www-data/pdf/RDM0000/AOA0000C307.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ERA-6ARW472V" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ERA6AEB101V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Thin Film Resistors - SMD 0805 4.7Kohm 0.05% 10ppm AEC-Q200" constant="no"/>
<attribute name="HEIGHT" value="0.6mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Panasonic" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ERA-6ARW472V" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="667-ERA-6ARW472V" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Panasonic/ERA-6ARW472V?qs=ob%252BdNz2%252BYEgbYp9qzrbNPA%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ERA-6ARW473V">
<description>&lt;Thin Film Resistors - SMD 0805 47Kohm 0.05% 10ppm AEC-Q200&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="ERA6AEB101V">
<description>&lt;b&gt;ERA6A&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-1.175" y="0" dx="1.15" dy="1.15" layer="1" rot="R90"/>
<smd name="2" x="1.175" y="0" dx="1.15" dy="1.15" layer="1" rot="R90"/>
<text x="-0.175" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="-0.175" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1" y1="0.625" x2="1" y2="0.625" width="0.1" layer="51"/>
<wire x1="1" y1="0.625" x2="1" y2="-0.625" width="0.1" layer="51"/>
<wire x1="1" y1="-0.625" x2="-1" y2="-0.625" width="0.1" layer="51"/>
<wire x1="-1" y1="-0.625" x2="-1" y2="0.625" width="0.1" layer="51"/>
<wire x1="-3.1" y1="1.625" x2="2.75" y2="1.625" width="0.1" layer="51"/>
<wire x1="2.75" y1="1.625" x2="2.75" y2="-1.625" width="0.1" layer="51"/>
<wire x1="2.75" y1="-1.625" x2="-3.1" y2="-1.625" width="0.1" layer="51"/>
<wire x1="-3.1" y1="-1.625" x2="-3.1" y2="1.625" width="0.1" layer="51"/>
<wire x1="-2.5" y1="0.1" x2="-2.5" y2="0.1" width="0.2" layer="21"/>
<wire x1="-2.5" y1="0.1" x2="-2.5" y2="-0.1" width="0.2" layer="21" curve="180"/>
<wire x1="-2.5" y1="-0.1" x2="-2.5" y2="-0.1" width="0.2" layer="21"/>
<wire x1="-2.5" y1="-0.1" x2="-2.5" y2="0.1" width="0.2" layer="21" curve="180"/>
<wire x1="-0.2" y1="-0.625" x2="0.2" y2="-0.625" width="0.2" layer="21"/>
<wire x1="-0.2" y1="0.625" x2="0.2" y2="0.625" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="ERA-6ARW473V">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ERA-6ARW473V" prefix="R">
<description>&lt;b&gt;Thin Film Resistors - SMD 0805 47Kohm 0.05% 10ppm AEC-Q200&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://industrial.panasonic.com/cdbs/www-data/pdf/RDM0000/AOA0000C307.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="ERA-6ARW473V" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ERA6AEB101V">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Thin Film Resistors - SMD 0805 47Kohm 0.05% 10ppm AEC-Q200" constant="no"/>
<attribute name="HEIGHT" value="0.6mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Panasonic" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="ERA-6ARW473V" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="667-ERA-6ARW473V" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.co.uk/ProductDetail/Panasonic/ERA-6ARW473V?qs=ob%252BdNz2%252BYEhPt1EjoyLPGQ%3D%3D" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="MBAST21GBC7475KTCA01">
<description>&lt;4.7 F +/-10% 25V Ceramic Capacitor X7S 0805 (2012 Metric)&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="CAPC2114X145N">
<description>&lt;b&gt;0805/2012_2024&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.84" y="0" dx="1.49" dy="0.96" layer="1" rot="R90"/>
<smd name="2" x="0.84" y="0" dx="1.49" dy="0.96" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.47" y1="0.9" x2="1.47" y2="0.9" width="0.05" layer="51"/>
<wire x1="1.47" y1="0.9" x2="1.47" y2="-0.9" width="0.05" layer="51"/>
<wire x1="1.47" y1="-0.9" x2="-1.47" y2="-0.9" width="0.05" layer="51"/>
<wire x1="-1.47" y1="-0.9" x2="-1.47" y2="0.9" width="0.05" layer="51"/>
<wire x1="-1.05" y1="0.675" x2="1.05" y2="0.675" width="0.1" layer="51"/>
<wire x1="1.05" y1="0.675" x2="1.05" y2="-0.675" width="0.1" layer="51"/>
<wire x1="1.05" y1="-0.675" x2="-1.05" y2="-0.675" width="0.1" layer="51"/>
<wire x1="-1.05" y1="-0.675" x2="-1.05" y2="0.675" width="0.1" layer="51"/>
<wire x1="0" y1="0.575" x2="0" y2="-0.575" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="MBAST21GBC7475KTCA01">
<wire x1="5.588" y1="2.54" x2="5.588" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.588" y2="0" width="0.254" layer="94"/>
<wire x1="7.112" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<text x="8.89" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="8.89" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="12.7" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MBAST21GBC7475KTCA01" prefix="C">
<description>&lt;b&gt;4.7 F +/-10% 25V Ceramic Capacitor X7S 0805 (2012 Metric)&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://ds.yuden.co.jp/TYCOMPAS/eu/detail?pn=MBAST21GBC7475KTCA01&amp;u=I"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="MBAST21GBC7475KTCA01" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPC2114X145N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="4.7 F +/-10% 25V Ceramic Capacitor X7S 0805 (2012 Metric)" constant="no"/>
<attribute name="HEIGHT" value="1.45mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="TAIYO YUDEN" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="MBAST21GBC7475KTCA01" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="RNCE0805BTE10K0">
<description>&lt;Thin Film Resistors - SMD 10KOhms 0805 25ppm 1/8W 150V 0.1% Hi Temp/Stability&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="RESC2012X65N">
<description>&lt;b&gt;RNCE0805&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.95" y="0" dx="1.45" dy="1" layer="1" rot="R90"/>
<smd name="2" x="0.95" y="0" dx="1.45" dy="1" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.7" y1="1" x2="1.7" y2="1" width="0.05" layer="51"/>
<wire x1="1.7" y1="1" x2="1.7" y2="-1" width="0.05" layer="51"/>
<wire x1="1.7" y1="-1" x2="-1.7" y2="-1" width="0.05" layer="51"/>
<wire x1="-1.7" y1="-1" x2="-1.7" y2="1" width="0.05" layer="51"/>
<wire x1="-1" y1="0.625" x2="1" y2="0.625" width="0.1" layer="51"/>
<wire x1="1" y1="0.625" x2="1" y2="-0.625" width="0.1" layer="51"/>
<wire x1="1" y1="-0.625" x2="-1" y2="-0.625" width="0.1" layer="51"/>
<wire x1="-1" y1="-0.625" x2="-1" y2="0.625" width="0.1" layer="51"/>
<wire x1="0" y1="0.525" x2="0" y2="-0.525" width="0.2" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="RNCE0805BTE10K0">
<wire x1="5.08" y1="1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="12.7" y1="-1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.254" layer="94"/>
<text x="13.97" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="13.97" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="17.78" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RNCE0805BTE10K0" prefix="R">
<description>&lt;b&gt;Thin Film Resistors - SMD 10KOhms 0805 25ppm 1/8W 150V 0.1% Hi Temp/Stability&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://www.mouser.sg/datasheet/2/418/9/ENG_DS_9_1773463_9_B-3355380.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="RNCE0805BTE10K0" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RESC2012X65N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Thin Film Resistors - SMD 10KOhms 0805 25ppm 1/8W 150V 0.1% Hi Temp/Stability" constant="no"/>
<attribute name="HEIGHT" value="0.65mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Stackpole Electronics, Inc." constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="RNCE0805BTE10K0" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="08055A300JAT2A">
<description>&lt;Multilayer Ceramic Capacitors MLCC - SMD/SMT 50V 30pF C0G 0805 5%&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="CAPC2012X94N">
<description>&lt;b&gt;0805 (0.94)&lt;/b&gt;&lt;br&gt;
</description>
<smd name="1" x="-0.81" y="0" dx="1.47" dy="1.02" layer="1" rot="R90"/>
<smd name="2" x="0.81" y="0" dx="1.47" dy="1.02" layer="1" rot="R90"/>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<wire x1="-1.47" y1="0.89" x2="1.47" y2="0.89" width="0.05" layer="51"/>
<wire x1="1.47" y1="0.89" x2="1.47" y2="-0.89" width="0.05" layer="51"/>
<wire x1="1.47" y1="-0.89" x2="-1.47" y2="-0.89" width="0.05" layer="51"/>
<wire x1="-1.47" y1="-0.89" x2="-1.47" y2="0.89" width="0.05" layer="51"/>
<wire x1="-1.005" y1="0.625" x2="1.005" y2="0.625" width="0.1" layer="51"/>
<wire x1="1.005" y1="0.625" x2="1.005" y2="-0.625" width="0.1" layer="51"/>
<wire x1="1.005" y1="-0.625" x2="-1.005" y2="-0.625" width="0.1" layer="51"/>
<wire x1="-1.005" y1="-0.625" x2="-1.005" y2="0.625" width="0.1" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="08055A300JAT2A">
<wire x1="5.588" y1="2.54" x2="5.588" y2="-2.54" width="0.254" layer="94"/>
<wire x1="7.112" y1="2.54" x2="7.112" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="0" x2="5.588" y2="0" width="0.254" layer="94"/>
<wire x1="7.112" y1="0" x2="7.62" y2="0" width="0.254" layer="94"/>
<text x="8.89" y="6.35" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="8.89" y="3.81" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="1" x="0" y="0" visible="pad" length="middle"/>
<pin name="2" x="12.7" y="0" visible="pad" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="08055A300JAT2A" prefix="C">
<description>&lt;b&gt;Multilayer Ceramic Capacitors MLCC - SMD/SMT 50V 30pF C0G 0805 5%&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://componentsearchengine.com/Datasheets/1/08055A300JAT2A.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="08055A300JAT2A" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CAPC2012X94N">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value="Multilayer Ceramic Capacitors MLCC - SMD/SMT 50V 30pF C0G 0805 5%" constant="no"/>
<attribute name="HEIGHT" value="0.94mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Kyocera AVX" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="08055A300JAT2A" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="581-08055A300J" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="https://www.mouser.com/Search/Refine.aspx?Keyword=581-08055A300J" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="MICROCHIP" library="DSPIC33FJ64MC804-H_PT" deviceset="DSPIC33FJ64MC804-H/PT" device=""/>
<part name="JP1(GP2Y0A51SK0F)" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X3" device="" package3d_urn="urn:adsk.eagle:package:22458/2"/>
<part name="JP2(GP2Y0A51SK0F)" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X3" device="" package3d_urn="urn:adsk.eagle:package:22458/2"/>
<part name="JP3(GP2Y0A51SK0F)" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X3" device="" package3d_urn="urn:adsk.eagle:package:22458/2"/>
<part name="P+4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="VCC" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND4" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND5" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND6" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND9" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND13" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND19" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND20" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PROGRAMMER_PO" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X6" device="" package3d_urn="urn:adsk.eagle:package:22472/2"/>
<part name="GND21" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND22" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND23" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="MOTOR_R" library="1761681-1" deviceset="1761681-1" device=""/>
<part name="MOTOR_L" library="1761681-1" deviceset="1761681-1" device=""/>
<part name="GND26" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND27" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="LINEAR_REGULATOR_3.3V" library="UA78M33CDCYG3" deviceset="UA78M33CDCYG3" device=""/>
<part name="HBRIDGE" library="TB6612FNG_C_8_EL" deviceset="TB6612FNG,C,8,EL" device=""/>
<part name="GND16" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND17" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND18" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND25" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND28" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="Y1" library="ABM8-20.000MHZ-B2-T" deviceset="ABM8-20.000MHZ-B2-T" device=""/>
<part name="GND12" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND30" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND31" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND32" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND29" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND34" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND35" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND14" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND15" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND24" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND36" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND37" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="BLUETOOTH" library="RN4871-I_RM130" deviceset="RN4871-I_RM130" device=""/>
<part name="GND38" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND39" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND40" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND41" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND42" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND43" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND44" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND45" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND46" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="LED1" library="APT3216LSECK_J3-PRV" deviceset="APT3216LSECK_J3-PRV" device=""/>
<part name="LED2" library="APT3216LSECK_J3-PRV" deviceset="APT3216LSECK_J3-PRV" device=""/>
<part name="LED3" library="APT3216LSECK_J3-PRV" deviceset="APT3216LSECK_J3-PRV" device=""/>
<part name="LED4" library="APT3216LSECK_J3-PRV" deviceset="APT3216LSECK_J3-PRV" device=""/>
<part name="GND47" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="S1" library="B3F-1020" deviceset="B3F-1020" device=""/>
<part name="S2" library="B3F-1020" deviceset="B3F-1020" device=""/>
<part name="J1" library="22-23-2021" deviceset="22-23-2021" device=""/>
<part name="IC1" library="ADP3338AKCZ-5-R7" deviceset="ADP3338AKCZ-5-R7" device=""/>
<part name="C29" library="C0805J104K1RACAUTO" deviceset="C0805J104K1RACAUTO" device=""/>
<part name="C30" library="C0805J104K1RACAUTO" deviceset="C0805J104K1RACAUTO" device="" value="1µF"/>
<part name="C31" library="C0805J104K1RACAUTO" deviceset="C0805J104K1RACAUTO" device=""/>
<part name="GND48" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND49" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="C7" library="0805YC106KAT2A" deviceset="0805YC106KAT2A" device=""/>
<part name="C12" library="0805YC106KAT2A" deviceset="0805YC106KAT2A" device=""/>
<part name="C9" library="08053C334KAZ2A" deviceset="08053C334KAZ2A" device=""/>
<part name="C14" library="C0805J104K1RACAUTO" deviceset="C0805J104K1RACAUTO" device=""/>
<part name="C23" library="C0805J104K1RACAUTO" deviceset="C0805J104K1RACAUTO" device=""/>
<part name="C28" library="C0805J104K1RACAUTO" deviceset="C0805J104K1RACAUTO" device=""/>
<part name="C35" library="C0805J104K1RACAUTO" deviceset="C0805J104K1RACAUTO" device=""/>
<part name="C36" library="C0805J104K1RACAUTO" deviceset="C0805J104K1RACAUTO" device=""/>
<part name="C37" library="C0805J104K1RACAUTO" deviceset="C0805J104K1RACAUTO" device=""/>
<part name="C38" library="C0805J104K1RACAUTO" deviceset="C0805J104K1RACAUTO" device=""/>
<part name="C39" library="C0805J104K1RACAUTO" deviceset="C0805J104K1RACAUTO" device=""/>
<part name="C40" library="C0805J104K1RACAUTO" deviceset="C0805J104K1RACAUTO" device=""/>
<part name="C41" library="C0805J104K1RACAUTO" deviceset="C0805J104K1RACAUTO" device=""/>
<part name="C42" library="C0805J104K1RACAUTO" deviceset="C0805J104K1RACAUTO" device=""/>
<part name="C43" library="C0805J104K1RACAUTO" deviceset="C0805J104K1RACAUTO" device=""/>
<part name="C44" library="C0805J104K1RACAUTO" deviceset="C0805J104K1RACAUTO" device=""/>
<part name="C1" library="C0805J104K1RACAUTO" deviceset="C0805J104K1RACAUTO" device=""/>
<part name="D1" library="1N4148WS-HG3-08" deviceset="1N4148WS-HG3-08" device=""/>
<part name="R12" library="ERA-6ARW472V" deviceset="ERA-6ARW472V" device=""/>
<part name="R13" library="ERA-6ARW472V" deviceset="ERA-6ARW472V" device=""/>
<part name="R14" library="ERA-6ARW472V" deviceset="ERA-6ARW472V" device=""/>
<part name="R1" library="ERA-6ARW473V" deviceset="ERA-6ARW473V" device=""/>
<part name="C4" library="MBAST21GBC7475KTCA01" deviceset="MBAST21GBC7475KTCA01" device=""/>
<part name="R6" library="RNCE0805BTE10K0" deviceset="RNCE0805BTE10K0" device=""/>
<part name="R10" library="RNCE0805BTE10K0" deviceset="RNCE0805BTE10K0" device=""/>
<part name="R15" library="RNCE0805BTE10K0" deviceset="RNCE0805BTE10K0" device=""/>
<part name="C2" library="08055A300JAT2A" deviceset="08055A300JAT2A" device=""/>
<part name="C3" library="08055A300JAT2A" deviceset="08055A300JAT2A" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="MICROCHIP" gate="A" x="-63.5" y="25.4" smashed="yes">
<attribute name="NAME" x="25.7556" y="16.7386" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="17.5006" y="11.6586" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="JP1(GP2Y0A51SK0F)" gate="A" x="-40.64" y="-63.5" smashed="yes">
<attribute name="NAME" x="-46.99" y="-57.785" size="1.778" layer="95"/>
<attribute name="VALUE" x="-46.99" y="-71.12" size="1.778" layer="96"/>
</instance>
<instance part="JP2(GP2Y0A51SK0F)" gate="A" x="12.7" y="-63.5" smashed="yes">
<attribute name="NAME" x="6.35" y="-57.785" size="1.778" layer="95"/>
<attribute name="VALUE" x="6.35" y="-71.12" size="1.778" layer="96"/>
</instance>
<instance part="JP3(GP2Y0A51SK0F)" gate="A" x="60.96" y="-63.5" smashed="yes">
<attribute name="NAME" x="54.61" y="-57.785" size="1.778" layer="95"/>
<attribute name="VALUE" x="54.61" y="-71.12" size="1.778" layer="96"/>
</instance>
<instance part="P+4" gate="VCC" x="63.5" y="-66.04" smashed="yes">
<attribute name="VALUE" x="60.96" y="-68.58" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND1" gate="1" x="-27.94" y="-78.74" smashed="yes">
<attribute name="VALUE" x="-30.48" y="-81.28" size="1.778" layer="96"/>
</instance>
<instance part="GND4" gate="1" x="228.6" y="2.54" smashed="yes" rot="R90">
<attribute name="VALUE" x="231.14" y="0" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="GND5" gate="1" x="187.96" y="5.08" smashed="yes" rot="R270">
<attribute name="VALUE" x="185.42" y="7.62" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="GND6" gate="1" x="22.86" y="-78.74" smashed="yes">
<attribute name="VALUE" x="20.32" y="-81.28" size="1.778" layer="96"/>
</instance>
<instance part="GND9" gate="1" x="73.66" y="-78.74" smashed="yes">
<attribute name="VALUE" x="71.12" y="-81.28" size="1.778" layer="96"/>
</instance>
<instance part="GND13" gate="1" x="121.92" y="55.88" smashed="yes">
<attribute name="VALUE" x="119.38" y="53.34" size="1.778" layer="96"/>
</instance>
<instance part="GND19" gate="1" x="-215.9" y="-66.04" smashed="yes">
<attribute name="VALUE" x="-218.44" y="-71.12" size="1.778" layer="96"/>
</instance>
<instance part="GND20" gate="1" x="-279.4" y="0" smashed="yes" rot="R180">
<attribute name="VALUE" x="-276.86" y="2.54" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="PROGRAMMER_PO" gate="A" x="-172.72" y="-10.16" smashed="yes" rot="R180">
<attribute name="NAME" x="-158.75" y="1.905" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-166.37" y="0" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="GND21" gate="1" x="-124.46" y="-88.9" smashed="yes">
<attribute name="VALUE" x="-127" y="-91.44" size="1.778" layer="96"/>
</instance>
<instance part="GND22" gate="1" x="-91.44" y="10.16" smashed="yes" rot="R270">
<attribute name="VALUE" x="-93.98" y="12.7" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="GND23" gate="1" x="-134.62" y="-15.24" smashed="yes">
<attribute name="VALUE" x="-137.16" y="-17.78" size="1.778" layer="96"/>
</instance>
<instance part="MOTOR_R" gate="G$1" x="254" y="88.9" smashed="yes">
<attribute name="NAME" x="257.81" y="93.98" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="257.81" y="78.74" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="MOTOR_L" gate="G$1" x="254" y="63.5" smashed="yes">
<attribute name="NAME" x="257.81" y="68.58" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="257.81" y="53.34" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="GND26" gate="1" x="60.96" y="48.26" smashed="yes">
<attribute name="VALUE" x="58.42" y="45.72" size="1.778" layer="96"/>
</instance>
<instance part="GND27" gate="1" x="40.64" y="48.26" smashed="yes">
<attribute name="VALUE" x="38.1" y="45.72" size="1.778" layer="96"/>
</instance>
<instance part="LINEAR_REGULATOR_3.3V" gate="G$1" x="-259.08" y="-45.72" smashed="yes">
<attribute name="NAME" x="-224.79" y="-40.64" size="1.778" layer="95" rot="R180" align="center-left"/>
<attribute name="VALUE" x="-229.87" y="-55.88" size="1.778" layer="96" rot="R180" align="center-left"/>
</instance>
<instance part="HBRIDGE" gate="G$1" x="152.4" y="86.36" smashed="yes">
<attribute name="NAME" x="161.29" y="91.44" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="158.75" y="53.34" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="GND16" gate="1" x="144.78" y="63.5" smashed="yes" rot="R270">
<attribute name="VALUE" x="137.16" y="63.5" size="1.778" layer="96"/>
</instance>
<instance part="GND17" gate="1" x="144.78" y="78.74" smashed="yes" rot="R270">
<attribute name="VALUE" x="137.16" y="78.74" size="1.778" layer="96"/>
</instance>
<instance part="GND18" gate="1" x="193.04" y="71.12" smashed="yes" rot="R90">
<attribute name="VALUE" x="195.58" y="71.12" size="1.778" layer="96"/>
</instance>
<instance part="GND25" gate="1" x="251.46" y="60.96" smashed="yes" rot="R270">
<attribute name="VALUE" x="243.84" y="60.96" size="1.778" layer="96"/>
</instance>
<instance part="GND28" gate="1" x="251.46" y="86.36" smashed="yes" rot="R270">
<attribute name="VALUE" x="243.84" y="86.36" size="1.778" layer="96"/>
</instance>
<instance part="Y1" gate="G$1" x="193.04" y="5.08" smashed="yes">
<attribute name="NAME" x="207.01" y="12.7" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="194.31" y="10.16" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="GND12" gate="1" x="-254" y="-5.08" smashed="yes" rot="R180">
<attribute name="VALUE" x="-251.46" y="-2.54" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="GND30" gate="1" x="-5.08" y="-55.88" smashed="yes" rot="R90">
<attribute name="VALUE" x="-2.54" y="-58.42" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND31" gate="1" x="45.72" y="-55.88" smashed="yes" rot="R90">
<attribute name="VALUE" x="48.26" y="-58.42" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND32" gate="1" x="96.52" y="-55.88" smashed="yes" rot="R90">
<attribute name="VALUE" x="99.06" y="-58.42" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND29" gate="1" x="17.78" y="48.26" smashed="yes">
<attribute name="VALUE" x="15.24" y="45.72" size="1.778" layer="96"/>
</instance>
<instance part="GND34" gate="1" x="-215.9" y="-45.72" smashed="yes" rot="R90">
<attribute name="VALUE" x="-213.36" y="-45.72" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="GND35" gate="1" x="-264.16" y="-48.26" smashed="yes" rot="R270">
<attribute name="VALUE" x="-266.7" y="-45.72" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="GND14" gate="1" x="-152.4" y="-12.7" smashed="yes" rot="R90">
<attribute name="VALUE" x="-149.86" y="-15.24" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND15" gate="1" x="-78.74" y="-12.7" smashed="yes" rot="R270">
<attribute name="VALUE" x="-81.28" y="-10.16" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="GND24" gate="1" x="-68.58" y="12.7" smashed="yes" rot="R270">
<attribute name="VALUE" x="-71.12" y="15.24" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="GND36" gate="1" x="129.54" y="12.7" smashed="yes" rot="R90">
<attribute name="VALUE" x="132.08" y="10.16" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND37" gate="1" x="129.54" y="-12.7" smashed="yes" rot="R90">
<attribute name="VALUE" x="132.08" y="-15.24" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="BLUETOOTH" gate="G$1" x="-228.6" y="71.12" smashed="yes">
<attribute name="NAME" x="-219.71" y="78.74" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-222.25" y="76.2" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="GND38" gate="1" x="-233.68" y="68.58" smashed="yes" rot="R270">
<attribute name="VALUE" x="-236.22" y="71.12" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="GND39" gate="1" x="-190.5" y="60.96" smashed="yes" rot="R90">
<attribute name="VALUE" x="-187.96" y="58.42" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND40" gate="1" x="236.22" y="73.66" smashed="yes" rot="R90">
<attribute name="VALUE" x="238.76" y="73.66" size="1.778" layer="96"/>
</instance>
<instance part="GND41" gate="1" x="312.42" y="81.28" smashed="yes">
<attribute name="VALUE" x="312.42" y="78.74" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="GND42" gate="1" x="312.42" y="53.34" smashed="yes">
<attribute name="VALUE" x="312.42" y="50.8" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="GND43" gate="1" x="-185.42" y="38.1" smashed="yes">
<attribute name="VALUE" x="-185.42" y="35.56" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="GND44" gate="1" x="160.02" y="-35.56" smashed="yes">
<attribute name="VALUE" x="157.48" y="-38.1" size="1.778" layer="96"/>
</instance>
<instance part="GND45" gate="1" x="154.94" y="33.02" smashed="yes" rot="R180">
<attribute name="VALUE" x="157.48" y="35.56" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="GND46" gate="1" x="-83.82" y="-33.02" smashed="yes">
<attribute name="VALUE" x="-86.36" y="-35.56" size="1.778" layer="96"/>
</instance>
<instance part="LED1" gate="G$1" x="-121.92" y="-27.94" smashed="yes" rot="R270">
<attribute name="NAME" x="-113.03" y="-40.64" size="1.778" layer="95" rot="R270"/>
<attribute name="VALUE" x="-115.57" y="-40.64" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="LED2" gate="G$1" x="60.96" y="53.34" smashed="yes" rot="R90">
<attribute name="NAME" x="54.61" y="58.42" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="67.31" y="48.26" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="LED3" gate="G$1" x="40.64" y="53.34" smashed="yes" rot="R90">
<attribute name="NAME" x="34.29" y="58.42" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="46.99" y="45.72" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="LED4" gate="G$1" x="17.78" y="53.34" smashed="yes" rot="R90">
<attribute name="NAME" x="11.43" y="55.88" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="24.13" y="45.72" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="GND47" gate="1" x="-160.02" y="48.26" smashed="yes">
<attribute name="VALUE" x="-160.02" y="45.72" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="S1" gate="G$1" x="-124.46" y="-78.74" smashed="yes" rot="R90">
<attribute name="NAME" x="-129.54" y="-69.85" size="1.778" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="-116.84" y="-77.47" size="1.778" layer="96" rot="R90" align="center-left"/>
</instance>
<instance part="S2" gate="G$1" x="-137.16" y="12.7" smashed="yes" rot="R90">
<attribute name="NAME" x="-142.24" y="21.59" size="1.778" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="-129.54" y="16.51" size="1.778" layer="96" rot="R90" align="center-left"/>
</instance>
<instance part="J1" gate="G$1" x="-284.48" y="-10.16" smashed="yes" rot="R180">
<attribute name="NAME" x="-300.99" y="-17.78" size="1.778" layer="95" rot="R180" align="center-left"/>
<attribute name="VALUE" x="-300.99" y="-15.24" size="1.778" layer="96" rot="R180" align="center-left"/>
</instance>
<instance part="IC1" gate="G$1" x="-254" y="-10.16" smashed="yes">
<attribute name="NAME" x="-229.87" y="-2.54" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-229.87" y="-5.08" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C29" gate="G$1" x="-213.36" y="-12.7" smashed="yes" rot="R270">
<attribute name="NAME" x="-207.01" y="-21.59" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="C30" gate="G$1" x="-264.16" y="-12.7" smashed="yes" rot="R270">
<attribute name="NAME" x="-257.81" y="-21.59" size="1.778" layer="95" rot="R90" align="center-left"/>
</instance>
<instance part="C31" gate="G$1" x="-160.02" y="66.04" smashed="yes" rot="R270">
<attribute name="NAME" x="-153.67" y="57.15" size="1.778" layer="95" rot="R270" align="center-left"/>
</instance>
<instance part="GND48" gate="1" x="-264.16" y="-30.48" smashed="yes">
<attribute name="VALUE" x="-266.7" y="-33.02" size="1.778" layer="96"/>
</instance>
<instance part="GND49" gate="1" x="-213.36" y="-30.48" smashed="yes">
<attribute name="VALUE" x="-215.9" y="-33.02" size="1.778" layer="96"/>
</instance>
<instance part="C7" gate="G$1" x="121.92" y="73.66" smashed="yes" rot="R270">
<attribute name="NAME" x="128.27" y="69.85" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="125.73" y="77.47" size="1.778" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="C12" gate="G$1" x="114.3" y="73.66" smashed="yes" rot="R270">
<attribute name="NAME" x="107.95" y="67.31" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="110.49" y="74.93" size="1.778" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="C9" gate="G$1" x="-271.78" y="-48.26" smashed="yes" rot="R270">
<attribute name="NAME" x="-278.13" y="-52.07" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="-275.59" y="-44.45" size="1.778" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="C14" gate="G$1" x="-180.34" y="-55.88" smashed="yes" rot="R270">
<attribute name="NAME" x="-173.99" y="-64.77" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="-176.53" y="-64.77" size="1.778" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="C23" gate="G$1" x="-203.2" y="-55.88" smashed="yes" rot="R270">
<attribute name="NAME" x="-196.85" y="-64.77" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="-199.39" y="-64.77" size="1.778" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="C28" gate="G$1" x="-193.04" y="-55.88" smashed="yes" rot="R270">
<attribute name="NAME" x="-186.69" y="-64.77" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="-189.23" y="-64.77" size="1.778" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="C35" gate="G$1" x="-22.86" y="-55.88" smashed="yes">
<attribute name="NAME" x="-13.97" y="-49.53" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-13.97" y="-52.07" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C36" gate="G$1" x="27.94" y="-55.88" smashed="yes">
<attribute name="NAME" x="36.83" y="-49.53" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="36.83" y="-52.07" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C37" gate="G$1" x="78.74" y="-55.88" smashed="yes">
<attribute name="NAME" x="87.63" y="-49.53" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="87.63" y="-52.07" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C38" gate="G$1" x="-83.82" y="-15.24" smashed="yes" rot="R270">
<attribute name="NAME" x="-77.47" y="-24.13" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="-80.01" y="-24.13" size="1.778" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="C39" gate="G$1" x="154.94" y="15.24" smashed="yes" rot="R90">
<attribute name="NAME" x="148.59" y="24.13" size="1.778" layer="95" rot="R90" align="center-left"/>
<attribute name="VALUE" x="151.13" y="24.13" size="1.778" layer="96" rot="R90" align="center-left"/>
</instance>
<instance part="C40" gate="G$1" x="160.02" y="-17.78" smashed="yes" rot="R270">
<attribute name="NAME" x="166.37" y="-26.67" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="163.83" y="-26.67" size="1.778" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="C41" gate="G$1" x="-106.68" y="-17.78" smashed="yes">
<attribute name="NAME" x="-102.87" y="-13.97" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-115.57" y="-21.59" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C42" gate="G$1" x="210.82" y="73.66" smashed="yes">
<attribute name="NAME" x="219.71" y="80.01" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="219.71" y="77.47" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C43" gate="G$1" x="294.64" y="83.82" smashed="yes">
<attribute name="NAME" x="303.53" y="90.17" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="303.53" y="87.63" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C44" gate="G$1" x="294.64" y="55.88" smashed="yes">
<attribute name="NAME" x="303.53" y="62.23" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="303.53" y="59.69" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C1" gate="G$1" x="-185.42" y="55.88" smashed="yes" rot="R270">
<attribute name="NAME" x="-179.07" y="46.99" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="-181.61" y="46.99" size="1.778" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="D1" gate="G$1" x="-144.78" y="-53.34" smashed="yes" rot="R180">
<attribute name="NAME" x="-151.13" y="-58.42" size="1.778" layer="95" rot="R180" align="center-left"/>
<attribute name="VALUE" x="-140.97" y="-48.26" size="1.778" layer="96" rot="R180" align="center-left"/>
</instance>
<instance part="R12" gate="G$1" x="-134.62" y="7.62" smashed="yes" rot="R270">
<attribute name="NAME" x="-128.27" y="-6.35" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="-130.81" y="-6.35" size="1.778" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="R13" gate="G$1" x="-193.04" y="63.5" smashed="yes">
<attribute name="NAME" x="-184.15" y="67.31" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-186.69" y="62.23" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R14" gate="G$1" x="-160.02" y="88.9" smashed="yes" rot="R270">
<attribute name="NAME" x="-153.67" y="74.93" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="-156.21" y="74.93" size="1.778" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="R1" gate="G$1" x="-142.24" y="-53.34" smashed="yes">
<attribute name="NAME" x="-133.35" y="-49.53" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="-143.51" y="-57.15" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C4" gate="G$1" x="-86.36" y="10.16" smashed="yes">
<attribute name="VALUE" x="-77.47" y="13.97" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="R6" gate="G$1" x="60.96" y="88.9" smashed="yes" rot="R270">
<attribute name="NAME" x="67.31" y="74.93" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="64.77" y="74.93" size="1.778" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="R10" gate="G$1" x="40.64" y="88.9" smashed="yes" rot="R270">
<attribute name="NAME" x="46.99" y="74.93" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="44.45" y="74.93" size="1.778" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="R15" gate="G$1" x="17.78" y="88.9" smashed="yes" rot="R270">
<attribute name="NAME" x="24.13" y="74.93" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="21.59" y="74.93" size="1.778" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="C2" gate="G$1" x="228.6" y="15.24" smashed="yes">
<attribute name="NAME" x="237.49" y="21.59" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="237.49" y="19.05" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="C3" gate="G$1" x="190.5" y="-2.54" smashed="yes" rot="R270">
<attribute name="NAME" x="196.85" y="-11.43" size="1.778" layer="95" rot="R270" align="center-left"/>
<attribute name="VALUE" x="194.31" y="-11.43" size="1.778" layer="96" rot="R270" align="center-left"/>
</instance>
<instance part="GND2" gate="1" x="190.5" y="-17.78" smashed="yes">
<attribute name="VALUE" x="187.96" y="-20.32" size="1.778" layer="96"/>
</instance>
<instance part="GND3" gate="1" x="243.84" y="15.24" smashed="yes" rot="R90">
<attribute name="VALUE" x="246.38" y="12.7" size="1.778" layer="96" rot="R90"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="JP1(GP2Y0A51SK0F)" gate="A" pin="3"/>
<wire x1="-43.18" y1="-66.04" x2="-27.94" y2="-66.04" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="-27.94" y1="-66.04" x2="-27.94" y2="-76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND5" gate="1" pin="GND"/>
<pinref part="Y1" gate="G$1" pin="GND_2"/>
<wire x1="190.5" y1="5.08" x2="193.04" y2="5.08" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="10.16" y1="-66.04" x2="22.86" y2="-66.04" width="0.1524" layer="91"/>
<pinref part="GND6" gate="1" pin="GND"/>
<wire x1="22.86" y1="-66.04" x2="22.86" y2="-76.2" width="0.1524" layer="91"/>
<pinref part="JP2(GP2Y0A51SK0F)" gate="A" pin="3"/>
</segment>
<segment>
<wire x1="58.42" y1="-66.04" x2="73.66" y2="-66.04" width="0.1524" layer="91"/>
<pinref part="GND9" gate="1" pin="GND"/>
<wire x1="73.66" y1="-66.04" x2="73.66" y2="-76.2" width="0.1524" layer="91"/>
<pinref part="JP3(GP2Y0A51SK0F)" gate="A" pin="3"/>
</segment>
<segment>
<wire x1="114.3" y1="60.96" x2="114.3" y2="58.42" width="0.1524" layer="91"/>
<wire x1="114.3" y1="58.42" x2="121.92" y2="58.42" width="0.1524" layer="91"/>
<wire x1="121.92" y1="60.96" x2="121.92" y2="58.42" width="0.1524" layer="91"/>
<junction x="121.92" y="58.42"/>
<pinref part="GND13" gate="1" pin="GND"/>
<pinref part="C7" gate="G$1" pin="2"/>
<pinref part="C12" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="GND19" gate="1" pin="GND"/>
<junction x="-215.9" y="-63.5"/>
<wire x1="-203.2" y1="-68.58" x2="-215.9" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="-271.78" y1="-63.5" x2="-215.9" y2="-63.5" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="2"/>
<wire x1="-271.78" y1="-63.5" x2="-271.78" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="C23" gate="G$1" pin="2"/>
<pinref part="C28" gate="G$1" pin="2"/>
<wire x1="-203.2" y1="-68.58" x2="-193.04" y2="-68.58" width="0.1524" layer="91"/>
<junction x="-203.2" y="-68.58"/>
<pinref part="C14" gate="G$1" pin="2"/>
<wire x1="-180.34" y1="-68.58" x2="-193.04" y2="-68.58" width="0.1524" layer="91"/>
<junction x="-193.04" y="-68.58"/>
</segment>
<segment>
<pinref part="GND22" gate="1" pin="GND"/>
<wire x1="-86.36" y1="10.16" x2="-88.9" y2="10.16" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="GND23" gate="1" pin="GND"/>
<wire x1="-134.62" y1="-10.16" x2="-134.62" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="R12" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="MOTOR_R" gate="G$1" pin="3"/>
<pinref part="GND28" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="MOTOR_L" gate="G$1" pin="3"/>
<pinref part="GND25" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND26" gate="1" pin="GND"/>
<pinref part="LED2" gate="G$1" pin="K"/>
<wire x1="60.96" y1="53.34" x2="60.96" y2="50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND27" gate="1" pin="GND"/>
<pinref part="LED3" gate="G$1" pin="K"/>
<wire x1="40.64" y1="50.8" x2="40.64" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="HBRIDGE" gate="G$1" pin="PGND1_1"/>
<wire x1="152.4" y1="81.28" x2="149.86" y2="81.28" width="0.1524" layer="91"/>
<wire x1="149.86" y1="81.28" x2="149.86" y2="78.74" width="0.1524" layer="91"/>
<wire x1="149.86" y1="78.74" x2="147.32" y2="78.74" width="0.1524" layer="91"/>
<pinref part="HBRIDGE" gate="G$1" pin="PGND1_2"/>
<wire x1="149.86" y1="78.74" x2="152.4" y2="78.74" width="0.1524" layer="91"/>
<pinref part="GND17" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="HBRIDGE" gate="G$1" pin="GND"/>
<wire x1="185.42" y1="71.12" x2="190.5" y2="71.12" width="0.1524" layer="91"/>
<pinref part="GND18" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="HBRIDGE" gate="G$1" pin="PGND2_1"/>
<wire x1="152.4" y1="66.04" x2="149.86" y2="66.04" width="0.1524" layer="91"/>
<wire x1="149.86" y1="66.04" x2="149.86" y2="63.5" width="0.1524" layer="91"/>
<wire x1="149.86" y1="63.5" x2="147.32" y2="63.5" width="0.1524" layer="91"/>
<pinref part="HBRIDGE" gate="G$1" pin="PGND2_2"/>
<wire x1="149.86" y1="63.5" x2="152.4" y2="63.5" width="0.1524" layer="91"/>
<pinref part="GND16" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="Y1" gate="G$1" pin="GND_1"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="226.06" y1="2.54" x2="223.52" y2="2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-35.56" y1="58.42" x2="-25.4" y2="55.88" width="0.1524" layer="91"/>
<label x="-25.4" y="55.88" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="GND30" gate="1" pin="GND"/>
<wire x1="-10.16" y1="-55.88" x2="-7.62" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="C35" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="GND31" gate="1" pin="GND"/>
<wire x1="40.64" y1="-55.88" x2="43.18" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="C36" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="GND32" gate="1" pin="GND"/>
<wire x1="91.44" y1="-55.88" x2="93.98" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="C37" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="GND29" gate="1" pin="GND"/>
<pinref part="LED4" gate="G$1" pin="K"/>
<wire x1="17.78" y1="50.8" x2="17.78" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LINEAR_REGULATOR_3.3V" gate="G$1" pin="COMMON_2"/>
<pinref part="GND34" gate="1" pin="GND"/>
<wire x1="-218.44" y1="-45.72" x2="-220.98" y2="-45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="LINEAR_REGULATOR_3.3V" gate="G$1" pin="COMMON_1"/>
<wire x1="-259.08" y1="-48.26" x2="-261.62" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="GND35" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND24" gate="1" pin="GND"/>
<pinref part="MICROCHIP" gate="A" pin="VSS_2"/>
<wire x1="-66.04" y1="12.7" x2="-63.5" y2="12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND36" gate="1" pin="GND"/>
<pinref part="MICROCHIP" gate="A" pin="VSS"/>
<wire x1="127" y1="12.7" x2="124.46" y2="12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="MICROCHIP" gate="A" pin="VSS_3"/>
<pinref part="GND37" gate="1" pin="GND"/>
<wire x1="127" y1="-12.7" x2="124.46" y2="-12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="PROGRAMMER_PO" gate="A" pin="3"/>
<pinref part="GND14" gate="1" pin="GND"/>
<wire x1="-170.18" y1="-12.7" x2="-154.94" y2="-12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND15" gate="1" pin="GND"/>
<pinref part="MICROCHIP" gate="A" pin="AVSS"/>
<wire x1="-76.2" y1="-12.7" x2="-63.5" y2="-12.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="BLUETOOTH" gate="G$1" pin="GND_1"/>
<wire x1="-228.6" y1="68.58" x2="-231.14" y2="68.58" width="0.1524" layer="91"/>
<pinref part="GND38" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="BLUETOOTH" gate="G$1" pin="GND_2"/>
<wire x1="-195.58" y1="60.96" x2="-193.04" y2="60.96" width="0.1524" layer="91"/>
<pinref part="GND39" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND40" gate="1" pin="GND"/>
<wire x1="223.52" y1="73.66" x2="233.68" y2="73.66" width="0.1524" layer="91"/>
<pinref part="C42" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="GND41" gate="1" pin="GND"/>
<wire x1="307.34" y1="83.82" x2="312.42" y2="83.82" width="0.1524" layer="91"/>
<pinref part="C43" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="GND42" gate="1" pin="GND"/>
<wire x1="307.34" y1="55.88" x2="312.42" y2="55.88" width="0.1524" layer="91"/>
<pinref part="C44" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="GND43" gate="1" pin="GND"/>
<wire x1="-185.42" y1="43.18" x2="-185.42" y2="40.64" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="2"/>
</segment>
<segment>
<wire x1="-160.02" y1="53.34" x2="-160.02" y2="50.8" width="0.1524" layer="91"/>
<pinref part="GND47" gate="1" pin="GND"/>
<pinref part="C31" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="GND21" gate="1" pin="GND"/>
<pinref part="S1" gate="G$1" pin="4"/>
<wire x1="-124.46" y1="-86.36" x2="-124.46" y2="-78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="2"/>
<pinref part="GND20" gate="1" pin="GND"/>
<wire x1="-284.48" y1="-7.62" x2="-279.4" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="-279.4" y1="-7.62" x2="-279.4" y2="-2.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND12" gate="1" pin="GND"/>
<pinref part="IC1" gate="G$1" pin="GND"/>
<wire x1="-254" y1="-7.62" x2="-254" y2="-10.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C30" gate="G$1" pin="2"/>
<pinref part="GND48" gate="1" pin="GND"/>
<wire x1="-264.16" y1="-27.94" x2="-264.16" y2="-25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C29" gate="G$1" pin="2"/>
<pinref part="GND49" gate="1" pin="GND"/>
<wire x1="-213.36" y1="-27.94" x2="-213.36" y2="-25.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND46" gate="1" pin="GND"/>
<pinref part="C38" gate="G$1" pin="2"/>
<wire x1="-83.82" y1="-30.48" x2="-83.82" y2="-27.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C40" gate="G$1" pin="2"/>
<pinref part="GND44" gate="1" pin="GND"/>
<wire x1="160.02" y1="-30.48" x2="160.02" y2="-33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C39" gate="G$1" pin="2"/>
<pinref part="GND45" gate="1" pin="GND"/>
<wire x1="154.94" y1="27.94" x2="154.94" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND2" gate="1" pin="GND"/>
<pinref part="C3" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="GND3" gate="1" pin="GND"/>
<pinref part="C2" gate="G$1" pin="2"/>
</segment>
</net>
<net name="AN0" class="0">
<segment>
<wire x1="-43.18" y1="60.96" x2="-53.34" y2="60.96" width="0.1524" layer="91"/>
<label x="-53.34" y="60.96" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="MICROCHIP" gate="A" pin="AN1/VREF-/CN3/RA1"/>
<wire x1="-63.5" y1="-22.86" x2="-68.58" y2="-25.4" width="0.1524" layer="91"/>
<label x="-68.58" y="-25.4" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<wire x1="10.16" y1="-63.5" x2="43.18" y2="-63.5" width="0.1524" layer="91"/>
<pinref part="JP2(GP2Y0A51SK0F)" gate="A" pin="2"/>
<label x="43.18" y="-63.5" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="MICROCHIP" gate="A" pin="OSC2/CLKO/CN29/RA3"/>
<wire x1="177.8" y1="-7.62" x2="124.46" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="177.8" y1="-7.62" x2="177.8" y2="15.24" width="0.1524" layer="91"/>
<wire x1="177.8" y1="15.24" x2="223.52" y2="15.24" width="0.1524" layer="91"/>
<pinref part="Y1" gate="G$1" pin="X2"/>
<wire x1="223.52" y1="15.24" x2="223.52" y2="5.08" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="223.52" y1="15.24" x2="228.6" y2="15.24" width="0.1524" layer="91"/>
<junction x="223.52" y="15.24"/>
</segment>
</net>
<net name="AN1" class="0">
<segment>
<wire x1="-43.18" y1="58.42" x2="-53.34" y2="55.88" width="0.1524" layer="91"/>
<label x="-53.34" y="55.88" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="MICROCHIP" gate="A" pin="AN0/VREF+/CN2/RA0"/>
<wire x1="-63.5" y1="-20.32" x2="-68.58" y2="-20.32" width="0.1524" layer="91"/>
<label x="-68.58" y="-20.32" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<wire x1="58.42" y1="-63.5" x2="93.98" y2="-63.5" width="0.1524" layer="91"/>
<pinref part="JP3(GP2Y0A51SK0F)" gate="A" pin="2"/>
<label x="93.98" y="-63.5" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="AN4" class="0">
<segment>
<pinref part="MICROCHIP" gate="A" pin="AN4/C1IN-/RP2/CN6/RB2"/>
<wire x1="124.46" y1="-27.94" x2="124.46" y2="-30.48" width="0.1524" layer="91"/>
<label x="124.46" y="-30.48" size="1.778" layer="95" rot="R270" xref="yes"/>
</segment>
<segment>
<wire x1="-43.18" y1="55.88" x2="-53.34" y2="50.8" width="0.1524" layer="91"/>
<label x="-53.34" y="50.8" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="JP1(GP2Y0A51SK0F)" gate="A" pin="2"/>
<wire x1="-43.18" y1="-63.5" x2="-7.62" y2="-63.5" width="0.1524" layer="91"/>
<label x="-7.62" y="-63.5" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="PWM_L" class="0">
<segment>
<pinref part="HBRIDGE" gate="G$1" pin="PWMA"/>
<wire x1="185.42" y1="83.82" x2="187.96" y2="83.82" width="0.1524" layer="91"/>
<label x="187.96" y="83.82" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="MICROCHIP" gate="A" pin="PWM1L1/DAC1LN/RP15/CN11/PMCS1/RB15"/>
<wire x1="-63.5" y1="-10.16" x2="-66.04" y2="-10.16" width="0.1524" layer="91"/>
<label x="-66.04" y="-10.16" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="MTRDRV_AIN1" class="0">
<segment>
<pinref part="HBRIDGE" gate="G$1" pin="AIN1"/>
<wire x1="185.42" y1="78.74" x2="187.96" y2="78.74" width="0.1524" layer="91"/>
<label x="187.96" y="78.74" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<wire x1="-35.56" y1="68.58" x2="-25.4" y2="76.2" width="0.1524" layer="91"/>
<label x="-25.4" y="76.2" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="MICROCHIP" gate="A" pin="AN7/DAC1LM/RP17/CN9/RC1"/>
<wire x1="124.46" y1="-20.32" x2="129.54" y2="-25.4" width="0.1524" layer="91"/>
<label x="129.54" y="-25.4" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="MTRDRV_BIN1" class="0">
<segment>
<pinref part="MICROCHIP" gate="A" pin="AN6/DAC1RM/RP16/CN8/RC0"/>
<wire x1="124.46" y1="-22.86" x2="129.54" y2="-30.48" width="0.1524" layer="91"/>
<label x="129.54" y="-30.48" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="HBRIDGE" gate="G$1" pin="BIN1"/>
<wire x1="185.42" y1="68.58" x2="215.9" y2="68.58" width="0.1524" layer="91"/>
<label x="215.9" y="68.58" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<wire x1="-35.56" y1="63.5" x2="-25.4" y2="66.04" width="0.1524" layer="91"/>
<label x="-25.4" y="66.04" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="MTRDRV_BIN2" class="0">
<segment>
<pinref part="MICROCHIP" gate="A" pin="AN5/C1IN+/RP3/CN7/RB3"/>
<wire x1="124.46" y1="-25.4" x2="129.54" y2="-35.56" width="0.1524" layer="91"/>
<label x="129.54" y="-35.56" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="HBRIDGE" gate="G$1" pin="BIN2"/>
<wire x1="185.42" y1="66.04" x2="195.58" y2="66.04" width="0.1524" layer="91"/>
<label x="195.58" y="66.04" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<wire x1="-35.56" y1="60.96" x2="-25.4" y2="60.96" width="0.1524" layer="91"/>
<label x="-25.4" y="60.96" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="MTRDRV_AIN2" class="0">
<segment>
<pinref part="HBRIDGE" gate="G$1" pin="AIN2"/>
<wire x1="185.42" y1="81.28" x2="205.74" y2="81.28" width="0.1524" layer="91"/>
<label x="205.74" y="81.28" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<wire x1="-35.56" y1="66.04" x2="-25.4" y2="71.12" width="0.1524" layer="91"/>
<label x="-25.4" y="71.12" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="MICROCHIP" gate="A" pin="AN8/CVREF/RP18/PMA2/CN10/RC2"/>
<wire x1="124.46" y1="-17.78" x2="129.54" y2="-20.32" width="0.1524" layer="91"/>
<label x="129.54" y="-20.32" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="VM" class="0">
<segment>
<pinref part="HBRIDGE" gate="G$1" pin="VM2"/>
<pinref part="HBRIDGE" gate="G$1" pin="VM3"/>
<label x="187.96" y="58.42" size="1.778" layer="95" xref="yes"/>
<wire x1="185.42" y1="58.42" x2="185.42" y2="60.96" width="0.1524" layer="91"/>
<wire x1="185.42" y1="58.42" x2="187.96" y2="58.42" width="0.1524" layer="91"/>
<junction x="185.42" y="58.42"/>
</segment>
<segment>
<pinref part="HBRIDGE" gate="G$1" pin="VM1"/>
<wire x1="185.42" y1="86.36" x2="198.12" y2="86.36" width="0.1524" layer="91"/>
<label x="198.12" y="86.36" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<wire x1="121.92" y1="78.74" x2="121.92" y2="73.66" width="0.1524" layer="91"/>
<wire x1="121.92" y1="78.74" x2="114.3" y2="78.74" width="0.1524" layer="91"/>
<wire x1="114.3" y1="78.74" x2="114.3" y2="73.66" width="0.1524" layer="91"/>
<wire x1="114.3" y1="78.74" x2="106.68" y2="78.74" width="0.1524" layer="91"/>
<junction x="114.3" y="78.74"/>
<label x="106.68" y="78.74" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="C7" gate="G$1" pin="1"/>
<pinref part="C12" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="LINEAR_REGULATOR_3.3V" gate="G$1" pin="INPUT"/>
<wire x1="-259.08" y1="-45.72" x2="-271.78" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="-256.54" y1="-10.16" x2="-264.16" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-264.16" y1="-10.16" x2="-271.78" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-271.78" y1="-10.16" x2="-284.48" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-271.78" y1="-10.16" x2="-271.78" y2="-5.08" width="0.1524" layer="91"/>
<junction x="-271.78" y="-10.16"/>
<label x="-271.78" y="-5.08" size="1.778" layer="95" rot="R90" xref="yes"/>
<wire x1="-264.16" y1="-10.16" x2="-264.16" y2="-12.7" width="0.1524" layer="91"/>
<junction x="-264.16" y="-10.16"/>
<wire x1="-271.78" y1="-45.72" x2="-271.78" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="1"/>
<wire x1="-256.54" y1="-10.16" x2="-256.54" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="IN"/>
<wire x1="-256.54" y1="-15.24" x2="-254" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="C30" gate="G$1" pin="1"/>
<pinref part="C9" gate="G$1" pin="1"/>
<wire x1="-271.78" y1="-48.26" x2="-271.78" y2="-45.72" width="0.1524" layer="91"/>
<junction x="-271.78" y="-45.72"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="MICROCHIP" gate="A" pin="VCAP/VDDCORE"/>
<wire x1="-63.5" y1="10.16" x2="-73.66" y2="10.16" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="2"/>
</segment>
</net>
<net name="AO2" class="0">
<segment>
<pinref part="HBRIDGE" gate="G$1" pin="AO2_1"/>
<pinref part="HBRIDGE" gate="G$1" pin="AO2_2"/>
<wire x1="152.4" y1="73.66" x2="149.86" y2="73.66" width="0.1524" layer="91"/>
<label x="149.86" y="73.66" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="152.4" y1="76.2" x2="152.4" y2="73.66" width="0.1524" layer="91"/>
<junction x="152.4" y="73.66"/>
</segment>
<segment>
<pinref part="MOTOR_L" gate="G$1" pin="2"/>
<wire x1="274.32" y1="63.5" x2="276.86" y2="66.04" width="0.1524" layer="91"/>
<label x="276.86" y="66.04" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="AO1" class="0">
<segment>
<pinref part="HBRIDGE" gate="G$1" pin="AO1_2"/>
<wire x1="152.4" y1="83.82" x2="149.86" y2="83.82" width="0.1524" layer="91"/>
<label x="149.86" y="83.82" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="HBRIDGE" gate="G$1" pin="AO1_1"/>
<wire x1="152.4" y1="86.36" x2="152.4" y2="83.82" width="0.1524" layer="91"/>
<junction x="152.4" y="83.82"/>
</segment>
<segment>
<pinref part="MOTOR_L" gate="G$1" pin="1"/>
<wire x1="254" y1="63.5" x2="251.46" y2="66.04" width="0.1524" layer="91"/>
<label x="251.46" y="66.04" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="BO2" class="0">
<segment>
<pinref part="HBRIDGE" gate="G$1" pin="BO2_2"/>
<wire x1="152.4" y1="68.58" x2="149.86" y2="68.58" width="0.1524" layer="91"/>
<label x="149.86" y="68.58" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="HBRIDGE" gate="G$1" pin="BO2_1"/>
<wire x1="152.4" y1="71.12" x2="152.4" y2="68.58" width="0.1524" layer="91"/>
<junction x="152.4" y="68.58"/>
</segment>
<segment>
<pinref part="MOTOR_R" gate="G$1" pin="1"/>
<wire x1="254" y1="88.9" x2="251.46" y2="91.44" width="0.1524" layer="91"/>
<label x="251.46" y="91.44" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="ENCR_B" class="0">
<segment>
<pinref part="MOTOR_R" gate="G$1" pin="6"/>
<wire x1="274.32" y1="83.82" x2="276.86" y2="81.28" width="0.1524" layer="91"/>
<label x="276.86" y="81.28" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="MICROCHIP" gate="A" pin="RP20/CN25/PMA4/RC4"/>
<wire x1="124.46" y1="7.62" x2="132.08" y2="7.62" width="0.1524" layer="91"/>
<label x="132.08" y="7.62" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="ENCR_A" class="0">
<segment>
<pinref part="MOTOR_R" gate="G$1" pin="5"/>
<wire x1="254" y1="83.82" x2="251.46" y2="81.28" width="0.1524" layer="91"/>
<label x="251.46" y="81.28" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="MICROCHIP" gate="A" pin="RP21/CN26/PMA3/RC5"/>
<wire x1="124.46" y1="10.16" x2="132.08" y2="10.16" width="0.1524" layer="91"/>
<label x="132.08" y="10.16" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="BO1" class="0">
<segment>
<pinref part="HBRIDGE" gate="G$1" pin="BO1_2"/>
<wire x1="152.4" y1="58.42" x2="149.86" y2="58.42" width="0.1524" layer="91"/>
<label x="149.86" y="58.42" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="HBRIDGE" gate="G$1" pin="BO1_1"/>
<wire x1="152.4" y1="60.96" x2="152.4" y2="58.42" width="0.1524" layer="91"/>
<junction x="152.4" y="58.42"/>
</segment>
<segment>
<pinref part="MOTOR_R" gate="G$1" pin="2"/>
<wire x1="274.32" y1="88.9" x2="276.86" y2="91.44" width="0.1524" layer="91"/>
<label x="276.86" y="91.44" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<wire x1="60.96" y1="71.12" x2="60.96" y2="68.58" width="0.1524" layer="91"/>
<pinref part="LED2" gate="G$1" pin="A"/>
<pinref part="R6" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<wire x1="40.64" y1="71.12" x2="40.64" y2="68.58" width="0.1524" layer="91"/>
<pinref part="LED3" gate="G$1" pin="A"/>
<pinref part="R10" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<wire x1="-35.56" y1="55.88" x2="-25.4" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ENCL_B" class="0">
<segment>
<pinref part="MOTOR_L" gate="G$1" pin="6"/>
<wire x1="274.32" y1="58.42" x2="276.86" y2="55.88" width="0.1524" layer="91"/>
<label x="276.86" y="55.88" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="MICROCHIP" gate="A" pin="TDI/PMA9/RA9"/>
<wire x1="124.46" y1="2.54" x2="132.08" y2="2.54" width="0.1524" layer="91"/>
<label x="132.08" y="2.54" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="-144.78" y1="-53.34" x2="-142.24" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="K"/>
<pinref part="R1" gate="G$1" pin="1"/>
</segment>
</net>
<net name="ENCL_A" class="0">
<segment>
<pinref part="MOTOR_L" gate="G$1" pin="5"/>
<wire x1="254" y1="58.42" x2="251.46" y2="55.88" width="0.1524" layer="91"/>
<label x="251.46" y="55.88" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="MICROCHIP" gate="A" pin="RP19/CN28/PMBE/RC3"/>
<wire x1="124.46" y1="5.08" x2="132.08" y2="5.08" width="0.1524" layer="91"/>
<label x="132.08" y="5.08" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="5V" class="0">
<segment>
<pinref part="JP1(GP2Y0A51SK0F)" gate="A" pin="1"/>
<wire x1="-43.18" y1="-60.96" x2="-27.94" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-60.96" x2="-27.94" y2="-55.88" width="0.1524" layer="91"/>
<label x="-27.94" y="-53.34" size="1.778" layer="95" rot="R90" xref="yes"/>
<wire x1="-27.94" y1="-55.88" x2="-27.94" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="-55.88" x2="-22.86" y2="-55.88" width="0.1524" layer="91"/>
<junction x="-27.94" y="-55.88"/>
<pinref part="C35" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="10.16" y1="-60.96" x2="22.86" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-60.96" x2="22.86" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="JP2(GP2Y0A51SK0F)" gate="A" pin="1"/>
<label x="22.86" y="-53.34" size="1.778" layer="95" rot="R90" xref="yes"/>
<wire x1="22.86" y1="-55.88" x2="22.86" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-55.88" x2="27.94" y2="-55.88" width="0.1524" layer="91"/>
<junction x="22.86" y="-55.88"/>
<pinref part="C36" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="58.42" y1="-60.96" x2="73.66" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-60.96" x2="73.66" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="JP3(GP2Y0A51SK0F)" gate="A" pin="1"/>
<label x="73.66" y="-53.34" size="1.778" layer="95" rot="R90" xref="yes"/>
<wire x1="73.66" y1="-55.88" x2="73.66" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-55.88" x2="78.74" y2="-55.88" width="0.1524" layer="91"/>
<junction x="73.66" y="-55.88"/>
<pinref part="C37" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="-226.06" y1="-10.16" x2="-213.36" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="-213.36" y1="-10.16" x2="-213.36" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-213.36" y1="-10.16" x2="-200.66" y2="-10.16" width="0.1524" layer="91"/>
<junction x="-213.36" y="-10.16"/>
<label x="-200.66" y="-10.16" size="1.778" layer="95" xref="yes"/>
<pinref part="IC1" gate="G$1" pin="OUT"/>
<pinref part="C29" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="17.78" y1="71.12" x2="17.78" y2="68.58" width="0.1524" layer="91"/>
<pinref part="LED4" gate="G$1" pin="A"/>
<pinref part="R15" gate="G$1" pin="2"/>
</segment>
</net>
<net name="LED2" class="0">
<segment>
<label x="60.96" y="93.98" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="60.96" y1="88.9" x2="60.96" y2="93.98" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="MICROCHIP" gate="A" pin="PGED2/EMCD2/PWM1H3/RP10/CN16/PMD2/RB10"/>
<wire x1="-63.5" y1="7.62" x2="-66.04" y2="7.62" width="0.1524" layer="91"/>
<label x="-66.04" y="7.62" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="3.3V" class="0">
<segment>
<pinref part="MOTOR_R" gate="G$1" pin="4"/>
<wire x1="274.32" y1="86.36" x2="294.64" y2="86.36" width="0.1524" layer="91"/>
<label x="294.64" y="91.44" size="1.778" layer="95" xref="yes"/>
<wire x1="294.64" y1="86.36" x2="294.64" y2="91.44" width="0.1524" layer="91"/>
<wire x1="294.64" y1="86.36" x2="294.64" y2="83.82" width="0.1524" layer="91"/>
<junction x="294.64" y="86.36"/>
<pinref part="C43" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="MOTOR_L" gate="G$1" pin="4"/>
<label x="299.72" y="60.96" size="1.778" layer="95" xref="yes"/>
<wire x1="274.32" y1="60.96" x2="294.64" y2="60.96" width="0.1524" layer="91"/>
<wire x1="294.64" y1="60.96" x2="294.64" y2="55.88" width="0.1524" layer="91"/>
<wire x1="294.64" y1="60.96" x2="299.72" y2="60.96" width="0.1524" layer="91"/>
<junction x="294.64" y="60.96"/>
<pinref part="C44" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="HBRIDGE" gate="G$1" pin="VCC"/>
<wire x1="185.42" y1="76.2" x2="210.82" y2="76.2" width="0.1524" layer="91"/>
<label x="226.06" y="76.2" size="1.778" layer="95" xref="yes"/>
<wire x1="210.82" y1="76.2" x2="226.06" y2="76.2" width="0.1524" layer="91"/>
<wire x1="210.82" y1="76.2" x2="210.82" y2="73.66" width="0.1524" layer="91"/>
<pinref part="C42" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="PROGRAMMER_PO" gate="A" pin="2"/>
<wire x1="-170.18" y1="-15.24" x2="-162.56" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="-162.56" y1="-15.24" x2="-162.56" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="-203.2" y1="-53.34" x2="-198.12" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="-198.12" y1="-53.34" x2="-193.04" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="-193.04" y1="-53.34" x2="-180.34" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="-180.34" y1="-53.34" x2="-195.58" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="-203.2" y1="-53.34" x2="-203.2" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="-193.04" y1="-53.34" x2="-193.04" y2="-55.88" width="0.1524" layer="91"/>
<junction x="-193.04" y="-53.34"/>
<wire x1="-180.34" y1="-53.34" x2="-180.34" y2="-55.88" width="0.1524" layer="91"/>
<junction x="-180.34" y="-53.34"/>
<wire x1="-198.12" y1="-50.8" x2="-198.12" y2="-53.34" width="0.1524" layer="91"/>
<junction x="-198.12" y="-53.34"/>
<wire x1="-180.34" y1="-53.34" x2="-162.56" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="-162.56" y1="-53.34" x2="-160.02" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="-205.74" y1="-53.34" x2="-203.2" y2="-53.34" width="0.1524" layer="91"/>
<junction x="-203.2" y="-53.34"/>
<pinref part="LINEAR_REGULATOR_3.3V" gate="G$1" pin="OUTPUT"/>
<wire x1="-259.08" y1="-50.8" x2="-259.08" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="-259.08" y1="-58.42" x2="-205.74" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="-205.74" y1="-58.42" x2="-205.74" y2="-53.34" width="0.1524" layer="91"/>
<label x="-198.12" y="-50.8" size="1.778" layer="95" rot="R90" xref="yes"/>
<junction x="-162.56" y="-53.34"/>
<pinref part="C14" gate="G$1" pin="1"/>
<pinref part="C28" gate="G$1" pin="1"/>
<pinref part="C23" gate="G$1" pin="1"/>
<pinref part="D1" gate="G$1" pin="A"/>
</segment>
<segment>
<label x="-88.9" y="-15.24" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="MICROCHIP" gate="A" pin="AVDD"/>
<wire x1="-88.9" y1="-15.24" x2="-83.82" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="C38" gate="G$1" pin="1"/>
<wire x1="-83.82" y1="-15.24" x2="-63.5" y2="-15.24" width="0.1524" layer="91"/>
<junction x="-83.82" y="-15.24"/>
</segment>
<segment>
<label x="162.56" y="15.24" size="1.778" layer="95" xref="yes"/>
<pinref part="MICROCHIP" gate="A" pin="VDD"/>
<wire x1="124.46" y1="15.24" x2="154.94" y2="15.24" width="0.1524" layer="91"/>
<pinref part="C39" gate="G$1" pin="1"/>
<wire x1="154.94" y1="15.24" x2="162.56" y2="15.24" width="0.1524" layer="91"/>
<junction x="154.94" y="15.24"/>
</segment>
<segment>
<wire x1="-132.08" y1="27.94" x2="-132.08" y2="22.86" width="0.1524" layer="91"/>
</segment>
<segment>
<label x="162.56" y="-15.24" size="1.778" layer="95" xref="yes"/>
<pinref part="MICROCHIP" gate="A" pin="VDD_2"/>
<wire x1="124.46" y1="-15.24" x2="160.02" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="C40" gate="G$1" pin="1"/>
<wire x1="160.02" y1="-15.24" x2="162.56" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="160.02" y1="-17.78" x2="160.02" y2="-15.24" width="0.1524" layer="91"/>
<junction x="160.02" y="-15.24"/>
</segment>
<segment>
<pinref part="BLUETOOTH" gate="G$1" pin="VBAT"/>
<wire x1="-195.58" y1="58.42" x2="-185.42" y2="58.42" width="0.1524" layer="91"/>
<label x="-182.88" y="58.42" size="1.778" layer="95" xref="yes"/>
<wire x1="-185.42" y1="58.42" x2="-182.88" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-185.42" y1="58.42" x2="-185.42" y2="55.88" width="0.1524" layer="91"/>
<junction x="-185.42" y="58.42"/>
<pinref part="C1" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="-160.02" y1="88.9" x2="-160.02" y2="91.44" width="0.1524" layer="91"/>
<label x="-160.02" y="91.44" size="1.778" layer="95" rot="R90" xref="yes"/>
<pinref part="R14" gate="G$1" pin="1"/>
</segment>
<segment>
<wire x1="-175.26" y1="63.5" x2="-172.72" y2="63.5" width="0.1524" layer="91"/>
<label x="-172.72" y="63.5" size="1.778" layer="95" xref="yes"/>
<pinref part="R13" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="S2" gate="G$1" pin="3"/>
<wire x1="-137.16" y1="33.02" x2="-137.16" y2="35.56" width="0.1524" layer="91"/>
<label x="-137.16" y="35.56" size="1.778" layer="95" rot="R90" xref="yes"/>
</segment>
</net>
<net name="PGED1" class="0">
<segment>
<pinref part="PROGRAMMER_PO" gate="A" pin="4"/>
<wire x1="-170.18" y1="-10.16" x2="-165.1" y2="-10.16" width="0.1524" layer="91"/>
<label x="-165.1" y="-10.16" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="MICROCHIP" gate="A" pin="PGED1/AN2/C2IN-/RP0/CN4/RB0"/>
<wire x1="-63.5" y1="-25.4" x2="-66.04" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="-66.04" y1="-25.4" x2="-66.04" y2="-30.48" width="0.1524" layer="91"/>
<label x="-66.04" y="-30.48" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="PGEC1" class="0">
<segment>
<pinref part="PROGRAMMER_PO" gate="A" pin="5"/>
<wire x1="-170.18" y1="-7.62" x2="-165.1" y2="-5.08" width="0.1524" layer="91"/>
<label x="-165.1" y="-5.08" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="MICROCHIP" gate="A" pin="PGEC1/AN3/C2IN+/RP1/CN5/RB1"/>
<wire x1="-63.5" y1="-27.94" x2="-63.5" y2="-35.56" width="0.1524" layer="91"/>
<label x="-63.5" y="-35.56" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="PROGRAMMER_PO" gate="A" pin="1"/>
<wire x1="-106.68" y1="-17.78" x2="-121.92" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="LED1" gate="G$1" pin="K"/>
<wire x1="-121.92" y1="-17.78" x2="-170.18" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-121.92" y1="-27.94" x2="-121.92" y2="-17.78" width="0.1524" layer="91"/>
<junction x="-121.92" y="-17.78"/>
<pinref part="C41" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<wire x1="-121.92" y1="-58.42" x2="-121.92" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="LED1" gate="G$1" pin="A"/>
<wire x1="-121.92" y1="-53.34" x2="-121.92" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="-124.46" y1="-53.34" x2="-121.92" y2="-53.34" width="0.1524" layer="91"/>
<junction x="-121.92" y="-53.34"/>
<pinref part="S1" gate="G$1" pin="1"/>
<pinref part="R1" gate="G$1" pin="2"/>
</segment>
</net>
<net name="PWM_R" class="0">
<segment>
<pinref part="HBRIDGE" gate="G$1" pin="PWMB"/>
<wire x1="185.42" y1="63.5" x2="215.9" y2="63.5" width="0.1524" layer="91"/>
<label x="215.9" y="63.5" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="MICROCHIP" gate="A" pin="PWM1L2/DAC1RN/RP13/CN13/PMRD/RB13"/>
<wire x1="-63.5" y1="0" x2="-66.04" y2="0" width="0.1524" layer="91"/>
<label x="-66.04" y="0" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="MICROCHIP" gate="A" pin="!MCLR"/>
<wire x1="-63.5" y1="-17.78" x2="-93.98" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="C41" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<wire x1="-134.62" y1="12.7" x2="-134.62" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-134.62" y1="10.16" x2="-134.62" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-134.62" y1="10.16" x2="-121.92" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-121.92" y1="10.16" x2="-121.92" y2="-2.54" width="0.1524" layer="91"/>
<junction x="-134.62" y="10.16"/>
<pinref part="MICROCHIP" gate="A" pin="TMS/PMA10/RA10"/>
<wire x1="-121.92" y1="-2.54" x2="-63.5" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="S2" gate="G$1" pin="2"/>
<pinref part="R12" gate="G$1" pin="1"/>
</segment>
</net>
<net name="RX" class="0">
<segment>
<pinref part="BLUETOOTH" gate="G$1" pin="UART_RX"/>
<wire x1="-228.6" y1="55.88" x2="-231.14" y2="55.88" width="0.1524" layer="91"/>
<label x="-231.14" y="55.88" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="MICROCHIP" gate="A" pin="SCL1/RP8/CN22/PMD4/RB8"/>
<wire x1="124.46" y1="25.4" x2="137.16" y2="25.4" width="0.1524" layer="91"/>
<label x="137.16" y="25.4" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="TX" class="0">
<segment>
<pinref part="BLUETOOTH" gate="G$1" pin="UART_TX"/>
<wire x1="-228.6" y1="53.34" x2="-231.14" y2="53.34" width="0.1524" layer="91"/>
<label x="-231.14" y="53.34" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="MICROCHIP" gate="A" pin="INT0/RP7/CN23/PMD5/RB7"/>
<wire x1="124.46" y1="22.86" x2="144.78" y2="22.86" width="0.1524" layer="91"/>
<label x="144.78" y="22.86" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="BLUETOOTH" gate="G$1" pin="P1_2"/>
<wire x1="-228.6" y1="66.04" x2="-231.14" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="BLUETOOTH" gate="G$1" pin="P1_3"/>
<wire x1="-228.6" y1="63.5" x2="-231.14" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="BLUETOOTH" gate="G$1" pin="P1_7"/>
<wire x1="-228.6" y1="60.96" x2="-231.14" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="BLUETOOTH" gate="G$1" pin="P1_6"/>
<wire x1="-228.6" y1="58.42" x2="-231.14" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RTS" class="0">
<segment>
<pinref part="BLUETOOTH" gate="G$1" pin="P3_6"/>
<wire x1="-195.58" y1="71.12" x2="-193.04" y2="71.12" width="0.1524" layer="91"/>
<label x="-193.04" y="71.12" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="BLUETOOTH" gate="G$1" pin="RST_N"/>
<wire x1="-195.58" y1="68.58" x2="-160.02" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-160.02" y1="68.58" x2="-160.02" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-160.02" y1="68.58" x2="-160.02" y2="66.04" width="0.1524" layer="91"/>
<pinref part="C31" gate="G$1" pin="1"/>
<pinref part="R14" gate="G$1" pin="2"/>
</segment>
</net>
<net name="CTS" class="0">
<segment>
<pinref part="BLUETOOTH" gate="G$1" pin="P0_0"/>
<wire x1="-195.58" y1="66.04" x2="-193.04" y2="66.04" width="0.1524" layer="91"/>
<label x="-193.04" y="66.04" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="BLUETOOTH" gate="G$1" pin="P0_2"/>
<wire x1="-195.58" y1="63.5" x2="-193.04" y2="63.5" width="0.1524" layer="91"/>
<pinref part="R13" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="BLUETOOTH" gate="G$1" pin="P2_7"/>
<wire x1="-195.58" y1="55.88" x2="-193.04" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="BLUETOOTH" gate="G$1" pin="P2_0"/>
<wire x1="-195.58" y1="53.34" x2="-193.04" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="STBY" class="0">
<segment>
<pinref part="HBRIDGE" gate="G$1" pin="STBY"/>
<wire x1="185.42" y1="73.66" x2="200.66" y2="73.66" width="0.1524" layer="91"/>
<label x="200.66" y="73.66" size="1.778" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="MICROCHIP" gate="A" pin="TCK/PMA7/RA7"/>
<wire x1="-63.5" y1="-5.08" x2="-71.12" y2="-5.08" width="0.1524" layer="91"/>
<label x="-71.12" y="-5.08" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="LED4" class="0">
<segment>
<label x="17.78" y="93.98" size="1.778" layer="95" rot="R180" xref="yes"/>
<wire x1="17.78" y1="88.9" x2="17.78" y2="93.98" width="0.1524" layer="91"/>
<pinref part="R15" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="MICROCHIP" gate="A" pin="PWM1H2/DAC1RP/RP12/CN14/PMD0/RB12"/>
<wire x1="-63.5" y1="2.54" x2="-66.04" y2="2.54" width="0.1524" layer="91"/>
<label x="-66.04" y="2.54" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="LED3" class="0">
<segment>
<wire x1="40.64" y1="88.9" x2="40.64" y2="93.98" width="0.1524" layer="91"/>
<label x="40.64" y="93.98" size="1.778" layer="95" rot="R180" xref="yes"/>
<pinref part="R10" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="MICROCHIP" gate="A" pin="PGEC2/PWM1L3/RP11/CN15/PMD1/RB11"/>
<wire x1="-63.5" y1="5.08" x2="-66.04" y2="5.08" width="0.1524" layer="91"/>
<label x="-66.04" y="5.08" size="1.778" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="MICROCHIP" gate="A" pin="OSC1/CLKI/CN30/RA2"/>
<wire x1="124.46" y1="-10.16" x2="185.42" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-10.16" x2="185.42" y2="2.54" width="0.1524" layer="91"/>
<pinref part="Y1" gate="G$1" pin="X1"/>
<wire x1="185.42" y1="2.54" x2="190.5" y2="2.54" width="0.1524" layer="91"/>
<pinref part="C3" gate="G$1" pin="1"/>
<wire x1="190.5" y1="2.54" x2="193.04" y2="2.54" width="0.1524" layer="91"/>
<wire x1="190.5" y1="2.54" x2="190.5" y2="-2.54" width="0.1524" layer="91"/>
<junction x="190.5" y="2.54"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
