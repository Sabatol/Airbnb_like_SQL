class Dogsitter < ApplicationRecord
  has_many :dogs, through: :strolls
  has_many :strolls 
  belongs_to :city
end
