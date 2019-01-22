require_relative 'event.rb'
require "pry"

class EventCreator
  def start_date
    puts "quand commence t-il ?"
    @start_date=gets.chomp
    def title
      puts "Quel est le titre de l'event ? "
      @title = gets.chomp
    end
    def length
      puts "quel est sa duree ?"
      @length=gets.chomp
    end
    def attendees
      puts "quels sont les personnes a inscrire ?"
      @attendees=gets.chomp
    end
  end


  binding.pry
