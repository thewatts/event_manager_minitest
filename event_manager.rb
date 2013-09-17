require 'csv'
require './lib/attendee'

class EventManager

  attr_accessor :filename

  def initialize(filename="event_attendees.csv")
    @filename  = filename
  end

  def attendees
    attendees = get_attendees_from_file(file_data)
  end

  def file_data
    @data ||= CSV.open filename, headers: true, header_converters: :symbol
  end

  def get_attendees_from_file(attendee_csv_data)
    attendee_csv_data.collect do |row|
      attendee = Attendee.new(row)
    end
  end

end
