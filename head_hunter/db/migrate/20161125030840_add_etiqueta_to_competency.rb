class AddEtiquetaToCompetency < ActiveRecord::Migration[5.0]
  def change
    add_column :competencies, :etiqueta, :string
  end
end
