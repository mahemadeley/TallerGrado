class CreateCompras < ActiveRecord::Migration[5.1]
  def change
    create_table :compras do |t|
      t.references :cliente, foreign_key: true
      t.references :pago, foreign_key: true
      
      t.timestamps
    end
  end
end
