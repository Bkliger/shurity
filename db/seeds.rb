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

Product.create(name: "Ivation Waterproof Bluetooth Swimming", desc: "Pool Floating Speaker",mpid: "5ccf829d285b049dc184a8c466d05b74", range: "10 meters",weight: "2 lbs",rechargeable: "n", output: "4 watts",
battery: "5",solar: "n",category_id: cat_1.id, image_URL: "http://cdnl.ritzcamera.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/I/V/IVSVPSBTW_14058.jpg",score: "75", batch_no: 1)

Product.create(name: "Pyle Aqua SunBlast Bluetooth Floating Speaker System", mpid: "d0e463ff0553742d012b6eea4fa47d10",range: "10 meters",weight: "3.4 lbs",rechargeable: "y",score: "72", batch_no: 1,
battery: "4",solar: "y",category_id: cat_1.id, image_URL: "http://ecx.images-amazon.com/images/I/61Su3os8W%2BL._SY355_.jpg",)

Product.create(name: "New Waterproof Portable Wireless Bluetooth Mini Speaker Shower Pool Car Handsfree", mpid: "4d313748141cbdfe6006071b4e36419d",model_num: "",range: "10 meters",weight: "45 grams",output: "",rechargeable: "y", score: "79",batch_no: 1,
battery: "6",solar: "n",charge_time: "3 hrs",remote_buttons: "",speakerphone: "",bluetooth_ver: "3.0+",radio: "",waterproof_ip: "",dust_ip: "",category_id: cat_1.id, image_URL: "http://ecx.images-amazon.com/images/I/510qe5CzVqL._SY355_.jpg",)

Product.create(name: "Portable Waterproof Wireless Bluetooth adsorbable Mini WIFI Speaker For SHOWER POOL Handsfree", desc: "",mpid: "b79f5686211dfb876fc283b7340e1944",model_num: "spea-32",range: "10 meters",weight: "185 grams",output: "3 watts",rechargeable: "y", score: "84", batch_no: 1,
battery: "6",solar: "n",charge_time: "",remote_buttons: "y",speakerphone: "y",bluetooth_ver: "3.0+",radio: "y",waterproof_ip: "4",dust_ip: "",category_id: cat_1.id, image_URL: "http://g03.a.alicdn.com/kf/HTB16EOYJpXXXXanXpXXq6xXFXXXw/Portable-Waterproof-Wireless-Bluetooth-adsorbable-Mini-WIFI-Speaker-For-SHOWER-POOL-Handsfree-With-free-shipping.jpg",)

Product.create(name: "Waterproof Bluetooth Speaker with Pool Floaty Shower Wall Attachment", desc: "",mpid: "7cbb739ce772df5194efddae029fc3ce",model_num: "MODB00VJYXFS0",range: "10 meters",weight: "3.6 lbs",output: "4 watts",rechargeable: "y", score: "62", batch_no: 1,
battery: "6",solar: "n",charge_time: "",remote_buttons: "y",speakerphone: "y",bluetooth_ver: "3.0+",radio: "y",waterproof_ip: "4",dust_ip: "",category_id: cat_1.id, image_URL: "http://ecx.images-amazon.com/images/I/51EDvMzypyL._SX425_.jpg",)

Product.create(name: "Floating Bluetooth Speaker", desc: "",mpid: "a8a79575ac3a4b3db41d4f98a02be5e5",model_num: "MODB00VJYXFS0",range: "9 meters",weight: "15.2 ounces",output: "3 watts",rechargeable: "n", score: "88", batch_no: 1,
battery: "8",solar: "n",charge_time: "",remote_buttons: "y",speakerphone: "n",bluetooth_ver: "3.0+",radio: "y",waterproof_ip: "7",dust_ip: "",category_id: cat_1.id, image_URL: "http://www.brookstone.com/dis/dw/image/v2/AAYH_PRD/on/demandware.static/-/Sites-itemmaster_Brookstone/default/dw1a84c23a/hi-res/994080p.jpg?sw=500",)

Product.create(name: "Bang & Olufsen Natural BeoPlay A2", desc: "",mpid: "c05a2330bab777a39e04d3c75883b8f8",model_num: "1290963",range: "10",weight: "2.5 lbs",output: "15 watts",rechargeable: "y", score: "88", batch_no: 2,
battery: "24",solar: "n",charge_time: "",remote_buttons: "y",speakerphone: "n",bluetooth_ver: "4",radio: "n",waterproof_ip: "0",dust_ip: "2",category_id: cat_1.id, image_URL: "https://i.ytimg.com/vi/jzcc5MVBesU/maxresdefault.jpg",)

Product.create(name: "Bose® SoundLink® III | Portable Bluetooth Speaker", desc: "",mpid: "6f089198db16d8a52a97b9d3c1e6db86",model_num: "B00OD5BMM8",range: "10",weight: "3 lbs",output: "18 watts",rechargeable: "y", score: "86", batch_no: 2,
battery: "14",solar: "n",charge_time: "3",remote_buttons: "y",speakerphone: "n",bluetooth_ver: "4",radio: "n",waterproof_ip: "0",dust_ip: "0",category_id: cat_1.id, image_URL: "https://images-na.ssl-images-amazon.com/images/G/01/aplus/detail-page/bose_soundlinkiii_hero.jpg",)

Product.create(name: "Marshall Audio Stockwell Portable Bluetooth Speaker", desc: "",mpid: "5497f2972831bee8d5e4b1a71b94ce95",model_num: "9SIA1J23R23527",range: "10",weight: "1.2 kg",output: "27 watts",rechargeable: "y", score: "89", batch_no: 2,
battery: "25",solar: "n",charge_time: "",remote_buttons: "y",speakerphone: "y",bluetooth_ver: "4",radio: "n",waterproof_ip: "0",dust_ip: "0",category_id: cat_1.id, image_URL: "http://www.bhphotovideo.com/images/images2500x2500/marshall_audio_04091451_stockwell_speaker_with_case_1182314.jpg",)

Product.create(name: "RIVA Turbo X", desc: "",mpid: "1509f89e1600174a6bdc66a2b2ab7441",model_num: "9SIA1J23R23527",range: "10",weight: "3 lbs",output: "45 watts",rechargeable: "y", score: "92", batch_no: 2,
battery: "26",solar: "n",charge_time: "",remote_buttons: "y",speakerphone: "y",bluetooth_ver: "4",radio: "n",waterproof_ip: "2",dust_ip: "2",category_id: cat_1.id, image_URL: "http://theshownewport.com/wp-content/uploads/2015/05/Riva-Turbo-black-angle-top.jpeg",)
