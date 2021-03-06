##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "WoW-Raid-Manager" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-06-16
version "0.1"
description "WoW Raid Manager or WRM for short is a PHP based application supporting World of Warcraft guilds. - homepage: http://www.wowraidmanager.net/"
examples %w|
converge-guild.net/raid/
www.ghosty.dk/ar/phpraid/
www.wediealot.org/raid/
www.theamazonbasin.com/wow/stormwrm/
itspallygear.com/raider/
goblinsguild.com/wrm/
www.legiosanctus.eu/wrm/
raid.treehuggery.org
fadedglory.eu/puz/
www.warcraftcollege.com/wrm/
www.tranqguild.com/wrm/
www.thehordemaycry.66ghz.com/wrm/
www.wyrdangles.net/wrm/
www.wow-wolf.com/wrm/
www.wowsentient.com/raid/
www.dawnofosiris.eu/wrm4/
www.readycheck.ro/wrm/
www.bokraid.com/wrm/
www.pinkbelly.org/raid/roster.php
www.digital-matter.net/wrm/
triage.guildspot.org/wrm/
www.d-o-j.com/wrmdoj/
www.zebraguild.com/wrm4/
kotrwrath.shadowroute.net/wrm/
www.application-declined.com/raid/newplanner/
www.dhbaelgun.com/wrm/
www.obsidianblades.info/wrm/
hottiehamsters.com/wrm/
suffragium.net/signup/
www.wow-wolf.com/wrm/
grokos.com/phpRaid/
pulse.malygos.us/raid/
www.unseenuniversity.nl/manager/
www.cultofreason.org/raid/
www.bdsg.eu/raid/
www.wowsentient.com/raid/
|

matches [

# About 108,000 results @ 2010-06-16
{:name=>'GHDB: "Raid Management Provided by WoW Raid Manager"',
:certainty=>75,
:ghdb=>'"Raid Management Provided by WoW Raid Manager"'
}

]

def passive
        m=[]

        if @body =~ /Raid Management Provided by <a href="http:\/\/www.wowraidmanager.net\/">WoW Raid Manager<\/a> v[\d\.]+/
                version=@body.scan(/Raid Management Provided by <a href="http:\/\/www.wowraidmanager.net\/">WoW Raid Manager<\/a> v([\d\.]+)/)[0][0]
                m << {:certainty=>100,:name=>"powered by version text",:version=>version}
        end

        m
end


end

