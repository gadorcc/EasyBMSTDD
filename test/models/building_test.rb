require "test_helper"

class BuildingTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "should not save building without company" do
    building = Building.new(name: "Palestra", address: "SW1 5TR", building_type: "office", user_id: 1)
    assert_not building.valid?, "Saved without company"
    puts "building has a company name"
  end
end
