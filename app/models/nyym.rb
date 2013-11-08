class Nyym < ActiveRecord::Base
  attr_accessible :age, :email, :has_paid, :name, :payment_received_on
  attr_accessible :phone_number, :school_name, :school_address, :teacher_email
  attr_accessible :teacher_name, :voice_part, :payment_plan

  after_initialize :init
  def init
    self.age   ||= 0
    self.email ||= "none@example.com"
  end

  def self.voice_parts
    [
      "Tenor 1",
      "Tenor 2",
      "Baritone",
      "Bass"
    ]
  end

  validates_presence_of :name, :voice_part
  validates_format_of :email, with: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/
  validates_format_of :teacher_email, with: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/, allow_blank: true
  validates_inclusion_of :voice_part, in: self.voice_parts, message: "'%{value}' is not a possible option."
  validates_numericality_of :age

  def pretty
    "#{name} - #{voice_part}"
  end
end
