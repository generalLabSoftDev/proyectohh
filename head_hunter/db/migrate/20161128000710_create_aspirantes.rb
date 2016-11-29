class CreateAspirantes < ActiveRecord::Migration[5.0]
  def change
    create_table :aspirantes do |t|
      t.string :nombres
      t.string :apellidos
      t.integer :cedula
      t.string :sexo
      t.string :fecha
      t.string :correo
      t.string :contraseña
      t.integer :telefono
      t.string :estado
      t.string :municipio
      t.integer :celular
      t.string :discapacidad
      t.string :intereses
      t.string :bachillerato
      t.string :mencion
      t.string :institucion
      t.string :estudios_universitarios
      t.string :institucion_otros_estudios
      t.string :area_universidad

      t.timestamps
    end
  end
end
