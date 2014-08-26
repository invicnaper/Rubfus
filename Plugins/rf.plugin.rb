=begin
 ____  _  _  ____  ____  _  _  ____
(  _ \/ )( \(  _ \(  __)/ )( \/ ___)
 )   /) \/ ( ) _ ( ) _) ) \/ (\___ \
(__\_)\____/(____/(__)  \____/(____/
@Author : hamza Bourrahim
@Description : Dofus 2.0 Emulator written in Ruby
@licence : GPL
=end

#file that will manage plugins , path and fonctions

require File.expand_path('../../Utils/rf.console',__FILE__)

module Plugins
  @dir = "Plugins/"
  @full_path = @dir + "xml_plugins/"
  @extension = "rfplug.xml"
  @array_files = -1
  def Plugins.load_all
    #loading all plugins
    #every plugin should have his own XML file
    puts Console.print_debug("Loading Plugins")
    @files = Dir.glob(@full_path + "*." + @extension)
    @array_files = @files
    if @files == ""
      puts Console.print_plugin("0 Plugin loaded !")
    else
      puts Console.print_plugin("#{@files} Plugins loaded !")
    end
  end
  def Plugins.read_plugin(path)
    #reading every plugin and execute it
    #reading rf files (rubfus files) and interpreting them
    #exemple rf file :
    #START RUBFUS <filename> // name of your plugin
    #my_message = "Bonjour dans mon serveur"
    #rubfus function
    #CONSOLE my_messgae //access to module console will draw my_message
    #end
    #end

  end
end
module RF_interpreter

end