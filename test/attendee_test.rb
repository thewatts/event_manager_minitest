require './test/test_helper'
require './lib/attendee'

class AttendeeTest < MiniTest::Test
  
  def test_it_exists
    attendee = Attendee.new({})
    assert_kind_of Attendee, attendee
  end

  def test_it_is_initialized_from_a_hash_of_data
    data = {:first_name => 'George', :last_name => 'Washington', 
            :phone_number => '2024556677', :zipcode => '48823'}
    attendee = Attendee.new(data)
    assert_equal data[:first_name],   attendee.first_name
    assert_equal data[:last_name],    attendee.last_name
    assert_equal data[:phone_number], attendee.phone_number
    assert_equal data[:zipcode],      attendee.zipcode
  end

end
