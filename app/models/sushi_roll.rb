class SushiRoll < ApplicationRecord
  belongs_to :user
  
  validates_presence_of :name, :price, :spicy
  validates_numericality_of :price
  validates_inclusion_of :spicy, in: %w(None Mild Spicy)

end
