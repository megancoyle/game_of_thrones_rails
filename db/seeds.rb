House.destroy_all
Character.destroy_all

house_list = [
  ["House Arryn", "/images/arryn.jpg"],
  ["House Baratheon", "/images/baratheon.jpg"],
  ["House Bolton", "/images/bolton.jpg"],
  ["House Frey", "/images/frey.jpg"],
  ["House Greyjoy", "/images/greyjoy.jpg"],
  ["House Lannister", "/images/lannister.jpg"],
  ["House Martell", "/images/martell.jpg"],
  ["House Stark", "/images/stark.jpg"],
  ["House Targaryen", "/images/targaryen.jpg"],
  ["House Tully", "/images/tully.jpg"],
  ["House Tyrell", "/images/tyrell.jpg"]
]

house_list.each do |name, image|
  House.create(name: name, img_url: image)
end

character_list = [
  ["Tyrion Lannister", "Male", "/images/characters/tyrion.jpg", 6],
  ["Jaime Lannister", "Male", "/images/characters/jaime.jpg", 6],
  ["Cersei Lannister", "Female", "/images/characters/cersei.jpg", 6],
  ["Daenerys Targaryen", "Female", "/images/characters/daenerys.jpg", 9],
  ["John Snow", "Male", "/images/characters/johnsnow.jpg", 8],
  ["Davos Seaworth", "Male", "/images/characters/davos.jpg", 2],
  ["Melisandre", "Female", "/images/characters/melisandre.jpg", 2],
  ["Sansa Stark", "Female", "/images/characters/sansa.jpg", 8],
  ["Arya Stark", "Female", "/images/characters/arya.jpg", 8],
  ["Bran Stark", "Male", "/images/characters/bran.jpg", 8],
  ["Ramsay Bolton", "Male", "/images/characters/ramsay.jpg", 3],
  ["Walder Frey", "Male", "/images/characters/walder.jpg", 4],
  ["Nymeria Sand", "Female", "/images/characters/nymeria.jpg", 7],
  ["Ellaria Sand", "Female", "/images/characters/ellaria.jpg", 7]
  ["Theon Greyjoy", "Male", "/images/characters/theon.jpg", 5],
  ["Margaery Tyrell", "Female", "/images/characters/margaery.jpg", 11]
]

character_list.each do |name, gender, image, house|
  Character.create(name: name, gender: gender, img_url: image, house_id: house)
end
