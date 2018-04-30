require 'minitest/autorun'
require 'minitest/pride'
require './robot.rb'

class TestRobot < MiniTest::Test

  def test_that_foreign_robot_needing_repairs_sent_to_station_1

    # arrange
    #is robot foreign, does it need repairs
    # act
    foreign_damaged = Robot.new
    foreign_damaged.needs_repairs =  true
    foreign_damaged.foreign_model = true
    # assert
    assert_equal(1,foreign_damaged.station)
  end

  def test_that_vintage_robot_needing_repairs_sent_to_station_2
    # arrange
    #is robot vintage, does it need repairs
    # act
    vintage_damaged = Robot.new
    vintage_damaged.needs_repairs = true
    vintage_damaged.vintage_model = true
    # assert
    assert_equal(2,vintage_damaged.station)
  end

  def test_that_standard_robot_needing_repairs_sent_to_station_3
    # arrange

    # act
    standard_damaged = Robot.new
    standard_damaged.needs_repairs = true
    standard_damaged.vintage_model = false
    standard_damaged.foreign_model = false
    # assert
    assert_equal(3,standard_damaged.station)
  end

  def test_that_robot_in_good_condition_sent_to_station_4
    skip
    # arrange

    # act

    # assert
  end

  def test_prioritize_tasks_with_empty_todo_list_returns_negative_one
    skip
    # arrange

    # act

    # assert
  end

  def test_prioritize_tasks_with_todos_returns_max_todo_value
    skip
    # arrange

    # act

    # assert
  end

  def test_workday_on_day_off_returns_false
    skip
    # arrange

    # act

    # assert
  end

  def test_workday_not_day_off_returns_true
    skip
    # arrange

    # act

    # assert
  end

end
