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


    fine_robot = Robot.new

    assert_equal(4,fine_robot.station)
  end

  def test_prioritize_tasks_with_empty_todo_list_returns_negative_one


    robot_empty_todo_list = Robot.new

    assert_equal(-1,robot_empty_todo_list.prioritize_tasks)
  end

  def test_prioritize_tasks_with_todos_returns_max_todo_value


    busy_robot = Robot.new
    busy_robot.todos = [3,6,7,19,2,19]
    # assert

    assert_equal(19,busy_robot.prioritize_tasks)
  end

  def test_workday_on_day_off_returns_false

    # arrange

    relaxing_robot = Robot.new
    relaxing_robot.day_off = 1


    # assert

    refute(relaxing_robot.workday?(1))
  end

  def test_workday_not_day_off_returns_true

    # arrange

    relaxing_robot = Robot.new
    relaxing_robot.day_off = 1

    assert(relaxing_robot.workday?(2))
  end

end
