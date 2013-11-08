class SchoolAddressAsText < ActiveRecord::Migration
  def up
    change_column :registrations, :school_address, :text, null: false
  end

  def down
    change_column :registrations, :school_address, :string, null: false
  end
end
