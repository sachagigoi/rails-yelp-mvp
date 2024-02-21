# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {
  name: "Dishoom",
  address: "7 Boundary St, London E2 7JE",
  phone_number: "5",
  category: "belgian"
}

le_petit_bistro = {
  name: "Le Petit Bistro",
  address: "15 Rue de la République, Paris",
  phone_number: "9876543210",
  category: "french"
}

sushi_sasa = {
  name: "Sushi Sasa",
  address: "2401 15th St, Denver, CO 80202",
  phone_number: "303-433-7272",
  category: "japanese"
}

mama_mia_trattoria = {
  name: "Mama Mia Trattoria",
  address: "123 Main St, New York, NY 10001",
  phone_number: "212-555-1234",
  category: "italian"
}

the_bamboo_garden = {
  name: "The Bamboo Garden",
  address: "789 Elm St, Seattle, WA 98101",
  phone_number: "206-555-5678",
  category: "chinese"
}

brasserie_belge = {
  name: "Brasserie Belge",
  address: "456 Grand Ave, Miami, FL 33133",
  phone_number: "305-555-7890",
  category: "belgian"
}

peking_palace = {
  name: "Peking Palace",
  address: "1001 Broadway, San Francisco, CA 94133",
  phone_number: "415-555-6789",
  category: "chinese"
}

trattoria_roma = {
  name: "Trattoria Roma",
  address: "555 Oak St, Chicago, IL 60611",
  phone_number: "312-555-9012",
  category: "italian"
}

sakura_sushi_bar = {
  name: "Sakura Sushi Bar",
  address: "789 Cherry Ave, Boston, MA 02108",
  phone_number: "617-555-3456",
  category: "japanese"
}

la_creperie = {
  name: "La Crêperie",
  address: "321 Maple St, Montreal, QC H3A 1L2",
  phone_number: "514-555-2345",
  category: "french"
}

[dishoom, le_petit_bistro, sushi_sasa, mama_mia_trattoria, the_bamboo_garden, brasserie_belge, peking_palace, trattoria_roma, sakura_sushi_bar, la_creperie].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
