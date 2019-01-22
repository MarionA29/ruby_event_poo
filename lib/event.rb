require 'pry'
require 'time'

class Event
  attr_accessor :start_date, :length, :title, :attendees

  def initialize (save_date, save_length, save_title, save_attendees)
    @start_date= Time.parse(save_date)
    @length= save_length.to_i
    @title = save_title
    @attendees = save_attendees
  end

  def postpone_24h (postpone)
    @start_date = @start_date+(postpone)
  end

  def end_date
    end_date = @start_date + @length*60
  end

  def is_past
    if  Time.now > start_date
      return true
    end
    return false
  end

  def is_future
    !self.is_past
  end

  def is_soon
    if start_date-30*60<=Time.now
      return true
    end
    return false
  end

  def joli
    puts "Titre : #{@title}"
    puts "Date de début : #{@start_date}"
    puts "Durée : #{@length} minutes"
    puts "Invités : #{@attendees.join(", ")}"
  end

end


puts "end of file"
