class Nyym < ActiveRecord::Base
  attr_accessible :age, :email, :has_paid, :name, :payment_received_on, :phone_number, :school_name, :school_address, :teacher_email, :teacher_name, :voice_part

  validates_presence_of :name, :school_name, :school_address, :teacher_email, :teacher_name, :voice_part
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/
  validates_format_of :teacher_email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/
  validates_inclusion_of :voice_part, :in => %w( tenor1 tenor2 baritone bass ), :message => "'%{value}' is not a possible option."
  validates_numericality_of :age

  def self.voice_parts
    {
      "Tenor 1" => "tenor1",
      "Tenor 2" => "tenor2",
      "Baritone" => "baritone",
      "Bass" => "bass"
    }
  end
  
end
