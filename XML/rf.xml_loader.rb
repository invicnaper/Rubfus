=begin
 ____  _  _  ____  ____  _  _  ____
(  _ \/ )( \(  _ \(  __)/ )( \/ ___)
 )   /) \/ ( ) _ ( ) _) ) \/ (\___ \
(__\_)\____/(____/(__)  \____/(____/
@Author : hamza Bourrahim
@Description : Dofus 2.0 Emulator written in Ruby
@licence : GPL
=end
require 'rexml/document'
require File.expand_path('../../Config/rf.config',__FILE__)
require File.expand_path('../../Utils/rf.console',__FILE__)
include REXML

module RF_Xml
  XML_NOT_FOUND = -1
  XML_FILE_ERROR = -2
  XML_FOUND = 0
  def RF_Xml.load_all
    realm = 0, game = 0, all = 0
    puts Console.print_debug('Loading XML files')
    if realm == 0
      puts Console.print_done('XML realm loaded !')
    else
      puts Console.print_error('Xml realm Not loaded !')
    end
    if game == 0
      puts Console.print_done('XML game loaded !')
    else
      puts Console.print_error('Xml game Not loaded !')
    end
    if all == 0
      puts Console.print_done('XML all loaded !')
    else
      puts Console.print_error('Xml all Not loaded !')
    end

  end
  def RF_Xml.load_realm_file
    xmlfile = File.new(XML_REALM_FILE)
    xmldoc = Document.new(xmlfile)
    root = xmldoc.root
    if root.attributs["type"] == 'realm'
      return XML_FOUND
    else
      return XML_NOT_FOUND
    end
  end
  def RF_Xml.load_game_file
    xmlfile = File.new(XML_GAME_FILE)
    xmldoc = Document.new(xmlfile)
    root = xmldoc.root
    if root.attributs["type"] == 'game'
      return XML_FOUND
    else
      return XML_NOT_FOUND
    end
  end
  def RF_Xml.load_all_file
    xmlfile = File.new(XML_ALL_FILE)
    xmldoc = Document.new(xmlfile)
    root = xmldoc.root
    if root.attributs["type"] == 'all'
      return XML_FOUND
    else
      return XML_NOT_FOUND
    end
  end
  def get_element(xml, element)

  end
end