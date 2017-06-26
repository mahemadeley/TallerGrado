class Clasificacion < ApplicationRecord
  
  def default_values
    self.name = self.nombre
  end

end
