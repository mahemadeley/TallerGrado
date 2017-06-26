class Cliente < ApplicationRecord

  def default_values
    self.name = self.nombres
  end
end
