# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# # Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
Special.destroy_all
Comedian.destroy_all

comedian_1 = Comedian.create(name: "Bill Burr", age: 50, city: "Canton, MA", image_url: "https://image.masslive.com/home/mass-media/width960/img/entertainment/photo/nashville-comedy-festival-21d347107e975672.jpg")
comedian_2 = Comedian.create(name: "Joe Rogan", age: 51, city: "Newark, NJ", image_url: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwil2d6_-YvhAhUR0IMKHSTACf4QjRx6BAgBEAU&url=https%3A%2F%2Fwaaf.radio.com%2Fblogs%2Fanthony-capobianco%2F13-rockers-have-appeared-joe-rogan-experience&psig=AOvVaw1DfyJPblSkSVLayC7G5let&ust=1553007377857892")
comedian_3 = Comedian.create(name: "Louis C.K.", age: 51, city: "Washington, D.C.", image_url: "https://media1.fdncms.com/pittsburgh/imager/u/blog/13239255/louis_ck_kuwait_crop_cropped.jpg?cb=1548183367")
comedian_4 = Comedian.create(name: "Joey Diaz", age: 55, city: "Havana, Cuba", image_url: "https://comedycentral.mtvnimages.com/images/ccstandup/comedians/800x600/JoeyDiaz_800x600.jpg?quality=0.91&width=320&height=320&crop=true")
comedian_5 = Comedian.create(name: "Chad Daniels", age: 43, city: "Fergus Falls, MN", image_url: "https://www.rumorscomedyclub.com/wp-content/uploads/2016/09/Chad-2019-bio.jpg")
comedian_6 = Comedian.create(name: "Kevin Hart", age: 39, city: "Philadelphia, PA", image_url: "http://www.philly.com/resizer/bHw4bvIexfBozzYo6gSgV1vpEXk=/1400x932/center/middle/arc-anglerfish-arc2-prod-pmn.s3.amazonaws.com/public/DBTWGCGWV5C7ZJBACNCBPOCUWE.jpg")
comedian_7 = Comedian.create(name: "Dave Chappelle", age: 45, city: "Washington, D.C.", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTII3JGyHZiZx-tRsKYcDk8jotJ6kK6yGNiCof1mLfTw5DxekFZtg")
comedian_8 = Comedian.create(name: "Chris Rock", age: 53, city: "Andrews, SC", image_url: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/02/14/14/chris-rock-netflix.jpg?w968")
comedian_9 = Comedian.create(name: "Tom Segura", age: 39, city: "Cincinnati, OH", image_url: "https://pixel.nymag.com/imgs/daily/vulture/2018/07/12/splitsider/879409292.w700.h467.2x.jpg")
comedian_10 = Comedian.create(name: "Ari Shaffir", age: 44, city: "New York City, NY", image_url: "https://i2.wp.com/www.foodrepublic.com/wp-content/uploads/2016/02/Ari-Shaffir-TINH-1.jpg?resize=1400%2C2100")
comedian_11 = Comedian.create(name: "Theo Von", age: 38, city: "Mandeville, LA", image_url: "https://uproxx.files.wordpress.com/2016/02/theo-von-no-offense-feature.jpg?quality=95")
comedian_12 = Comedian.create(name: "Jerry Seinfeld", age: 64, city: "Brooklyn, NY", image_url: "https://www.gannett-cdn.com/-mm-/aec403ad632f33650ec1aa7926a673a5a6b987b8/c=420-0-2149-1300/local/-/media/2015/09/17/Westchester/Westchester/635780965457520146--ASBBrd-07-27-2012-PressMon-1-A002-2012-07-26-IMG-People-Seinfeld-7-1-4U1UD.jpg?width=534&height=401&fit=crop")

comedian_1.specials.create(name: "Walk Your Way Out", runtime_mins: 77)
comedian_1.specials.create(name: "I'm Sorry You Feel That Way", runtime_mins: 80)
comedian_1.specials.create(name: "You People Are All The Same", runtime_mins: 69 )
comedian_2.specials.create(name: "Strange Times", runtime_mins: 63)
comedian_2.specials.create(name: "Triggered", runtime_mins: 63)
comedian_2.specials.create(name: "Rocky Mountain High", runtime_mins: 63)
comedian_3.specials.create(name: "Oh My God", runtime_mins: 58)
comedian_3.specials.create(name: "Live At The Beacon Theater", runtime_mins: 63)
comedian_3.specials.create(name: "Hilarious", runtime_mins: 88)
comedian_4.specials.create(name: "Sociably Unacceptable", runtime_mins: 57)
comedian_5.specials.create(name: "As Is", runtime_mins: 52)
comedian_6.specials.create(name: "I'm A Grown Little Man", runtime_mins: 73)
comedian_6.specials.create(name: "Let Me Explain", runtime_mins: 75)
comedian_6.specials.create(name: "What Now?", runtime_mins: 96)
comedian_7.specials.create(name: "Equaniminity", runtime_mins: 60)
comedian_7.specials.create(name: "Killin' Them Softly", runtime_mins: 57)
comedian_8.specials.create(name: "Kill The Messanger", runtime_mins: 79)
comedian_8.specials.create(name: "Bigger & Blacker", runtime_mins: 65)
comedian_8.specials.create(name: "Never Scared", runtime_mins: 80)
comedian_9.specials.create(name: "Mostly Stories", runtime_mins: 73)
comedian_9.specials.create(name: "Completely Normal", runtime_mins: 74)
comedian_10.specials.create(name: "Paid Regular", runtime_mins: 73)
comedian_10.specials.create(name: "Passive Aggressive", runtime_mins: 60)
comedian_11.specials.create(name: "No Offense", runtime_mins: 66)
comedian_12.specials.create(name: "Jerry Before Seinfeld", runtime_mins: 62)
