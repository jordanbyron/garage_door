module GarageDoor
  RELAY = 3 # 22 BCM GPIO

  def self.toggle
    gpio.pin_mode RELAY, WiringPi::OUTPUT

    gpio.digital_write RELAY, WiringPi::HIGH
    sleep 1
    gpio.digital_write RELAY, WiringPi::LOW

    puts "Toggled"
  end
end
