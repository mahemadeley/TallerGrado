class CreateSucursalProductos < ActiveRecord::Migration[5.1]
  def change
    create_table :sucursal_productos do |t|
      t.references :producto, foreign_key: true
      t.references :sucursal, foreign_key: true

      t.timestamps
    end
  end
end
