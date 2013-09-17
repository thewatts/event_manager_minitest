require './test/test_helper'
require './lib/zipcode'

class ZipCodeTest < MiniTest::Test

  def test_it_exists
    zipcode = "12345"
    zip     = ZipCode.new(zipcode)
    assert_kind_of ZipCode, zip
  end

  def test_it_cleans_zip_codes_that_are_missing
    zip = ZipCode.new
    assert_equal "00000", zip.zipcode
  end

  def test_it_cleans_zip_codes_that_are_short
    zipcode = "345"
    zip = ZipCode.new(zipcode)
    assert_equal "00345", zip.zipcode
  end

  def test_it_cleans_zip_codes_that_have_non_integers
    zipcode = "BAHA"
    zip = ZipCode.new(zipcode)
    assert_equal "00000", zip.zipcode
  end

end
