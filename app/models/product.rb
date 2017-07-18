class Product < ApplicationRecord
    has_and_belongs_to_many :categories
    scope :premium, ->  {where(premium: true)} 
    scope :last_n, -> (n) {limit(n).order('id desc')}
    before_destroy :antes
    def antes
        categories.each do |category|
            category.destroy if category.products.size < 2                                 
        end
    end

    def precio_final
        price - price*(categories.map(&:descuento).max)
    end
end
