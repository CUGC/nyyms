class AddPaymentPlanToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :payment_plan, :string, :null => false
    add_column :nyyms, :payment_plan, :string, :null => false
  end
end
