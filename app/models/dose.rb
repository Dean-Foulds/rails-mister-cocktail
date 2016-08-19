class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, :cocktail, :ingredient, presence: true
  validates_uniqueness_of :ingredient_id, scope: [:cocktail_id]
end
