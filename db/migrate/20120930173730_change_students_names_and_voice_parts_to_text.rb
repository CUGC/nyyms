class ChangeStudentsNamesAndVoicePartsToText < ActiveRecord::Migration
  def up
    change_column :registrations, :students_names, :text, :null => false
    change_column :registrations, :students_voice_parts, :text, :null => false
  end

  def down
    change_column :registrations, :students_names, :string, :null => false
    change_column :registrations, :students_voice_parts, :string, :null => false
  end
end
