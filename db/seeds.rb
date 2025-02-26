# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Product.create(
  name: "Sex Pistols Sticker",
  price: 1.0,
  image_url: "https://i.ebayimg.com/images/g/xN8AAOSwBkNb-HhA/s-l1200.jpg",
  description: "A 3-inch sticker of the Sex Pistols logo in pink and yellow.",
  supplier_id: 2
)

Product.create(
  name: "Dead Kennedys Sticker",
  price: 2.0,
  image_url: "https://m.media-amazon.com/images/I/41y+fo2cY+L._AC_UF894,1000_QL80_.jpg",
  description: "A 2-inch vinyl sticker of the Dead Kennedys logo.",
  supplier_id: 2
)

Product.create(
  name: "Descendents Sticker",
  price: 3.0,
  image_url: "https://m.media-amazon.com/images/I/61LPRMNVJhL.jpg",
  description: "An 8-inch vinyl sticker of the punk band Descendents featuring Milo",
  supplier_id: 1
)

Product.create(
  name: "Black Flag Sticker",
  price: 1.0,
  image_url: "https://sstsuperstore.com/cdn/shop/products/SSTS15.jpg?v=1632148061",
  description: "A 3-inch vinyl sticker of the band Black Flag's logo.",
  supplier_id: 1
)

Product.create(
  name: "Misfits Sticker",
  price: 2.0,
  image_url: "https://headlinerecords.com/cdn/shop/products/799_281_29.jpg?v=1738202272",
  description: "A 3-inch vinyl sticker of the Crimson Ghost Misfits logo.",
  supplier_id: 1
)
