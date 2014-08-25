=begin
 ____  _  _  ____  ____  _  _  ____
(  _ \/ )( \(  _ \(  __)/ )( \/ ___)
 )   /) \/ ( ) _ ( ) _) ) \/ (\___ \
(__\_)\____/(____/(__)  \____/(____/
@Author : hamza Bourrahim
@Description : Dofus 2.0 Emulator written in Ruby
@licence : GPL
=end

#This file will contains all utils modules for rubfus like time and others

require_relative 'rf.console'
require 'openssl'

$usec_first_time = -1
$sec_first_time = -1
module RF_Time
  def RF_Time.draw_time
    #using usec and sec
    @loaded_usec = Time.new.usec - $usec_first_time
    @loaded_sec = Time.new.sec - $sec_first_time
    puts Console.print_action("Loaded on #{@loaded_usec} usec => #{@loaded_sec} sec")
  end
end
module RF_Hash

end
module RF_Logs
  LOGFILE_NOT_FOUND = -1
  def write_log(string,type)

  end
end
module RF_Rsa
  def RF_Rsa.generate_key
    rsa_key = OpenSSL::PKey::RSA.new(1024)
    cipher = OpenSSL::Cipher::Cipher.new('des3')
    private_key = rsa_key.to_pem(cipher,'rubfus')
    public_key = rsa_key.public_key.to_pem
    key_pair = private_key + public_key
    return key_pair
  end
end
module RF_util
  def RF_util.random_string
    random_string = rand(30**length).to_s(30)
    return random_string
  end
end