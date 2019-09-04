juggle = User.create(display_name: 'The Jugglers', email: 'juggle@notarealemail.com', password: 'password')
music = User.create(display_name: 'musically inclined', email: 'music@notarealemail.com', password: 'password')
pickles = User.create(display_name: 'pickles', email: 'pickles@notarealemail.com', password: 'password')
glass = User.create(display_name: 'glasscreations', email: 'glass@notarealemail.com', password: 'password')
meat = User.create(display_name: 'Eat Your Meat', email: 'meat@notarealemail.com', password: 'password')
precious = User.create(display_name: 'Precious Things', email: 'precious@notarealemail.com', password: 'password')

juggle_job = Job.create(title: 'Experienced Juggler Needed', description: 'Established juggling act looking for a new member to train. Will start as an assistant to the show while learning the routines and be incorporated into the show over time.', user_id: juggle.id)
music_job = Job.create(title: 'Guitarist/Singer for Celtic Band', description: 'We are a celtic folk band looking for someone that can play guitar and sing.', user_id: music.id)
pickles_job = Job.create(title: 'Pickle Seller', description: 'I need someone to work my pickle booth in the mornings.', user_id: pickles.id)
glass_job = Job.create(title: 'Glass Blowing Apprentice', description: 'Looking to take on a new apprentice for my glass blowing shop. You will assist with the day to day tasks during the week, such as assisting on large projects and working on small pieces. During the weekend you will be a part of the demonstrations and assist with selling glass.', user_id: glass.id)
meat_job = Job.create(title: 'Cook', description: 'Need someone to cook for my food stand. Cooking meat on a grill. High volume, line experience needed.', user_id: meat.id)
precious_job = Job.create(title: 'Fine Metal Vendor', description: 'Precious Things is looking to hire on a new vendor. You will be selling fine metal jewlery. There may be opportunites to learn the trade during downtime. Week-work available for the right individual.', user_id: precious.id)

fire = Tag.create(name: 'Fire')
danger = Tag.create(name: 'Danger')
sharps = Tag.create(name: 'Sharps')
juggling = Tag.create(name: 'Juggling')
magic = Tag.create(name: 'Magic')
Tag.create(name: 'Dancing')
singing = Tag.create(name: 'Singing')
guitar = Tag.create(name: 'Guitar')
Tag.create(name: 'Drums')
vendor = Tag.create(name: 'Vendor')
artisan = Tag.create(name: 'Artisan')
metal = Tag.create(name: 'Metalworking')
glass_blowing = Tag.create(name: 'Glass Blowing')
food = Tag.create(name: 'Food Service')
cook = Tag.create(name: 'Cook')
Tag.create(name: 'Lanes')

juggling_job.tags << fire
juggling_job.tags << danger
juggling_job.tags << sharps
juggling_job.tags << juggling

music_job.tags << singing
music_job.tags << guitar

pickles_job.tags << vendor
pickles_job.tags << food

glass_job.tags << glass_blowing
glass_job.tags << artisan
glass_job.tags << vendor

meat_job.tags << food
meat_job.tags << cook

precious_job.tags << metal
precious_job.tags << vendor