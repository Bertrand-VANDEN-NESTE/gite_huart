# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Room.create!(
  title: "Chambre Double avec Salle de Bains Privative",
  content: "Spacieuse chambre double avec vue sur jardin, équipée d'une salle de bains privative avec douche et sèche-cheveux, parquet, machine à café, armoire et mobilier de jardin.",
  views: 0,
  price: 75.0,
  capacity: 2,
  bed_count: 1,
  bathroom: true,
  size: "25 m²",
  features: "WiFi gratuit, chauffage, mobilier de jardin, entrée privée, machine à café, sèche-cheveux",
  image_url: "https://cf.bstatic.com/xdata/images/hotel/max1024x768/472159190.jpg?k=2c572e6e3cb77c7e1b0c3b50dded9c55a1c5d85fbd7a9f3d91c49f38adfdd7d8&o=&hp=1"
)

Room.create!(
  title: "Chambre Familiale",
  content: "Chambre familiale avec vue sur le jardin, bureau, mobilier de jardin et salle de bains privative. Elle convient parfaitement aux familles ou petits groupes.",
  views: 0,
  price: 90.0,
  capacity: 4,
  bed_count: 3,
  bathroom: true,
  size: "35 m²",
  features: "WiFi gratuit, mobilier de jardin, bureau, salle de bains privative, chauffage",
  image_url: "https://cf.bstatic.com/xdata/images/hotel/max1024x768/472159220.jpg?k=f3d3c5778433a2eb9e063032e77a5e663f505f5d1679cd8a5c72a81d3d9a8c56&o=&hp=1"
)

