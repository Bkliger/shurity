# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Answer.destroy_all
Option.destroy_all
Question.destroy_all
Category.destroy_all
User.destroy_all

user1=User.create(first_name:"joe",last_name:"blow")

cat_1 = Category.create(name: 'Bluetooth Speaker')
Category.create(name: 'Over-Ear Headphones')
Category.create(name: 'Home Theater Audio')

question_1 = Question.create(category_id: cat_1.id, text: 'Color', presentation_type: 'drop_down')
question_2 = Question.create(category_id: cat_1.id, text: 'Stereo', presentation_type: 'radio')
question_3 = Question.create(category_id: cat_1.id, text: 'Budget', presentation_type: 'slider')


Option.create(question_id: question_1.id, opt_value: 'Red')
Option.create(question_id: question_1.id, opt_value: 'Black')
Option.create(question_id: question_2.id, opt_value: 'Stereo')
Option.create(question_id: question_2.id, opt_value: 'Mono')
Option.create(question_id: question_3.id, opt_value: 'Budget')

Answer.create(category_id:cat_1.id, user_id: user1.id, question_id: question_2.id)
