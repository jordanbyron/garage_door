module GarageDoor
  SENSOR = 17
  LED    = 27

  def self.watch
    redis = Redis.new

    gpio.mode SENSOR, INPUT
    gpio.mode LED,    OUTPUT

    puts "Watching ..."

    loop do
      open = (gpio.read(SENSOR) == 1)
      redis.set("garage-door-state", open ? "open" : "closed")
      gpio.write LED, open
      sleep 1
    end
  end
end
