puts "⛏️  Suppression des anciennes données..."
Room.destroy_all
Activity.destroy_all

puts "🌱 Création des chambres..."

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
  image_url: "rooms/suite1.jpg",
  slug: "suite1"
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
  image_url: "rooms/suite2.jpg",
  slug: "suite2"
)

puts "🌱 Création des activités dans la région..."

Activity.create!([
  {
    title: "Balades en bord de Loir",
    description: "Promenade agréable à seulement 300 mètres du lieu, au bord de la rivière Loir.",
    distance: "300m",
    image_url: "activities/loir_bord.jpg"
  },
  {
    title: "Balades en forêt",
    description: "Randonnées dans une belle forêt située à 2 km, idéale pour les amoureux de la nature.",
    distance: "2 km",
    image_url: "activities/foret.jpg"
  },
  {
    title: "Balades en vélo",
    description: "Possibilité d'apporter vos vélos ou d'en emprunter selon disponibilité, pour explorer la région.",
    distance: "-",
    image_url: "activities/velo.jpg"
  },
  {
    title: "Balades en bateau",
    description: "Activités nautiques accessibles dans la région pour toute la famille.",
    distance: "-",
    image_url: "activities/bateau.jpg"
  },
  {
    title: "Visites de châteaux et parcs",
    description: "Découvrez les magnifiques châteaux et parcs alentour, riches en histoire et nature.",
    distance: "-",
    image_url: "activities/chateau.jpg"
  },
  {
    title: "Canoë-kayak et paddle",
    description: "Activités sportives sur l'eau pour petits et grands.",
    distance: "-",
    image_url: "activities/canoe.jpg"
  },
  {
    title: "Visite d'Angers",
    description: "Ville historique à 20 km, pleine de culture et de gastronomie.",
    distance: "20 km",
    image_url: "activities/angers.jpg"
  },
  {
    title: "Zoo de La Flèche",
    description: "Parc zoologique situé à 15 km, idéal pour une sortie en famille.",
    distance: "15 km",
    image_url: "activities/zoo_la_fleche.jpg"
  },
  {
    title: "Terra Botanica",
    description: "Parc botanique unique situé à 25 km, à ne pas manquer.",
    distance: "25 km",
    image_url: "activities/terra_botanica.jpg"
  },
  {
    title: "Parc du Puy du Fou",
    description: "Grand parc à thème historique situé à 95 km, célèbre pour ses spectacles.",
    distance: "95 km",
    image_url: "activities/puy_du_fou.jpg"
  }
])

HomePhoto.destroy_all

HomePhoto.create!(slug: "accueil")

puts "✅ Seed terminé avec succès."
