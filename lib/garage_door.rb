begin
  require 'wiringpi'
rescue Exception => e
  if e.message[/Could not open library/]
    puts "Connection to gpio Failed"
  else
    raise e
  end
end
require 'redis'

require_relative 'garage_door/sensor'
require_relative 'garage_door/toggle'

module GarageDoor
  def self.state
    Redis.new.get("garage-door-state")
  end

  def self.gpio
    @gpio ||= WiringPi::GPIO.new
  end
end
