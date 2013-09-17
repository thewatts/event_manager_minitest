require './lib/phone_number'
require './lib/zipcode'

class Attendee

  attr_accessor :first_name, :last_name

  def initialize(data = {})
    @first_name   = data[:first_name]
    @last_name    = data[:last_name]
    @phone        = PhoneNumber.new(data[:phone_number])
    @zip          = ZipCode.new(data[:zipcode])
  end
  
  def phone_number
    @phone.number
  end

  def phone_number=(value)
    @phone = PhoneNumber.new(value)
  end

  def zipcode
    @zip.zipcode
  end

  def zipcode=(value)
    @zip = ZipCode.new(value)
  end

end
