=begin
 ____  _  _  ____  ____  _  _  ____
(  _ \/ )( \(  _ \(  __)/ )( \/ ___)
 )   /) \/ ( ) _ ( ) _) ) \/ (\___ \
(__\_)\____/(____/(__)  \____/(____/
@Author : hamza Bourrahim
@Description : Dofus 2.0 Emulator written in Ruby
@licence : GPL
=end

require 'yaml'
require File.expand_path('../../../Utils/rf.all',__FILE__)

module HelloConnect
  PROTOCOLID = "3"
  def HelloConnect.build_packet
    message_id = [PROTOCOLID].pack('H*')
    #random_string = RF_util.random_string
    message_content = ["DDF5GSDFGGVH8ZU5PMDF2dfgf45"].pack('H*')

    return message_id + message_content
  end
  def HelloConnect.serialise(object)
    serialised_object = YAML::dump(object)

  end
  def HelloConnect.deserialise(object)
    deserialise_object = YAML::load(object)
  end
end
module ProtocolRequired
  PROTOCOLID = "1"
  @requiredversion = 0
  @currentversion = 0
  def ProtocolRequired.build_packet
    #1428
    message_id = [PROTOCOLID].pack('H*')
    message_content = ["1457"].pack('H*') + ["1457"].pack('H*')

    return message_id + message_content
  end
  def ProtocolRequired.serialise(object)
    serialised_object = YAML::dump(object)

  end
  def ProtocolRequired.deserialise(object)
    deserialise_object = YAML::load(object)
  end
end