require 'pi_piper'
require 'redis'

require_relative 'garage_door/sensor'
require_relative 'garage_door/toggle'

module GarageDoor
  def self.state
    Redis.new.get("garage-door-state")
  end
end
