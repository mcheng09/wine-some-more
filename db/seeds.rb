require_relative '../models/wine.rb'

Wine.destroy_all

Wine.create({
  name: "Mike",
  year: "2008",
  vineyard: "Cheng",
  rating: "5",
  description: "A savory, rich, bold taste. Oak-barrel after-taste.",
  photo_url: "https://scontent.fsjc1-3.fna.fbcdn.net/v/t1.0-9/1931507_10207175242713685_7705771188921658429_n.jpg?oh=27f0c6afad52ffb8f2c48bc6c4f368ec&oe=582C0959",
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
