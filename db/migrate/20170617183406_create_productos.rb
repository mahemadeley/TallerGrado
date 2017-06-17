class CreateProductos < ActiveRecord::Migration[5.1]
  def change
    create_table :productos do |t|
      t.references :clasificacion, foreing_key: true
      t.references :marca, foreign_key: true
      t.string :nombre
      t.float :precio
      t.integer :stock
      t.date :vencimiento
      t.date :produccion

      t.timestamps
    end
  end
end
