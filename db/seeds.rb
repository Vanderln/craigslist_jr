require 'faker'


Category.create( description: "Electronics" )
Category.create( description: "Vacations" )
Category.create( description: "Books" )


Post.create(title: "Cheap Phone for Sale", 
            email: "innovateworld@gmail.com", 
            price: 25.00,
            category_id: 1,
            description: "Really ugly, broken phone for sale",
            edit_key: 111 )
# 10.times do
#   Post.create( name: Faker::Name.name,
#                 description: Faker::Lorem.paragraph)
# end


