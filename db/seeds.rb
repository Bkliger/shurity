# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.destroy_all
Answer.destroy_all
Option.destroy_all
Question.destroy_all
Category.destroy_all
User.destroy_all

# user1=User.create(first_name:"joe",last_name:"blow")

cat_1 = Category.create(name: 'Bluetooth Speaker')
Category.create(name: 'Over-Ear Headphones')
Category.create(name: 'Home Theater Audio')

question_1 = Question.create(category_id: cat_1.id, text: 'Do the speakers need to be waterproof?', presentation_type: '1-reg-slider')
question_2 = Question.create(category_id: cat_1.id, text: 'Is portability important?', presentation_type: '1-reg-slider')
question_3 = Question.create(category_id: cat_1.id, text: 'How important is sound quality to you?', presentation_type: '1-reg-slider')
question_5 = Question.create(category_id: cat_1.id, text: 'How important is durability?', presentation_type: '1-reg-slider')
question_7 = Question.create(category_id: cat_1.id, text: 'Is Volume important?', presentation_type: '1-reg-slider')
question_8 = Question.create(category_id: cat_1.id, text: 'Battery Duration', presentation_type: '1-reg-slider')
question_9 = Question.create(category_id: cat_1.id, text: 'What is your maximum budget?', presentation_type: '2-slider')
question_10 = Question.create(category_id: cat_1.id, text: 'Color', presentation_type: '3-select')
question_4 = Question.create(category_id: cat_1.id, text: 'Speakerphone capable?', presentation_type: '3-select')
question_6 = Question.create(category_id: cat_1.id, text: 'Does the sound need to go in all directions?', presentation_type: '3-select')

Option.create(question_id: question_10.id, opt_value: 'Red')
Option.create(question_id: question_10.id, opt_value: 'Black')
Option.create(question_id: question_10.id, opt_value: 'White')
Option.create(question_id: question_10.id, opt_value: 'Grey')
Option.create(question_id: question_4.id, opt_value: 'Yes')
Option.create(question_id: question_4.id, opt_value: 'No')
Option.create(question_id: question_6.id, opt_value: 'Yes')
Option.create(question_id: question_6.id, opt_value: 'No')

Product.create(name: "Ivation Waterproof Bluetooth Swimming", desc: "Pool Floating Speaker",mpid: "5ccf829d285b049dc184a8c466d05b74", range: "10 meters",weight: "2 lbs",rechargeable: "n",
battery: "5",solar: "n",category_id: cat_1, image_URL: "https://www.google.com/imgres?imgurl=http%3A%2F%2Fcdnl.ritzcamera.com%2Fmedia%2Fcatalog%2Fproduct%2Fcache%2F1%2Fimage%2F9df78eab33525d08d6e5fb8d27136e95%2FI%2FV%2FIVSVPSBTW_14058.jpg&imgrefurl=http%3A%2F%2Fwww.ritzcamera.com%2Fproduct%2FIVSVPSBTW.htm&docid=R7XlyXWWlmRAjM&tbnid=kWrwgo7e-OoW3M%3A&w=456&h=500&itg=1&bih=745&biw=1310&ved=0ahUKEwiCnezqnfjMAhUnEFIKHQVJCXoQMwgfKAIwAg&iact=mrc&uact=8",)

Product.create(name: "Pyle Aqua SunBlast Bluetooth Floating Speaker System", mpid: "d0e463ff0553742d012b6eea4fa47d10",range: "10 meters",weight: "3.4 lbs",rechargeable: "y",
battery: "4",solar: "y",category_id: cat_1, image_URL: "https://www.google.com/imgres?imgurl=http%3A%2F%2Fecx.images-amazon.com%2Fimages%2FI%2F61Su3os8W%252BL._SY355_.jpg&imgrefurl=http%3A%2F%2Fwww.amazon.com%2FPyle-PWR95SBK-Bluetooth-Waterproof-Rechargeable%2Fdp%2FB00K303KPY&docid=zLnbk8ePgQtQrM&tbnid=qA42uqx_d5dEXM%3A&w=355&h=355&bih=745&biw=1310&ved=0ahUKEwjGgvfxn_jMAhUHVlIKHbNXB40QMwgeKAEwAQ&iact=mrc&uact=8",)

Product.create(name: "New Waterproof Portable Wireless Bluetooth Mini Speaker Shower Pool Car Handsfree", mpid: "4d313748141cbdfe6006071b4e36419d",model_num: "",range: "10 meters",weight: "45 grams",output: "",rechargeable: "y",
battery: "6",solar: "n",charge_time: "3 hrs",remote_buttons: "",speakerphone: "",bluetooth_ver: "3.0+",radio: "",waterproof_ip: "",dust_ip: "",category_id: cat_1, image_URL: "https://www.google.com/imgres?imgurl=http%3A%2F%2Fecx.images-amazon.com%2Fimages%2FI%2F510qe5CzVqL._SY355_.jpg&imgrefurl=http%3A%2F%2Fwww.amazon.com%2FBlue-Waterproof-Portable-Bluetooth-Handsfree%2Fdp%2FB00LNNTKKE&docid=hY401o7rOTQHhM&tbnid=mxl8ht60AIY4rM%3A&w=355&h=355&bih=805&biw=1338&ved=0ahUKEwjL_L-n-fjMAhVYE1IKHewTD2YQMwg-KAAwAA&iact=mrc&uact=8",)

Product.create(name: "Portable Waterproof Wireless Bluetooth adsorbable Mini WIFI Speaker For SHOWER POOL Handsfree", desc: "",mpid: "b79f5686211dfb876fc283b7340e1944",model_num: "spea-32",range: "10 meters",weight: "185 grams",output: "3 watts",rechargeable: "y",
battery: "6",solar: "n",charge_time: "",remote_buttons: "y",speakerphone: "y",bluetooth_ver: "3.0+",radio: "y",waterproof_ip: "4",dust_ip: "",category_id: cat_1, image_URL: "https://www.google.com/imgres?imgurl=http%3A%2F%2Fg03.a.alicdn.com%2Fkf%2FHTB16EOYJpXXXXanXpXXq6xXFXXXw%2FPortable-Waterproof-Wireless-Bluetooth-adsorbable-Mini-WIFI-Speaker-For-SHOWER-POOL-Handsfree-With-free-shipping.jpg&imgrefurl=http%3A%2F%2Fwww.aliexpress.com%2Fstore%2Fproduct%2FPortable-Waterproof-Wireless-Bluetooth-adsorbable-Mini-WIFI-Speaker-For-SHOWER-POOL-Handsfree-With-free-shipping%2F1915556_32461432132.html&docid=fUwFJeYYWjjFSM&tbnid=BeBGZVBLxe7XIM%3A&w=1000&h=1000&itg=1&bih=745&biw=1310&ved=0ahUKEwiKzsPS9fjMAhVUT1IKHZEaAV8QMwgcKAAwAA&iact=mrc&uact=8",)
