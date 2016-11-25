class AddDetailsToCharge < ActiveRecord::Migration[5.0]
  def change
    add_column :charges, :discapacidad, :boolean
    add_column :charges, :discapacidad_desc, :text
    add_column :charges, :viaje, :boolean
    add_column :charges, :etiqueta, :text
    add_column :charges, :estado, :string
    add_column :charges, :municipio, :string
    add_column :charges, :sector, :string
    add_column :charges, :idiomalvl, :string
  end
end
