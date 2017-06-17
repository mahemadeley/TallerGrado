class CreateDetalleCreditos < ActiveRecord::Migration[5.1]
  def change
    create_table :detalle_creditos do |t|
      t.references :cliente, foreign_key: true
      t.references :credito, foreign_key: true
      t.float :monto

      t.timestamps
    end
  end
end
