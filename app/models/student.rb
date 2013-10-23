require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
  
  # attr_accessor :first_name, :last_name, :gender, :birthday, :phone, :email
  # attr_writer :age

  
  validates :email, :format => {:with => /\A.+@.+[.].{2,}\z/, :message => "email address must be validly formatted" }#, :uniqueness => true
  validates :email, :uniqueness => true 
  validates :age, :numericality => {only_integer: true, greater_than_or_equal_to: 5}
  validates :phone, :format => { :with => /(\d{3}).*(\d{3}).*(\d{4})/, :message => "phone number must be valid"}

  # def initialize #(params = {})
  #   # @first_name = params[:first_name]
  #   # @last_name = params[:last_name]
  #   # @gender = params[:gender]
  #   # @birthday = params[:birthday]
  #   # @age = params[:age]
  # end

  # def assign_attributes(params = {})
  #   @first_name = params[:first_name]
  #   @last_name = params[:last_name]
  #   @gender = params[:gender]
  #   @birthday = params[:birthday]
  #   @email = params[:email]
  #   @phone = params[:phone]
  #   @age = params[:age]
  # end

  # def name 
  #   first_name + " " + last_name
  # end

  def age
    DateTime.now.year - birthday.year
  end

  # def valid?
  #   if
  # end
end

# p DateTime.now.year - Date.parse('1988-04-24').year
