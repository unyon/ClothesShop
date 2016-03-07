# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.destroy_all
# Size.destroy_all
# Category.destroy_all

def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/#{file_name}.jpg"))
end


# category = Category.create(kind: 'Dresses')
# category.save!
# category = Category.create(kind: 'Sweaters')
# category.save!
# category = Category.create(kind: 'Shirts & Tops')
# category.save!
# category = Category.create(kind: 'Tees & More')
# category.save!
# category = Category.create(kind: 'Jackets & Coats')
# category.save!
# category = Category.create(kind: 'Pants & Shorts')
# category.save!
# category = Category.create(kind: 'Skirts')
# category.save!
# category = Category.create(kind: 'Shoes & Boots')
# category.save!
# category = Category.create(kind: 'Bags')
# category.save!
# category = Category.create(kind: 'Jewelry')
# category.save!

# size = Size.create(name: '0')
# size.save!
# size = Size.create(name: '2')
# size.save!
# size = Size.create(name: '4')
# size.save!
# size = Size.create(name: '6')
# size.save!
# size = Size.create(name: '8')
# size.save!
# size = Size.create(name: '10')
# size.save!
# size = Size.create(name: 'Small')
# size.save!
# size = Size.create(name: 'Medium')
# size.save!
# size = Size.create(name: 'Large')
# size.save!
# size = Size.create(name: 'X-Large')
# size.save!


product = Product.create(title: 'Black Boots Size 8', description: 'Yada yada yada.  
	More info. Brand. Size.', gender: 'Women', condition: 'Used', brand: 'J.Crew',
	size_id: 68, category_id: 68, price: '33', sale: false, 
	photo: seed_image('bwblouse'))
product.save!

product = Product.create(title: 'Black Boots Size 8', description: 'Yada yada yada.  
	More info. Brand. Size.', gender: 'Women', condition: 'Used', brand: 'J.Crew',
	size_id: 68, category_id: 68, price: '33', sale: false, 
	photo: seed_image('wbstripe'))
product.save!

product = Product.create(title: 'Black Boots Size 8', description: 'Yada yada yada.  
	More info. Brand. Size.', gender: 'Women', condition: 'Used', brand: 'J.Crew',
	size_id: 68, category_id: 68, price: '33', sale: false, 
	photo: seed_image('reddress2'))
product.save!

product = Product.create(title: 'Black Boots Size 8', description: 'Yada yada yada.  
	More info. Brand. Size.', gender: 'Women', condition: 'Used', brand: 'J.Crew',
	size_id: 68, category_id: 68, price: '33', sale: false, 
	photo: seed_image('bluetrousers'))
product.save!

product = Product.create(title: 'Black Boots Size 8', description: 'Yada yada yada.  
	More info. Brand. Size.', gender: 'Women', condition: 'Used', brand: 'J.Crew',
	size_id: 68, category_id: 68, price: '33', sale: false, 
	photo: seed_image('reddressstripe'))
product.save!

product = Product.create(title: 'Black Boots Size 8', description: 'Yada yada yada.  
	More info. Brand. Size.', gender: 'Women', condition: 'Used', brand: 'J.Crew',
	size_id: 68, category_id: 68, price: '33', sale: false, 
	photo: seed_image('nike'))
product.save!

product = Product.create(title: 'Black Boots Size 8', description: 'Yada yada yada.  
	More info. Brand. Size.', gender: 'Women', condition: 'Used', brand: 'J.Crew',
	size_id: 68, category_id: 68, price: '33', sale: false, 
	photo: seed_image('blackboots'))
product.save!

product = Product.create(title: 'Black Boots Size 8', description: 'Yada yada yada.  
	More info. Brand. Size.', gender: 'Women', condition: 'Used', brand: 'J.Crew',
	size_id: 68, category_id: 68, price: '33', sale: false, 
	photo: seed_image('blackboots'))
product.save!



		