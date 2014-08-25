=begin
 ____  _  _  ____  ____  _  _  ____
(  _ \/ )( \(  _ \(  __)/ )( \/ ___)
 )   /) \/ ( ) _ ( ) _) ) \/ (\___ \
(__\_)\____/(____/(__)  \____/(____/
@Author : hamza Bourrahim
@Description : Dofus 2.0 Emulator written in Ruby
@licence : GPL
=end
$path = 'XML/'

#XML Game file location
XML_GAME_FILE = $path + 'xml_game_file.xml'

#XML REALM file location
XML_REALM_FILE = $path + 'xml_realm_file.xml'

#XML ALL file location
XML_ALL_FILE = $path + 'xml_all_file.xml'

$rf_host    = 'localhost'   #DB host
$rf_db      = 'rubfus'      #DB database
$rf_user    = 'root'        #DB user
$rf_pass    = ''            #DB pass
$rf_prefix  = 'rubfus_'     #DB_prefix