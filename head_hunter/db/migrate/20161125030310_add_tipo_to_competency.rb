class AddTipoToCompetency < ActiveRecord::Migration[5.0]
  def change
    add_column :competencies, :tipo, :string
  end
end
