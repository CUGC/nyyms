class CreateNyyms < ActiveRecord::Migration
  def change
    create_table :nyyms do |t|
      t.string :name, :null => false
      t.string :email, :null => false
      t.integer :age, :null => false
      t.string :school_name, :null => false
      t.string :school_address, :null => false
      t.string :teacher_name, :null => false
      t.string :teacher_email, :null => false
      t.string :voice_part, :null => false
      t.string :phone_number
      t.boolean :has_paid, :null => false, :default => false
      t.date :payment_received_on

      t.timestamps
    end
  end
end
