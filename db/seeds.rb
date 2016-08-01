House.destroy_all

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
