require 'minitest/autorun'
require_relative '../lib/gear_wheel' #name of file with class

class GearTest < Minitest::Test

  def test_calculates_gear_inches
    wheel = Wheel.new(26, 1.5)
    gear = Gear.new(
      :chainring => 52,
      :cog       => 11,
      :wheel     => wheel
    )
    assert_in_delta(137, gear.gear_inches, 0.1)
  end

  def test_calculates_ration
    gear = Gear.new(
      :chainring => 52,
      :cog       => 11
    )
    assert_in_delta(4.72, gear.ratio, 0.01)
  end

end
