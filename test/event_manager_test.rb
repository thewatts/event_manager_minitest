require './test/test_helper'

require './event_manager.rb'

class EventManagerTest < MiniTest::Test

  def setup 
    @attendee_data = 
      [
        {
          :first_name => "George", :last_name => "Washington",
          :phone_number => "5172434516", :zipcode => "12345"
        },
        {
          :first_name => "Abe", :last_name => "Lincoln",
          :phone_number => "5172434516", :zipcode => "123"
        }
      ]
  end

  def test_it_exists
    # assign
    em = EventManager.new

    # actions
    # assertions
    assert_kind_of EventManager, em
  end
  
  def test_it_has_a_default_filename
    em = EventManager.new
    assert_equal "event_attendees.csv", em.filename
  end

  def test_it_receives_a_filename
    em = EventManager.new("new_attendees.csv")
    assert_equal "new_attendees.csv", em.filename
  end

  def test_getting_attendees_from_file
    em = EventManager.new
    attendees = em.get_attendees_from_file(@attendee_data)
    george = attendees[0]
    assert_equal 2, attendees.count
    assert_equal "George",     george.first_name
    assert_equal "Washington", george.last_name
    assert_equal "5172434516", george.phone_number
    assert_equal "12345",      george.zipcode
  end
end
