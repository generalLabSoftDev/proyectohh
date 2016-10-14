class CreateCompetencies < ActiveRecord::Migration[5.0]
  def change
    create_table :competencies do |t|
      t.text :descripcion
      t.string :nivel
      t.json :tag
      t.references :charge, foreign_key: true

      t.timestamps
    end
  end
end
