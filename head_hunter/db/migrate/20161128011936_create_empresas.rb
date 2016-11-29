class CreateEmpresas < ActiveRecord::Migration[5.0]
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.string :rif
      t.string :contraseña
      t.string :correo

      t.timestamps
    end
  end
end
