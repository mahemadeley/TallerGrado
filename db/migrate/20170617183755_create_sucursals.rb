class CreateSucursals < ActiveRecord::Migration[5.1]
  def change
    create_table :sucursals do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.string :zona
      t.float :lon
      t.float :lat

      t.timestamps
    end
  end
end
