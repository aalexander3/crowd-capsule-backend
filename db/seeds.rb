Category.destroy_all
User.destroy_all
Upload.destroy_all

space = Category.create(name: "Space")

admin = User.create(username: "Admin")

Upload.create(path: "https://images-assets.nasa.gov/image/a-sky-view-of-earth-from-suomi-npp_16611703184_o/a-sky-view-of-earth-from-suomi-npp_16611703184_o~medium.jpg", user: admin, category: space, caption: "Earth")
Upload.create(path: "https://images-assets.nasa.gov/image/PIA00342/PIA00342~orig.jpg", user: admin, category: space, caption: "Earth and Moon")
Upload.create(path: "https://images-assets.nasa.gov/image/GSFC_20171208_Archive_e000763/GSFC_20171208_Archive_e000763~orig.jpg", user: admin, category: space, caption: "Sun")
Upload.create(path: "https://images-assets.nasa.gov/image/PIA11998/PIA11998~orig.jpg", user: admin, category: space, caption: "Milky Way")
Upload.create(path: "https://images-assets.nasa.gov/image/from-a-million-miles-away-nasa-camera-shows-moon-crossing-face-of-earth_20129140980_o/from-a-million-miles-away-nasa-camera-shows-moon-crossing-face-of-earth_20129140980_o~orig.png", user: admin, category: space, caption: "Moon and Earth")
