class Clasificacion < ApplicationRecord
  after_initialize :default_values
  attr_accessor :name

  def default_values
    self.name = self.nombre
  end

end
