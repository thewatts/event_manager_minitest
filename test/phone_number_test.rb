require './test/test_helper'
require './lib/phone_number'

class PhoneNumberTest < MiniTest::Test
  
  def test_it_exists
    phone = PhoneNumber.new("1234567890")
    assert_kind_of PhoneNumber, phone
  end

  def test_it_cleans_phone_numbers_that_have_chars
    number = "(202) . 444-9382"
    phone  = PhoneNumber.new(number)
    assert_equal "2024449382", phone.number
  end

  def test_it_cleans_phone_numbers_that_are_not_ten_chars
    number = "( . 444-9382"
    phone  = PhoneNumber.new(number)
    assert_equal "0000000000", phone.number
  end
end
