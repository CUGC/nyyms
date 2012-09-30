class AddPaymentPlanToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :payment_plan, :null => false
    add_column :nyyms, :payment_plan, :null => false
  end
end
