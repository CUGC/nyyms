class Registration < ActiveRecord::Base
  attr_accessible :email, :name, :school_address, :school_name, :students_names
  
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/
  validates_inclusion_of :voice_part, :in => %w( tenor1 tenor2 baritone bass ), :message => "'%{value}' is not a possible option."
end
