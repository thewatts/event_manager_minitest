require './test/test_helper'
require './lib/representative'

class RepresentativeTest < MiniTest::Test
 
  def test_it_exists
    zipcode = "12345"
    rep = Representative.new(zipcode)
    assert_kind_of Representative, rep
  end

  def test_get_legislation_by_zip
    
  end

end
