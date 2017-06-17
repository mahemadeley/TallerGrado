class CreateMarcas < ActiveRecord::Migration[5.1]
  def change
    create_table :marcas do |t|
      t.string :nombre_marca

      t.timestamps
    end
  end
end
