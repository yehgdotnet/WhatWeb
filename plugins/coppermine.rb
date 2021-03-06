##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##


# Version 0.2
# removed :name and :certainty=>100
# Version 0.3
# Uses :version=>//

Plugin.define "Coppermine" do
author "Andrew Horton"
version "0.3"
description "PHP & MySQL Photo Gallery homepage: www.coppermine-gallery.net"
examples %w| http://www.langlandsurf.com/gallery/index.php http://www.botanyphotos.net/ http://www.pngtrekkingadventures.com/gallery/ 
ralphbakshi.com/gallery makro.arachiusz.pl www.sabre-roads.org.uk/gallery www.desertdave.com www.akronaeros.com/coppermine/ stramm.st.funpic.org/ www.lpod.org/coppermine/ www.alanmclark.com/art |

#  Coppermine version: 1.4.19
=begin
<!--
  SVN version info:
  Coppermine version: 1.4.19
  $Revision: 4392 $
  $LastChangedBy: gaugau $
  $Date: 2008-04-16 09:25:35 +0200 (Mi, 16 Apr 2008) $
-->
=end
# <!-- BEGIN album_list -->
# Powered by <a href="http://coppermine-gallery.net/" title="Coppermine Photo Gallery" rel="external">Coppermine Photo Gallery</a>
# <!--Coppermine Photo Gallery 1.4.19 (stable)-->


# with joomla
# <!-- +++++++++++++++++++ coppermine begin +++++++++++++++++++ -->

# <title>Coppermine Photo Gallery - Home</title>
# <!--Coppermine Photo Gallery 1.3.2-->
# Powered by <a href="http://coppermine.sf.net/" target="_blank">Coppermine Photo Gallery</a>

# <!--Coppermine Photo Gallery 1.4.10 (stable)-->
# Powered by <a href="http://coppermine.sourceforge.net/" title="Coppermine Photo Gallery" rel="external">Coppermine Photo Gallery</a>

# <a href="displayimage.php?album=lastup&amp;cat=0&amp;pos=6">

matches [
{:text=>"<title>Coppermine Photo Gallery - Home</title>" },
{:regexp=>/Coppermine version: ([0-9\.]+)[ \n]*\$Revision/ },
{:text=>"<!-- BEGIN album_list -->" },
{:name=>"powered by link",
:regexp=>/Powered by <a href="http:\/\/(coppermine-gallery.net|coppermine.sf.net|coppermine.sourceforge.net)\/" [^>]+>Coppermine Photo Gallery<\/a>/ },
{:regexp=>/<!--Coppermine Photo Gallery ([\d\.]+)[^>]+-->/ },
{:name=>"displayimage.php url",
:certainty=>50,
:regexp=>/<a href="[^"]*\/displayimage.php\?album=[a-z0-9]+&pos=">/ }, # "

{:version=>/<!--Coppermine Photo Gallery ([\d\.]+[^>]+)-->/, :version_regexp_offset=>0,  :name=>"<!--Coppermine Photo Gallery" } #"
								]
# 


end



