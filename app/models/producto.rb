class Producto < ApplicationRecord
  belongs_to :clasificacion
  belongs_to :marca
  
end
