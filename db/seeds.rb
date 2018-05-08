# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Product.delete_all
for i in 1..9 do
  Product.create(:title => "Product #{i}",
                 :description =>
                     %{product description #{i}},
                 :image_url => 'https://images.yourstory.com/2016/08/125-fall-in-love.png?auto=compress',
                 :price => 29.99)
end


