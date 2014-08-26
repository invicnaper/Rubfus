=begin
 ____  _  _  ____  ____  _  _  ____
(  _ \/ )( \(  _ \(  __)/ )( \/ ___)
 )   /) \/ ( ) _ ( ) _) ) \/ (\___ \
(__\_)\____/(____/(__)  \____/(____/
@Author : hamza Bourrahim
@Description : Dofus 2.0 Emulator written in Ruby
@licence : GPL
=end

require File.expand_path('../../../Utils/rf.all',__FILE__)

module IdentificationFailed
  PROTOCOLID = "20"
  REASON = 99
  def IdentificationFailed.build_packet
    protocol_hex = PROTOCOLID.convert_base(10, 16)

    return PROTOCOLID
  end
end