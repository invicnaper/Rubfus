Rubfus
======

Rubfus is a Dofus 2.0 Emulator written in Ruby
![alt tag](http://nsa34.casimages.com/img/2014/08/26/14082607262422430.png)


how to use ?
======

Download source code and compile them using ruby railsinstaller (rf.main.rb)

Plugins
======

Rubfus has a great Plugins system ,  you can code your own plugin . ex : I wanna build a plugins that will just print a test string on the main console , so i will create a XML file : test_string.rfplug.xml : the file will contain

    <plugin name="lool">
    <info>
      <file>test.rf</file> //path of my rf file (RUBFUS file)
      <main>function</main> // the main function that will call first
      <description>rien</description> // description
      <author>Test</author> // author
      <executed>first</executed> // step when the plugin will be executed (first means the main console)
    </info>
    </plugin>
    
and then we will create test.rf , that will contain the code above :

    START RUBFUS lool // lool name of your plugin
    my_message = "Bonjour dans mon serveur"
    rubfus function// a simple function
      CONSOLE my_messgae //access to module console will draw my_message
    end
    end
    

