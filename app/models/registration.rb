class Registration < ActiveRecord::Base
  attr_accessible :email, :name, :school_address, :school_name, :students_names, :students_voice_parts, :payment_plan
  
  validates_presence_of :email, :name, :school_address, :school_name, :students_names, :students_voice_parts, :payment_plan
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/

end
