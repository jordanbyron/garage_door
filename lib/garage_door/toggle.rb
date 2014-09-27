module GarageDoor
  RELAY = 22

  def self.toggle
    gpio.mode RELAY, OUTPUT

    gpio.write RELAY, 1
    sleep 1
    gpio.write RELAY, 0

    puts "Toggled"
  end
end
