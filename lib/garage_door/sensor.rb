module GarageDoor
  SENSOR = 0 # 17 BCM GPIO
  LED    = 2 # 27 BCM GPIO

  def self.watch
    redis = Redis.new

    gpio.pin_mode SENSOR, WiringPi::INPUT
    gpio.pin_mode LED,    WiringPi::OUTPUT

    puts "Watching ..."

    loop do
      value = gpio.digital_read(SENSOR)
      open  = (value == WiringPi::HIGH)
      redis.set("garage-door-state", open ? "open" : "closed")
      gpio.digital_write LED, value
      sleep 1
    end
  end
end
