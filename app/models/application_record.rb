class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  after_initialize :default_values
  attr_accessor :name

  def default_values
    
  end
end
