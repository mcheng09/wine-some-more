require_relative '../models/wine.rb'

Wine.destroy_all

Wine.create({
  name: "Mike",
  year: "2008",
  vineyard: "Cheng",
  rating: "5",
  description: "A savory, rich, bold taste. Oak-barrel after-taste.",
  photo_url: "",
  price: "100",
  user: "mcheng09",
  })

Wine.create({
  name: "NightingGale",
  year: "2008",
  vineyard: "Beringer",
  rating: "4.5",
  description: "It was amazing. The taste is soooo sweet. Best wine ever. I would recommend this shit. For real. Ok you caught me. Honestly I'm just trying to write a lot and see how it comes out. If this fails then meep! It was amazing. The taste is soooo sweet. Best wine ever. I would recommend this shit. For real. Ok you caught me. Honestly I'm just trying to write a lot and see how it comes out. If this fails then meep! It was amazing. The taste is soooo sweet. Best wine ever. I would recommend this shit. For real. Ok you caught me. Honestly I'm just trying to write a lot and see how it comes out. If this fails then meep! ",
  photo_url: "http://cdn1.bigcommerce.com/server1700/e6b77/products/1474/images/1551/beringer-nightingale-napa-semillon-sauvignon-blanc-botrytised__69990.1325887121.1280.1280.jpg?c=2",
  price: "60",
  user: "bubba_wu"
  })
