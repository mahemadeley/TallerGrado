class CreatePagos < ActiveRecord::Migration[5.1]
  def change
    create_table :pagos do |t|
      t.float :monto_pago

      t.timestamps
    end
  end
end
