require 'faker'
require 'colorize'

puts `clear`
puts "YOUR DATABASE IS GOING TO BE DELETED AND OVERWRITTEN"
sleep(2)
puts "DO YOU WANT TO CONTINUE ? #{"Y/N".blink}"
sleep(3)
puts "IT'S TOO LATE, DELETION IN PROGRESS"

Course.destroy_all # Supprime toute la base de données actuelle
Student.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'courses'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'students'")

puts `clear`
puts "DELETION IS NOW COMPLETE"
sleep(3)
puts `clear`
puts "BECAREFUL YOUR DATABASE WILL NOW BE OVERWRITTEN"
sleep(3)

i = 0
j = 0

30.times do |less| # Crée 30 cours avec leurs titre et contenu respectifs
	course = Course.create!(title: Faker::Cannabis.cannabinoid, body: Faker::Cannabis.buzzword)
	i += 1
	puts "#{Faker::File.file_name('usr/documents')} #{rand(99999999)} Ko - OVERWRITTEN"
end

120.times do |stud| # Crée 120 étudiants avec leurs nom, email & id de leur cours respectifs
	student = Student.create!(course_id: rand(1..30), name: Faker::Cannabis.strain, email: Faker::Internet.email(Faker::Superhero.name))
	j += 1
	puts "#{Faker::File.file_name('usr/documents')} - #{rand(99999999)} Ko - OVERWRITTEN"
end

puts `clear`
puts "EVERYTHING HAS BEEN OVERWRITTEN, CONGRATULATIONS !"
sleep(3)
puts `clear`
puts "osyyhdmNMMMMMMMMMNNmmddhyyssoooooosoo/:-----:/osyysssooo++ooossssssso+++:/y+.-:::://++ooosssssyyyhddmNNNNNMMMMMMNNNNNNNmmmmmmmmNNNNMMMMMMMNmmddmmmNNMM"
sleep(0.07)
puts "+oosyhdNMMMMMMNNNmmddhhyssoo++++++ooso/:-----:+ssyssssssoooossyyhhhyysoo+.sh-------:::///++ooooossyhdddmmNNNNdhMMNNNNNNNNNmmmmmNNNNMMMMMMMNNNNNMMMMMMM"
sleep(0.07)
puts "++oosyhmNMMMMNNNNNmmdhyyso+++//++++oso+:------:oyyyssssssssssyyyyhhhhy+:o/:d/o:.-------:::///+++oossyyhhddmmsoNNNNNNNNNNNNNmNNNNNNMMMMMMMMMMMMMMMMMMMM"
sleep(0.07)
puts "/++osshdmNMMMMMMMNNNmhyso++/////+++ooso+:------/syssssyyyyyyyssssssyys++./-hsy::-.-...-----:://++++ooossyhy/+dmNNNNNNNMNNNNNNNNNNMMMMMMMMMMMMMMMMMMMMM"
sleep(0.07)
puts "///+osyhdmNMMMMMMMMNmhyso+///////++oosss+:---..-:osssssyyyyysoooo+ooo+:-+.-+hs/o+---.....----::////+++ooo/-:yhddmmmNNNNNNNNNNNNNNMMMMMMMMMMMMMMMMMMMMN"
sleep(0.07)
puts "/////+oyhdmMMMMMMMMmdyso+///:::///++ossys/--....-:+osssyyyyso+++++//+++--+.-dsy+o+/--......---::://///+/:--+ssyyhddmmNNmmmmmmmNNNNMMMMMMMMMMMMMMMMMMMM"
sleep(0.07)
puts "//::://oshdNMMMMMMNdhso+///////////++osyhy/--....-:+ooosyyso++///////::/--/.yosos+:---.......---://///---::++oosyyhddmmmmmmmmmmmmNNNNNMMMMMMMMMMMMMMMM"
sleep(0.07)
puts "///:::://+shNMMMMMmhyo+///:://////////oyhdho:-....-:oosyyyso++///////++.::.-oh+y+so+::--......---::/:--:--://+++ossyyhddddddddddmmmNNNNNNNmmNNNMMMMMMM"
sleep(0.07)
puts "+//:::::://oymMMMNmhso+//::////////:////sdddo:-----:/syyyssoo++/:::::::+.::./dyyoys+//::--.....----.:-:---//////++ossyyyhhddddddddmmNNNmmdddmmmNMMMMMM"
sleep(0.07)
puts "ho+///:::://+ymMMNdhso+///:://::::::/:+s///sy+::---:/shhyyssoo+////////-/:::-dhoyoyso++/::--...-.-:-+:/:--/////////+oossyyhhhhhhdddmmmmdddddddmNMMMMMM"
sleep(0.07)
puts "mdhso+//:::://oydddhso+//////:::::::/++/+oh//+-::::/+ydddhhyso++/////::+-/:--hhyssyyosyoo+/:---/./+/:---::+//////////+oossyyhhhhddddmmmmdddddmmNMMMMMM"
sleep(0.07)
puts "mmmddhs+///////++osssoo++////:::::::/++/::+h+y//:.-/+shddhhhhyso+++////-/-/:.yhsoyssoodhyso+:-/o-o+-...--/++++////////++ossyyyhhddddmmmmmdddmmNMMMMMMM"
sleep(0.07)
puts "mmNNNNmdso+//////+++ooooo++//:::-::/+sh.   ``````  ````..``-dhy+``````./-::::o+``````+ddddhs/-/o.-`      ``-:+o+++////++oosssyhhhddmmNNNmmmmmmNMMMMMMM"
sleep(0.07)
puts "NMMMMMMMNmhyso+++++oooooso++//:--::/+ym`                   .mdho      .:::/:-o/      :ddddo+o:``             `/ssooo+++++ooossyyhdmmNNNNmmmmmmNNNMMMMM"
sleep(0.07)
puts "NMMMMMMMMMMMNNdysssooss+oooo+/:--::/+ym-...`         ```` `-mddo      ./+:/:::/      +ddyhs::        ````   `/syyyysoooo+oo+++ooohdmNNNNNmmmmNNmmmNNMM"
sleep(0.07)
puts "mNMMMMMMMMMMMMMNdhyyyyyyysoo+/::::/+oymmmmms:-      `hy:y:+ooyds      -+:o:+::/      +dho/s-       .-:++o+:-osyyhhhyos+///::::/osyhdmNNNNmmmmNmmmmmNNN"
sleep(0.07)
puts "dmNMMMMMMMMMMMMNmdhyssyyyyyyss/::/+sydNMMMMNmy       ymshy/h++ho      -yo-o-:-:      /hhs/:      `//+syysssyysys+++:::/:-:/++ooossyyhdNNmmmmmmmmmmmmmN"
sleep(0.07)
puts "hdmNMMMMMMMMMMMmdhsoooossyyyyyysh+/ohhmMMMMMMN       -/yddsdsss/       `` ``         oh+so`      -++shhhysyo+//::::/+++//oosoooosssyyhdmmmmmmNmmmmmmNN"
sleep(0.07)
puts "yhdmMMMMMMMMMMNdhso+++++oossoshyhmh++y+oddymMN       :--+hddhyh:                     /yooo       //shyso++/:////+////:::/yyysssssssyyhhdmmmmmNNNNNNNNM"
sleep(0.07)
puts "hhdNMMMMMMMMMMmhso+/////+++++/oyyshdhddysds+yd       /::--odmdd/       `` ` `        -ssos`      /oyos////://++/::::::/yhhhhhyyysssyyhhdddmmmNNNNNNMMM"
sleep(0.07)
puts "hdmNMMMMMMMMMNdyso//://////////oyhoooyhddmmysh      `hs+::-:ydm+      .os/:+-:-      /+y+o-      ./oo+///+++/:--:::-/ohmmddhhdhhhhyyhhddmmmmNNNNNNMMMM"
sleep(0.07)
puts "ddmNMMMMMMMMMmhyo+/::://////://+shhsoo++yhmmdd      `hhs//:--ods      .+oh+/+:-      +/y+so       .++os+o/-.----::+ohmmmmmmddddmmdddddmmmmNNNNNNMMMMMM"
sleep(0.07)
puts "mNNMMMMMMMMMMmhs+//:::::::::://+shmNdys++++syh      `y+yhyo/:-:+      .//ys/:/-      ++osss+`      `.:/-.`   .:/osdmmmmmmmmmmmmmNNNmmmmNNNNNMMMMMMMMMM"
sleep(0.07)
puts "MMMMMMMMMMMMNdyo+//:::::::::://osdMMMdo+++/:/+      `dysy+yo//:.      :+-o++/::      /soyyss+-                -hddddmmmmmmmNNNNNMMMMMNMMMMMMMMMMMMMMMM"
sleep(0.07)
puts "MMMMMMMMMMMNmhso+/:::::::::::/+shdMMMMNdyo++/:      `mdhdh+yooo-      -o-:d/+/:      :yysshhsh+/`          `-+hddddddmmmmmNNNNMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.07)
puts "MMMMMMMMMMMNmhso+/:::/:::::::/oydNMMMMNNmmmds+..---..ohdddydd/oo:-`/ssoyo-ys/+yss++:/ohhhyyyyhyy+/+/:..:/osyddhhhddddmmmNNNNNMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.07)
puts "MMMMMMMMMMMMmhs+//////:::::::/ohNMMMMMNNmmmmmmdho/::/:::shdddyyh:/:-ydddy-s+oodmmhssshsydshyhyoooooosyyydmmddhhhhhdddmmmNNNMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.07)
puts "MMMMMMMMMMMMNhso+//:::::::::/+shNMMMMMNNmmmmmNMMmdhs/://-:/yhdddyoo/:sddy:ohoydmdhoyhhdydyhysssooossshNNmmmdddhhhhddmmmNNNMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.07)
puts "MMMMMMMMMMMMMdyo+//::::::::/+oymMMMMMMNmmdddmmMMMMMNdys+//-.:+yddyh+:+yddh+yhhdmshsyhdhhhyysssssssddhmhhydhyyhhyyhdmmmNNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.07)
puts "MMMMMMMMMMMMMmyo+///:://+++++ydNNMMMMMmddhhhhdmMMMMMMMNmyso+:--/ohdd+++ydd/yhhdhyyhdhdhhyyyssssysssyooos++oso++/++ooosmmmNNMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.07)
puts "MMMMMMMMMMMMMNhs++//:://++ssyssysssysyoo+oo++oooyyssyyydNmNmds+/--+yhso+ydsshhysyyhdhhyyysssoosossssosssssssssyssoooo++++ooyhhhddmNNNMMMMMMMMMMMMMMMMM"
sleep(0.07)
puts "MMMMMNNNNMMMMmhso+//://++sydNMNdhyyyhhyddyydhsydyssys+ss//sossydhs/:/sh+sydohh+yysyhyyyosyyyyyyyysssooo++++///////++oossooshhddddhhhdNMMMMMMMMMMMMMMMM"
sleep(0.07)
puts "MMMMMNNNNNMMMNdyo+////++ohNMMMMMMMNmhssssooyhyyyhddhddhhdhyhy+oo+/++++/osoyyssoyoyyyyyhyyso++/::::---::--:::::::::/+o+ommNNNMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.07)
puts "MMMMMMNNNMMMMMmhso///++oymMMMMMMMMMMMNmdhssso+////:---:-:::::///++/++:/::++ooosoyhyyyo++++/+++/++/:+o+:+s+/sso+yyysdmmmNNNNMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.07)
puts "MMMMMMMMMMMMMMNdyo+/++osdMMMMMMMMMMMMMmyssooyhysoo+++++////:::/:::/:::----.-://+sssooo//osssyhydddhdNNmNNNNNNNNNNNNNNNNMNNMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.07)
puts "MMMMMMMMMMMMMMMmhsooooshNMMMMMMMMMMMMMNho+///+oymNNmmNmmmmmmmmmdy+++/::-....+o:--::+oyhsoo+++oshdmmNNNNMMNNNNNNNNNNNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
sleep(0.07)
puts "MMMMMMMMMMMMMMMNdyssyhdNMMMMMMMMMMMMMMNyo/////oydMMMMMMMMMMmdy+++o/--..--::/+o:-+:o-:-:+syhyso+osyddmmmNNNNNNmNNNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
puts ""
sleep(2)
puts "C'était une blague, y'a juste #{i} Students et #{j} Courses qui ont été ajoutés à la database."
puts ""
sleep(3)
puts "THE HACKING CLASS #{"THC".blink}"