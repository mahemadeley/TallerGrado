class CreateDetalleCompras < ActiveRecord::Migration[5.1]
  def change
    create_table :detalle_compras do |t|
      t.references :compra, foreign_key: true
      t.references :producto, foreign_key: true
      t.integer :cantidad
      t.float :total

      t.timestamps
    end
  end
end
