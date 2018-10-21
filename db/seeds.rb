Category.destroy_all
User.destroy_all
Upload.destroy_all

space = Category.create(name: "Space")

admin = User.create(username: "Admin")

Location.create([
  {long: 139.6917, lat: 35.6895},
  {long: 106.8650, lat: -6.1751},
  {long: 77.1025, lat: 28.7041},
  {long: 120.9842, lat: 14.5995},
  {long: 126.9780, lat: 37.5665},
  {long: 121.4737, lat: 31.2304},
  {long: 67.0099, lat: 24.8615},
  {long: 116.4074, lat: 39.9042},
  {long: -74.0059, lat: 40.7128},
  {long: 113.2644, lat: 23.1291},
  {long: -46.6333, lat: -23.5505},
  {long: -99.1332, lat: 19.4326},
  {long: 72.8777, lat: 19.0760},
  {long: 135.5022, lat: 34.6937},
  {long: 37.6173, lat: 55.7558},
  {long: 90.4125, lat: 23.8103},
  {long: 31.2357, lat: 30.0444},
  {long: -118.2437, lat: 34.0522},
  {long: 100.5018, lat: 13.7563},
  {long: 88.3639, lat: 22.5726},
  {long: -58.3816, lat: -34.6037},
  {long: 51.3890, lat: 35.6892},
  {long: 28.9784, lat: 41.0082},
  {long: 3.3792, lat: 6.5244},
  {long: 114.0579, lat: 22.5431},
  {long: -43.1729, lat: -22.9068},
  {long: 15.2663, lat: -4.4419},
  {long: 117.3616, lat: 39.3434},
  {long: 2.3522, lat: 48.8566},
  {long: -77.0428, lat: -12.0464}

  ])
20.times do
Upload.create(path: "https://images-assets.nasa.gov/image/a-sky-view-of-earth-from-suomi-npp_16611703184_o/a-sky-view-of-earth-from-suomi-npp_16611703184_o~medium.jpg", user: admin, category: space, caption: "Earth", location: Location.random)
Upload.create(path: "https://images-assets.nasa.gov/image/PIA00342/PIA00342~orig.jpg", user: admin, category: space, caption: "Earth and Moon", location: Location.random)
Upload.create(path: "https://images-assets.nasa.gov/image/GSFC_20171208_Archive_e000763/GSFC_20171208_Archive_e000763~orig.jpg", user: admin, category: space, caption: "Sun", location: Location.random)
Upload.create(path: "https://images-assets.nasa.gov/image/PIA11998/PIA11998~orig.jpg", user: admin, category: space, caption: "Milky Way", location: Location.random)
Upload.create(path: "https://images-assets.nasa.gov/image/from-a-million-miles-away-nasa-camera-shows-moon-crossing-face-of-earth_20129140980_o/from-a-million-miles-away-nasa-camera-shows-moon-crossing-face-of-earth_20129140980_o~orig.png", user: admin, category: space, caption: "Moon and Earth", location: Location.random)
end
