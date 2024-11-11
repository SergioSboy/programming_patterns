require 'singleton'

class Configuration
  include Singleton

  attr_accessor :setting

  def initialize
    @setting = 'default value'
  end
end

config = Configuration.instance
config.setting = 'new value'

config2 = Configuration.instance
puts config2.setting