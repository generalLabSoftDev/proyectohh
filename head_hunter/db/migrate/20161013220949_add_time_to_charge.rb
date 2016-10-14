class AddTimeToCharge < ActiveRecord::Migration[5.0]
  def change
    add_column :charges, :time, :date
  end
end
