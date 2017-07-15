# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.destroy_all

c1 = Category.create(name: 'Computacion')
c1.products.create(name: 'Hp 2030',price:'199999')
c1.products.create(name: 'Hp 2730',price:'399999')

category = Category.create(name: 'Electro')
category.products.create(name: 'LG 2222',price:'1999999')
category.products.create(name: 'Samsung w3421',price:'299999')


category = Category.create(name: 'Telefonia')
p = category.products.create(name: 'Lg G6',price:'799999')
p.categories << c1
p = category.products.create(name: 'Samsung S8',price:'799999')
p.destroy

Product.last().update(premium: true)

Category.all().each do |category|
    category.name.upcase!
end