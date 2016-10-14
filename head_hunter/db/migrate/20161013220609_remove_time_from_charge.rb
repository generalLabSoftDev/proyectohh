class RemoveTimeFromCharge < ActiveRecord::Migration[5.0]
  def change
    remove_column :charges, :time, :date
  end
end
