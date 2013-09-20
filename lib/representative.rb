require 'sunlight/congress'

class Representative

  def initialize(zipcode)
    Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"
    @zipcode = zipcode
  end

  def legislators
    @legislators ||= get_legislation_by_zip
  end

  def get_legislation_by_zip
    Sunlight::Congress::Legislator.by_zipcode(@zipcode) if @zipcode
  end

end
