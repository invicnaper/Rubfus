=begin
 ____  _  _  ____  ____  _  _  ____
(  _ \/ )( \(  _ \(  __)/ )( \/ ___)
 )   /) \/ ( ) _ ( ) _) ) \/ (\___ \
(__\_)\____/(____/(__)  \____/(____/
@Author : hamza Bourrahim
@Description : Dofus 2.0 Emulator written in Ruby
@licence : GPL
=end

require File.expand_path('../Config/rf.config',__FILE__)
require File.expand_path('../Utils/rf.console',__FILE__)
require File.expand_path('../XML/rf.xml_loader',__FILE__)
require File.expand_path('../Network/rf.sockets',__FILE__)
require File.expand_path('../Utils/rf.all',__FILE__)

begin

  usec_time = Time.new.usec
  sec_time = Time.new.sec
  $usec_first_time = usec_time
  $sec_first_time = sec_time

  #Showing console header
  header = Console.header

  #loading all Xml files
  rf_xml = RF_Xml.load_all

  #initialising sockets
  my_client = RF_Sockets.new_socket

  #Time , when the emulator will finish all actions
  loaded_usec_time = Time.new.usec - usec_time
  loaded_sec_time = Time.new.sec - sec_time
  puts Console.print_action("Been used for #{loaded_usec_time} usec => #{loaded_sec_time} sec")

rescue Exception => e
  puts Console.print_error(e)
  puts Console.print_error('rubfus will be closed')
end


