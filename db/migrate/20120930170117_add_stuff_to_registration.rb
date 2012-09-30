class AddStuffToRegistration < ActiveRecord::Migration
  def change
    add_column :registrations, :students_voice_parts, :string
  end
end
