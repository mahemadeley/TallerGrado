class CreateCreditos < ActiveRecord::Migration[5.1]
  def change
    create_table :creditos do |t|
      t.float :monto_total

      t.timestamps
    end
  end
end
