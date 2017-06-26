class Marca < ApplicationRecord

  def default_values
    self.name = self.nombre_marca
  end
end
