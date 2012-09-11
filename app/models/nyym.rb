class Nyym < ActiveRecord::Base
  attr_accessible :age, :email, :has_paid, :name, :payment_received_on, :phone_number, :school_name, :school_address, :teacher_email, :teacher_name, :voice_part
  
  def self.voice_parts
    {
      "Tenor 1" => "tenor1",
      "Tenor 2" => "tenor2",
      "Baritone" => "baritone",
      "Bass" => "bass"
    }
  end
  
end
