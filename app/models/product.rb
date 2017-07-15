class Product < ApplicationRecord
    has_and_belongs_to_many :categories
    scope :premium, ->  {where(premium: True)} 
end
