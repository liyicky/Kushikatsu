# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(title: "Topic: #{topic}")
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: 
    """
    <h2>I gotta piss</h2>
    You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I don't know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that I'm breaking now. We said we'd say it was the snow that killed the other two, but it wasn't. Nature is lethal but it doesn't hold a candle to man.
    
    <h2>Hold on to your butts</h2>
    Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like they're actually proud of that shit. 
    """,
    topic_id: Topic.last.id
  )
end

puts "10 blogs created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skils created"

8.times do |portfolio|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio}",
    subtitle: "My Great Service",
    body: 
    """
    Fingerstache yuccie slow-carb williamsburg DIY. Palo santo 90's jianbing, coloring book next level YOLO banjo literally put a bird on it tumeric. Taxidermy thundercats humblebrag, marfa flexitarian kombucha food truck green juice tumeric tumblr roof party. Locavore activated charcoal small batch brunch gluten-free health goth brooklyn, enamel pin authentic. Distillery butcher four loko normcore intelligentsia kickstarter shoreditch disrupt microdosing skateboard seitan offal. Fam church-key flexitarian chambray vice normcore lomo mustache live-edge.
    Farm-to-table whatever disrupt flannel locavore. Hella hammock tousled, bespoke normcore mlkshk vexillologist health goth semiotics actually. Sustainable narwhal irony squid four loko. Pop-up godard kitsch, salvia shaman selvage man bun post-ironic semiotics viral whatever next level 3 wolf moon edison bulb. Deep v fixie waistcoat, freegan try-hard mumblecore ugh live-edge letterpress iPhone beard art party meh scenester copper mug. Shoreditch tofu wayfarers forage affogato asymmetrical.
    """,
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end

8.times do |portfolio|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio}",
    subtitle: "Angular",
    body: 
    """
    Fingerstache yuccie slow-carb williamsburg DIY. Palo santo 90's jianbing, coloring book next level YOLO banjo literally put a bird on it tumeric. Taxidermy thundercats humblebrag, marfa flexitarian kombucha food truck green juice tumeric tumblr roof party. Locavore activated charcoal small batch brunch gluten-free health goth brooklyn, enamel pin authentic. Distillery butcher four loko normcore intelligentsia kickstarter shoreditch disrupt microdosing skateboard seitan offal. Fam church-key flexitarian chambray vice normcore lomo mustache live-edge.
    Farm-to-table whatever disrupt flannel locavore. Hella hammock tousled, bespoke normcore mlkshk vexillologist health goth semiotics actually. Sustainable narwhal irony squid four loko. Pop-up godard kitsch, salvia shaman selvage man bun post-ironic semiotics viral whatever next level 3 wolf moon edison bulb. Deep v fixie waistcoat, freegan try-hard mumblecore ugh live-edge letterpress iPhone beard art party meh scenester copper mug. Shoreditch tofu wayfarers forage affogato asymmetrical.
    """,
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end

puts "9 portfolios created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Tech #{technology}"
  )
end

puts "3 technologies created"