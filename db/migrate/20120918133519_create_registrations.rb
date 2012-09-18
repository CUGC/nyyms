class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name, :null => false
      t.string :email, :null => false
      t.string :students_names, :null => false
      t.string :school_name, :null => false
      t.string :school_address, :null => false

      t.timestamps
    end
  end
end
