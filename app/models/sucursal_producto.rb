class SucursalProducto < ApplicationRecord
  belongs_to :producto
  belongs_to :sucursal
end
