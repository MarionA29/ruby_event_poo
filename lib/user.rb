require "pry"

class User

  attr_accessor :email, :name
  @@array_of_all=[]
  @@hashing_of_all={}
  def initialize(email_to_save,name_to_save)
    @email = email_to_save
    @name = name_to_save

      @@array_of_all << email_to_save
      @@hashing_of_all[@email]= @name
  end

  def self.all
    return @@array_of_all
  end

  def self.find_by_email(email)
puts @@hashing_of_all[email]


  end


end

puts "end of file"
binding.pry
