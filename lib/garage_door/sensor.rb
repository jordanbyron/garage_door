module GarageDoor
  SENSOR=17
  LED=27
  def self.watch
    redis = Redis.new

    # Set default door state
    magnet_sensor = PiPiper::Pin.new(pin: SENSOR, direction: :in, pull: :down)
    redis.set("garage-door-state", magnet_sensor.on? ? "open" : "closed")

    puts "Watching ..."

    led = PiPiper::Pin.new(pin: LED, direction: :out)

    PiPiper.watch pin: SENSOR, pull: :down do
      redis.set("garage-door-state", on? ? "open" : "closed")
      led.update_value(value)
    end

    PiPiper.wait
  end
end
