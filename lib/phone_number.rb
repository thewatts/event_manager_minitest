class PhoneNumber

  attr_accessor :number
  
  def initialize(number)
    @number = clean(number)
  end

  def clean(number)
    if number
      number = number.scan(/[0-9]/).join
      if number.length == 1 && number.start_with?("1")
        number.slice!(1..-1)
      end
      if number.length != 10
        number = "0000000000"
      end

      number
    end
  end

end
