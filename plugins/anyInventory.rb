##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "anyInventory" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-07-25
version "0.1"
description "anyInventory, the most flexible and powerful web-based inventory system - homepage: http://anyinventory.sourceforge.net/"

# 51 results for "anyInventory, the most flexible and powerful web-based inventory system" @ 2010-07-25
examples %w|
brushpen.net/anyinventory/
lostmartian.com
www.doorcountyprinting.com/inventory/
creativelyembraced.me/db/
jimdrio.com
www.claycountyschools.org/anyinventory/
www.telextechnologies.com/assetmgmt/
majolsurf.net/anyinventory/
clixstar.info
heidenconsulting.com/anyinventory/
www.isellandbuy.com/inventory2/
luxceleritas.com/anyinventory/
www.bluechickencomputers.com/inventory/
autowreckingcleveland.com/inventory/
bicknellapostolic.com/anyinventory/
franksmarketing.com/anyinventory/
www.upload.outonline.com
russp.net/anyinventory/
www.napalmmotorsport.com/showroom/
|

matches [

{ :text=>'		<title>anyInventory: Top</title>' },

{ :regexp=>/					 you have inventoried <b>[0-9]*<\/b>  items with <a href="http:\/\/anyinventory.sourceforge.net\/">anyInventory, the most flexible and powerful web-based inventory system<\/a>/ },

]

# Tested versions: 1.9.1 / 1.9.2 / 2.0
def passive
        m=[]

        if @body =~ /								anyInventory [\d\.]+/
                version=@body.scan(/								anyInventory ([\d\.]+)/)[0][0]
                m << {:version=>version}
        end

        m

end


end

