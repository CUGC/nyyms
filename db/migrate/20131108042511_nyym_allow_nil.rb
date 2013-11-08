class NyymAllowNil < ActiveRecord::Migration
  def up
    %w[school_name teacher_name teacher_email].each do |f|
      change_column :nyyms, f, :string, null: true
    end
    change_column :nyyms, :school_address, :text, null: true
  end

  def down
    %w[school_name teacher_name teacher_email school_address].each do |f|
      change_column :nyyms, f, :string, null: false
    end
  end
end
