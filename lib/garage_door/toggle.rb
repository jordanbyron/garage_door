module GarageDoor
  RELAY=22

  def self.toggle  
    pin = PiPiper::Pin.new(pin: RELAY, direction: :out)
    
    pin.on
    sleep 1
    pin.off
    
    puts "Toggled"
  end
end
