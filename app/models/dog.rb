class Dog < ApplicationRecord
  has_many :dogsitters, through: :strolls
  has_many :strolls 
  belongs_to :city
end
