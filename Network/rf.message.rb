=begin
 ____  _  _  ____  ____  _  _  ____
(  _ \/ )( \(  _ \(  __)/ )( \/ ___)
 )   /) \/ ( ) _ ( ) _) ) \/ (\___ \
(__\_)\____/(____/(__)  \____/(____/
@Author : hamza Bourrahim
@Description : Dofus 2.0 Emulator written in Ruby
@licence : GPL
=end

require File.expand_path('../../Utils/rf.console',__FILE__)
require_relative 'rf.data'

module Rf_packet
  BIT_RIGHT_SHIFT_LEN_PACKET_ID = 2
  BIT_MASK = 3
  @message_id = -1
  def Rf_packet.data_unpack(data)
    data.unpack('H2' * data.size)
  end
  def Rf_packet.data_pack(data)
    data.pack('H2' * data.size)
  end
  def Rf_packet.writepacket(data)
    packet = data.bytes
    data_packet = data
    typelen = ComputeTypeLen(data.size)
    header = SubComputeStaticHeader(@message_id, typelen)
    data.puts(header)

    case typelen
      when 0

      when 1
        RF_writer.WriteByte(data.size)
      when 2
        RF_writer.WriteShort(data.size)
      when 3
        RF_writer.WriteByte(data.size << 16 & 255)
        RF_writer.WriteShort(data.size & 65535)
      else
        puts Console.print_error("Can't encode this packet")
    end

  end
  def Rf_packet.ComputeTypeLen(param1)
    if param > 65535
      return 3
    end
    if param > 225
      return 2
    end
    if param > 0
      return 1
    end
    return 0
  end
  def Rf_packet.SubComputeStaticHeader(id, typelen)
    return id << BIT_RIGHT_SHIFT_LEN_PACKET_ID | typelen
  end
end