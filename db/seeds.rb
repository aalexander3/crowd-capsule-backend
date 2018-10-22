Category.destroy_all
User.destroy_all
Upload.destroy_all
Location.destroy_all

%W(Space Art Music Math Science Literature Technology).each do |w| Category.create(name: w) end

admin = User.create(username: "Admin")

Location.create([
  {name: "Tokyo",long: 139.6917, lat: 35.6895},
  {name: "Jakarta",long: 106.8650, lat: -6.1751},
  {name: "Delhi",long: 77.1025, lat: 28.7041},
  {name: "Manila",long: 120.9842, lat: 14.5995},
  {name: "Seoul",long: 126.9780, lat: 37.5665},
  {name: "Shanghai",long: 121.4737, lat: 31.2304},
  {name: "Karachi",long: 67.0099, lat: 24.8615},
  {name: "Beijing",long: 116.4074, lat: 39.9042},
  {name: "New York",long: -74.0059, lat: 40.7128},
  {name: "Guangzhou",long: 113.2644, lat: 23.1291},
  {name: "Sao Paulo",long: -46.6333, lat: -23.5505},
  {name: "Mexico City",long: -99.1332, lat: 19.4326},
  {name: "Mumbai",long: 72.8777, lat: 19.0760},
  {name: "Osaka",long: 135.5022, lat: 34.6937},
  {name: "Moscow",long: 37.6173, lat: 55.7558},
  {name: "Dhaka",long: 90.4125, lat: 23.8103},
  {name: "Greater Cairo",long: 31.2357, lat: 30.0444},
  {name: "Los Angeles",long: -118.2437, lat: 34.0522},
  {name: "Bangkok",long: 100.5018, lat: 13.7563},
  {name: "Kolkata",long: 88.3639, lat: 22.5726},
  {name: "Buenos Aires",long: -58.3816, lat: -34.6037},
  {name: "Tehran",long: 51.3890, lat: 35.6892},
  {name: "Istanbul",long: 28.9784, lat: 41.0082},
  {name: "Lagos",long: 3.3792, lat: 6.5244},
  {name: "Shenzhen",long: 114.0579, lat: 22.5431},
  {name: "Rio de Janeiro",long: -43.1729, lat: -22.9068},
  {name: "Kinshasa",long: 15.2663, lat: -4.4419},
  {name: "Tianjin",long: 117.3616, lat: 39.3434},
  {name: "Paris",long: 2.3522, lat: 48.8566},
  {name: "Lima",long: -77.0428, lat: -12.0464}

  ])

Upload.create(path: "https://images-assets.nasa.gov/image/a-sky-view-of-earth-from-suomi-npp_16611703184_o/a-sky-view-of-earth-from-suomi-npp_16611703184_o~medium.jpg", user: admin, category: Category.first, caption: "Earth", location: Location.random, upvotes: Random.rand(100))
Upload.create(path: "https://images-assets.nasa.gov/image/PIA00342/PIA00342~orig.jpg", user: admin, category: Category.first, caption: "Earth and Moon", location: Location.random, upvotes: Random.rand(100))
Upload.create(path: "https://images-assets.nasa.gov/image/GSFC_20171208_Archive_e000763/GSFC_20171208_Archive_e000763~orig.jpg", user: admin, category: Category.first, caption: "Sun", location: Location.random, upvotes: Random.rand(100))
Upload.create(path: "https://images-assets.nasa.gov/image/PIA11998/PIA11998~orig.jpg", user: admin, category: Category.first, caption: "Milky Way", location: Location.random, upvotes: Random.rand(100))
Upload.create(path: "https://images-assets.nasa.gov/image/from-a-million-miles-away-nasa-camera-shows-moon-crossing-face-of-earth_20129140980_o/from-a-million-miles-away-nasa-camera-shows-moon-crossing-face-of-earth_20129140980_o~orig.png", user: admin, category: Category.first, caption: "Moon and Earth", location: Location.random, upvotes: Random.rand(100))
Upload.create(path: "https://www.biography.com/.image/t_share/MTE4MDAzNDEwODQwOTQ2MTkw/ada-lovelace-20825279-1-402.jpg" , user: admin, category: Category.fifth, location: Location.random, caption: "Ada Lovelace", upvotes: Random.rand(100))
Upload.create(path: "https://images.muralsyourway.com/media/catalog/product/cache/1/base/1200x/040ec09b1e35df139433887a97daa66f/f/5/f5f82c36cb700077384d09cd4d15f764.jpeg" , user: admin, category: Category.second, location: Location.random, caption: "Hand of God and Adam", upvotes: Random.rand(100))
Upload.create(path: "https://www.usnews.com/dims4/USNEWS/76001e9/2147483647/thumbnail/640x420/quality/85/?url=http%3A%2F%2Fmedia.beam.usnews.com%2F72%2F83%2F0a792f08473fbb14dbbe59174bde%2Fresizes%2F1500%2F170905-transparentbody-editorial.jpg" , user: admin, category: Category.fifth, location: Location.random, caption: "Human body", upvotes: Random.rand(100))
Upload.create(path: "https://cdn1.medicalnewstoday.com/content/images/articles/320/320717/red-blood-cells.jpg" , user: admin, category: Category.fifth, location: Location.random, caption: "Blood Cells", upvotes: Random.rand(100))
Upload.create(path: "https://www.moma.org/media/W1siZiIsIjM4NjQ3MCJdLFsicCIsImNvbnZlcnQiLCItcmVzaXplIDIwMDB4MjAwMFx1MDAzZSJdXQ.jpg?sha=f6522ef85554762b" , user: admin, category: Category.second, location: Location.random, caption: "Dalí", upvotes: Random.rand(100))
Upload.create(path: "https://www.biography.com/.image/t_share/MTE5NTU2MzE2MjA1MzE5Njkx/frederick-douglass-9278324-1-402.jpg" , user: admin, category: Category.find_by(name:"Literature"), location: Location.random, caption: "Frederick Douglass", upvotes: Random.rand(100))
Upload.create(path: "https://cdn4.i-scmp.com/sites/default/files/styles/landscape/public/images/methode/2018/04/04/0247e4b6-371d-11e8-b7a4-1972cdd9f871_1280x720_120945.jpg?itok=kzhRGBqk" , user: admin, category: Category.fifth, location: Location.random, caption: "Albert Einstein", upvotes: Random.rand(100))
Upload.create(path: "https://www.biography.com/.image/t_share/MTIwNjA4NjMzODE4MjIwMDQ0/mahatma-gandhi-9305898-1-402.jpg" , user: admin, category: Category.find_by(name:"Literature"), location: Location.random, caption: "Gandhi", upvotes: Random.rand(100))
Upload.create(path: "http://ichef.bbci.co.uk/wwfeatures/wm/live/1280_640/images/live/p0/61/2q/p0612qt6.jpg" , user: admin, category: Category.second, location: Location.random, caption: "Girl with Pearl Earring", upvotes: Random.rand(100))
Upload.create(path: "https://www.buddhistdoor.net/upload/file/20180205/16015/5b29a152d258189ad30ea20b21e031a4_715__2.jpeg" , user: admin, category: Category.find_by(name:"Literature"), location: Location.random, caption: "Dalai Lama", upvotes: Random.rand(100))
Upload.create(path: "https://openlysecular.org/wp-content/uploads/2014/09/mariecurie2pic-1024x1024.jpg" , user: admin, category: Category.fifth, location: Location.random, caption: "Marie Curie", upvotes: Random.rand(100))
Upload.create(path: "https://cdn.britannica.com/s:300x500/24/189624-131-BAF1184D.jpg" , user: admin, category: Category.second, caption: "Mona Lisa" ,location: Location.random, upvotes: Random.rand(100))
Upload.create(path: "https://images.immediate.co.uk/volatile/sites/4/2018/07/GettyImages-200196289-001-c09dcc5.jpg?quality=45&crop=5px,0px,929px,400px&resize=960,413" , category: Category.fifth, caption: "Octopus" ,location: Location.random, user: admin, upvotes: Random.rand(100))
Upload.create(path: "https://www.faguowenhua.com/imaginary/fit?filename&height=600&type=webp&url=http%3A%2F%2Fapp%2Fsites%2Fdefault%2Ffiles%2F2018-07%2Fpablo-picasso-buste-de-femme-20-may-1938.jpg&width=800" , category: Category.second, caption: "Picasso" ,location: Location.random, user: admin, upvotes: Random.rand(100))
Upload.create(path: "https://cdn.britannica.com/s:700x450/63/133963-004-2A4F739D.jpg" , category: Category.fifth, caption: "Rhino Beetle" ,location: Location.random, user: admin, upvotes: Random.rand(100))
Upload.create(path: "https://www.farmersalmanac.com/wp-content/uploads/2015/02/Starry-Night-Van-Gogh-Which-Stars-GoogleArtProject.jpg" , category: Category.second, caption: "Starry Night" ,location: Location.random, user: admin, upvotes: Random.rand(100))
