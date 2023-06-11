require "test_helper"

class BuildingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save building without company" do
    building = Building.new
    assert_not building.valid?
  end
end
