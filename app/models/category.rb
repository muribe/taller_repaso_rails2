class Category < ApplicationRecord
    has_and_belongs_to_many :products, dependent: :destroy
#     before_save :upper 
#     def upper
#         self.name.upcase!
#     end
end
