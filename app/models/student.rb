require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
  
  attr_accessor :first_name, :last_name, :gender, :birthday
  attr_writer :age

  def initialize #(params = {})
    # @first_name = params[:first_name]
    # @last_name = params[:last_name]
    # @gender = params[:gender]
    # @birthday = params[:birthday]
    # @age = params[:age]
  end

  def assign_attributes(params = {})
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @gender = params[:gender]
    @birthday = params[:birthday]
    @email = params[:email]
    @phone = params[:phone]
    @age = params[:age]
  end

  def name 
    first_name + " " + last_name
  end

  def age
    DateTime.now.year - @birthday.year
  end
end

p DateTime.now.year - Date.parse('1988-04-24').year
