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
  description: "A 3-inch sticker of the Sex Pistols logo in pink and yellow.",
  supplier_id: 2
)

Product.create(
  name: "Dead Kennedys Sticker",
  price: 2.0,
  description: "A 2-inch vinyl sticker of the Dead Kennedys logo.",
  supplier_id: 2
)

Product.create(
  name: "Descendents Sticker",
  price: 3.0,
  description: "An 8-inch vinyl sticker of the punk band Descendents featuring Milo",
  supplier_id: 1
)

Product.create(
  name: "Black Flag Sticker",
  price: 1.0,
  description: "A 3-inch vinyl sticker of the band Black Flag's logo.",
  supplier_id: 1
)

Product.create(
  name: "Misfits Sticker",
  price: 2.0,
  description: "A 3-inch vinyl sticker of the Crimson Ghost Misfits logo.",
  supplier_id: 1
)

Image.create(
  product_id: 1,
  url: "https://i.ebayimg.com/images/g/xN8AAOSwBkNb-HhA/s-l1200.jpg"
)

Image.create(
  product_id: 1,
  url: "https://i.etsystatic.com/10170765/r/il/a971cb/1695202882/il_fullxfull.1695202882_k0v9.jpg"
)

Image.create(
  product_id: 2,
  url: "https://m.media-amazon.com/images/I/41y+fo2cY+L._AC_UF894,1000_QL80_.jpg"
)

Image.create(
  product_id: 2,
  url: "https://www.stogieswv.com/cdn/shop/products/pixelcut-export-1671216554833.jpg?v=1671645142&width=1946"
)

Image.create(
  product_id: 3,
  url: "https://m.media-amazon.com/images/I/61LPRMNVJhL.jpg"
)

Image.create(
  product_id: 3,
  url: "https://render.fineartamerica.com/images/rendered/default/surface/sticker/images/artworkimages/medium/3/descendents-official-merchandise-everything-sucks-oleg-aster-transparent.png?&targetx=62&targety=0&imagewidth=875&imageheight=1000&modelwidth=1000&modelheight=1000&backgroundcolor=646464&stickerbackgroundcolor=transparent&orientation=0&producttype=sticker-3-3&v=8"
)

Image.create(
  product_id: 4,
  url: "https://sstsuperstore.com/cdn/shop/products/SSTS15.jpg?v=1632148061"
)

Image.create(
  product_id: 4,
  url: "https://headlinerecords.com/cdn/shop/products/21STICKER.jpg?v=1738206652"
)

Image.create(
  product_id: 5,
  url: "https://headlinerecords.com/cdn/shop/products/799_281_29.jpg?v=1738202272"
)


Image.create(
  product_id: 5,
  url: "https://res.cloudinary.com/teepublic/image/private/s--cDX0ewNu--/t_Resized%20Artwork/c_fit,g_north_west,h_954,w_954/co_000000,e_outline:48/co_000000,e_outline:inner_fill:48/co_ffffff,e_outline:48/co_ffffff,e_outline:inner_fill:48/co_bbbbbb,e_outline:3:1000/c_mpad,g_center,h_1260,w_1260/b_rgb:eeeeee/c_limit,f_auto,h_630,q_auto:good:420,w_630/v1652636752/production/designs/30345012_0.jpg"
)
