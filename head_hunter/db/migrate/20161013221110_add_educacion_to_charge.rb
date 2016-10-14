class AddEducacionToCharge < ActiveRecord::Migration[5.0]
  def change
    add_column :charges, :educacion, :string
  end
end
