require_relative '../../db/config'

class Student < ActiveRecord::Base 
  validates :email, :format => {:with => /\A.+@.+[.].{2,}\z/, :message => "email address must be validly formatted" }#, :uniqueness => true
  validates :email, :uniqueness => true 
  validates :age, :numericality => {only_integer: true, greater_than_or_equal_to: 5}
  validates :phone, :format => { :with => /(\d{3}).*(\d{3}).*(\d{4})/, :message => "phone number must be valid"}
  
  def age
    DateTime.now.year - birthday.year
  end
end
