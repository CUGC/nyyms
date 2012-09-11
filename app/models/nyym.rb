class Nyym < ActiveRecord::Base
  attr_accessible :age, :email, :has_paid, :name, :payment_received_on, :phone_number, :school_name, :school_address, :teacher_email, :teacher_name, :voice_part
  
  validates_presence_of :age, :email, :name, :school_name, :school_address, :teacher_email, :teacher_name, :voice_part
  validates_format_of :phone_number, :message => "must be a valid telephone number.", :with => /^[\(\)0-9\- \+\.]{10,20} *[extension\.]{0,9} *[0-9]{0,5}$/i
  validates_format_of :email, :with => %r\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/
  validates_format_of :teacher_email, :with => %r\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/
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
