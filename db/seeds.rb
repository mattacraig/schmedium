# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

html = Category.create(name: "HTML")
css = Category.create(name: "CSS")
javascript = Category.create(name: "Javascript")
rails = Category.create(name: "Rails")

# user = User.create(email: "me@ex.com", password: "password", name: "Matt Craig")

# 30.times do
#   Post.create(title: "Sample Post", body: "Tofu church-key direct trade wolf pork belly, photo booth 90's gentrify. Taxidermy meh kogi gastropub letterpress, jean shorts Banksy cronut trust fund banh mi sartorial forage. Aesthetic leggings banjo trust fund, synth beard before they sold out keffiyeh freegan chambray cronut crucifix stumptown. Bitters tofu kitsch direct trade, tote bag ennui pickled semiotics Blue Bottle four dollar toast. Photo booth Brooklyn mixtape kitsch squid seitan, skateboard meggings try-hard ennui migas fixie Portland art party. You probably haven't heard of them actually beard, church-key cronut Austin banjo. 3 wolf moon bitters PBR stumptown synth.

# Mustache bespoke bitters mlkshk, gastropub health goth aesthetic biodiesel 8-bit High Life ethical. Lomo Banksy street art, kitsch taxidermy distillery normcore keytar Vice forage put a bird on it Brooklyn Wes Anderson chillwave skateboard. Typewriter flannel Banksy, bespoke 3 wolf moon tilde roof party 90's semiotics keytar letterpress hella. Disrupt YOLO twee, yr taxidermy listicle High Life fap ennui synth mlkshk. Meditation banh mi four loko pork belly High Life, YOLO four dollar toast aesthetic drinking vinegar. Yr Williamsburg +1 dreamcatcher, flannel single-origin coffee paleo Bushwick disrupt aesthetic seitan irony cronut you probably haven't heard of them Etsy. Organic distillery post-ironic Brooklyn vegan.

# Aesthetic Carles DIY, gluten-free farm-to-table Echo Park wolf vegan trust fund gentrify 90's actually deep v PBR selfies. Messenger bag heirloom locavore wayfarers taxidermy freegan shabby chic. Fingerstache tofu bicycle rights paleo hashtag, cardigan narwhal wayfarers. Asymmetrical Schlitz gentrify, health goth trust fund Neutra paleo occupy leggings Kickstarter jean shorts beard. American Apparel literally XOXO, kitsch beard irony dreamcatcher ennui wayfarers fashion axe Wes Anderson chillwave. Tofu vinyl locavore fixie, PBR&B High Life four loko. Fixie Austin literally, aesthetic retro synth PBR.

# Chia VHS Odd Future Kickstarter. Salvia stumptown shabby chic swag semiotics occupy. Ugh Brooklyn whatever 90's Helvetica PBR&B. Kickstarter four dollar toast PBR Thundercats, Banksy distillery chambray vinyl viral gastropub shabby chic. DIY bicycle rights roof party pug, sustainable distillery salvia kale chips lomo street art. Jean shorts sriracha semiotics street art letterpress crucifix, kale chips plaid art party vegan. Occupy wolf cray YOLO PBR 8-bit.", user_id: 1, category_id: rand(1..4))
# end