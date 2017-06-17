class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.string :nit
      t.string :nombre
      t.string :correo
      t.string :telefono

      t.timestamps
    end
  end
end
