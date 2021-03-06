##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "PHPDirector" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-07-24
version "0.1"
description "PHPDirector is a content management system that allows users to create there own video sharing websites. - homepage: http://www.phpdirector.co.uk/"

# 181 results for "powered by PHP Director" @ 2010-07-24
examples %w|
clips-videos.meteou.biz
dentistabolzano.com
duringclass.com
eniyivideolar.com
funnyspot.us
fun-video.meteou.biz
hellerovo.cz
hljs.cn
jaguar.pc-taitaja.com/phpdirector/
jovianmedia.com
kaerntenguide.com/localtv/archive/
kissing-girls.amateur-sexy.biz
lalucha.com.do/phpdirector/
metalvideotube.com
nonamedpro.com/media/
oldgobbler.com/Videos/
ots.orgreality.com
papamikes.net/cinetube/
paris-hilton-video-clips.xtubes.de
reovdo.com
shockme.info
shock.xtubes.de
sitios.educando.edu.do/videos/
tayzonday.tv
thebikersound.com/videos/
thehybrid5.com/gallery/
videos.chilevacaciones.cl
videos-club-dance.meteou.biz
videos-de.stars-people.info
videotutorial.site40.net
video.videowebgate.com
www.africanmusicforum.com/video/phpdir/
www.bestextremesport.com
www.bigachievers.com/videos/
www.bucketheadbash.com/t-bucket_videos/
www.comedy365.com
www.docmovil.com.ar/videos/
www.genital-herpes-facts.com/genital_herpes_videos/
www.hereinreality.com/video/
www.hotmoment.co.uk
www.jamit.com.au/fractions/
www.kcweblinks.com/video/
www.laura-stitch.it/Video/
www.linerider.org/movies/
www.lozioviaggiatore.altervista.org/filmati/
www.myfunnypets.com/123a/
www.onlysexyvids.com/index.php
www.oops.hellospace.net/video/
www.orgreality.com/temple/
www.oriondesignhomes.com/PHPDirector/
www.ravendark.fr/Video/
www.reggaefilmarchives.co.uk
www.ribera.tv
www.salentotvweb.com/myvideo/
www.smartlanka.net/videos/
www.starcatalog.ro/vid/
www.tuppies.net
www.tuppys.net
www.vatanbir.org/vatanbirmedya/
www.w3bfly.com/Flash/
www.xboxhornet.com
|

def passive
        m=[]

        if @body =~ /<a href="http:\/\/www.phpdirector.co.uk\/">Powered by PHP Director [\d\.]+<\/a>/
                version=@body.scan(/<a href="http:\/\/www.phpdirector.co.uk\/">Powered by PHP Director ([\d\.]+)<\/a>/)[0][0]
                m << {:version=>version}
        end

        m

end


end

