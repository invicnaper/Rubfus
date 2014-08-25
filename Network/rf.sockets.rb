=begin
 ____  _  _  ____  ____  _  _  ____
(  _ \/ )( \(  _ \(  __)/ )( \/ ___)
 )   /) \/ ( ) _ ( ) _) ) \/ (\___ \
(__\_)\____/(____/(__)  \____/(____/
@Author : hamza Bourrahim
@Description : Dofus 2.0 Emulator written in Ruby
@licence : GPL
=end

require 'socket'
require File.expand_path('../../Utils/rf.console',__FILE__)
require File.expand_path('../../Utils/rf.all',__FILE__)
require_relative 'rf.message'

module RF_Sockets
  CLIENT_CODE_CONNECTED = 1
  CLIENT_CODE_DISCONNECTED = -1
  SOCKET_ERROR = -2
  @port = 443                   #Geting Port from XML file
  @second_port = 444            #Geting Port from XML file
  @host = "127.0.0.1"           #Geting Host from XML file
  def RF_Sockets.simple_client
    #for testing sockets
    server = TCPServer.new(@host,@second_port)
    loop {
      client = server.accept
      client.puts(Time.now.ctime)
      client.close
    }
  end
  def RF_Sockets.multi_clients
    puts Console.print_debug("Initialising socket server")
    server = TCPServer.new(@host,@port)
    RF_Time.draw_time
    puts Console.print_done("Waiting for first client")
    loop {
      Thread.start(server.accept) do |client|

        client.puts(Time.now.ctime)
        puts Console.print_action("New client connected !")
        client.close
      end
    }
  end
  def RF_Sockets.new_socket
    puts Console.print_debug("Initialising socket server")
    portnumber = @port
    socketServer = TCPServer.new(@host,portnumber)
    RF_Time.draw_time
    puts Console.print_server("Server lunched on : #{@host}:#{@port} . Waiting for first client")
    while true
      Thread.new(socketServer.accept) do |connection|
        puts Console.print_action("New client connected : #{connection.peeraddr[2]}")
        #hello_client(connection)
        begin
          while connection
            incomingData = connection.gets("\0")
            if incomingData != nil
              incomingData = incomingData.chomp
            end

            puts Console.print_packet" #{incomingData}"

            if incomingData == "DISCONNECT\0"
              puts "Received: DISCONNECT, closed connection"
              connection.close
              break
            else
              connection.puts "#{incomingData}"
              connection.flush
            end
          end
        rescue Exception => e
          # Displays Error Message
          puts "#{ e } (#{ e.class })"
        ensure
          disconnect(connection)
          puts "ensure: Closing"
        end
      end
    end
  end
  def RF_Sockets.send_packets(my_client, packet)
    my_client.send(packet)
  end
  def RF_Sockets.hello_client(my_client)
    @rsa_key = RF_Rsa.generate_key
    @random_string = RF_util.random_string
    puts Console.print_action("Rsa key ==> #{@rsa_key}")
    my_client.puts(@random_string,@rsa_key)
  end
  def RF_Sockets.disconnect(my_client)
    my_client.close
    return CLIENT_CODE_DISCONNECTED
  end
  def RF_Sockets.generate_signature
    @signature = -1

    return @signature
  end
end