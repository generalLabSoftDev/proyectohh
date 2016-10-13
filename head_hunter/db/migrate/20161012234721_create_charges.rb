class CreateCharges < ActiveRecord::Migration[5.0]
  def change
    create_table :charges do |t|
      t.string :nombre
      t.string :cliente
      t.string :area
      t.string :sede
      t.string :idioma
      t.date :time
      t.integer :anosexp

      t.timestamps
    end
  end
end
