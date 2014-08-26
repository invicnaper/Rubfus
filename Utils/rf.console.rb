=begin
 ____  _  _  ____  ____  _  _  ____
(  _ \/ )( \(  _ \(  __)/ )( \/ ___)
 )   /) \/ ( ) _ ( ) _) ) \/ (\___ \
(__\_)\____/(____/(__)  \____/(____/
@Author : hamza Bourrahim
@Description : Dofus 2.0 Emulator written in Ruby
@licence : GPL
=end
class String
  def black;          "\033[30m#{self}\033[0m" end
  def red;            "\033[31m#{self}\033[0m" end
  def green;          "\033[32m#{self}\033[0m" end
  def brown;          "\033[33m#{self}\033[0m" end
  def blue;           "\033[34m#{self}\033[0m" end
  def magenta;        "\033[35m#{self}\033[0m" end
  def cyan;           "\033[36m#{self}\033[0m" end
  def gray;           "\033[37m#{self}\033[0m" end
  def bg_black;       "\033[40m#{self}\033[0m" end
  def bg_red;         "\033[41m#{self}\033[0m" end
  def bg_green;       "\033[42m#{self}\033[0m" end
  def bg_brown;       "\033[43m#{self}\033[0m" end
  def bg_blue;        "\033[44m#{self}\033[0m" end
  def bg_magenta;     "\033[45m#{self}\033[0m" end
  def bg_cyan;        "\033[46m#{self}\033[0m" end
  def bg_gray;        "\033[47m#{self}\033[0m" end
  def bold;           "\033[1m#{self}\033[22m" end
  def reverse_color;  "\033[7m#{self}\033[27m" end
end
module Console
  VERSION = '0.0.1'

  def Console.print_debug(string)
    puts "[" + "Debug".cyan + "] : #{string} .."
  end
  def Console.print_error(string)
    puts "[" + "Error".red + "] : #{string}"
  end
  def Console.print_done(string)
    puts "[" + "Ok".green + "] : #{string}"
  end
  def Console.print_action(string)
    puts "[" + "Action".magenta + "] : #{string}"
  end
  def Console.print_server(string)
    puts "[" + "Server".blue + "] : #{string}"
  end
  def Console.print_mysql(string)
    puts "[" + "Mysql".gray + "] : #{string}"
  end
  def Console.print_packet(string)
    puts "[" + "packet".brown + "] : #{string}"
  end
  def Console.print_plugin(string)
    puts "[" + "plugin".brown + "] : #{string}"
  end
  def Console.header
    puts "=================================================".cyan
    puts "        RUBFUS        ".cyan
    puts "@Author : Invic".cyan
    puts "@Description : Dofus 2.0 Emulator written in Ruby".cyan
    puts "@Version : #{VERSION}".cyan
    puts "=================================================".cyan
  end
end