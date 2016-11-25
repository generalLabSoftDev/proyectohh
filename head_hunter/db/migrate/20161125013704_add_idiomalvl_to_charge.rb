class AddIdiomalvlToCharge < ActiveRecord::Migration[5.0]
  def change
    add_column :charges, :idiomalvl, :string
  end
end
