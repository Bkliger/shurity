# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Option.destroy_all
Question.destroy_all
Category.destroy_all



cat_1 = Category.create(name: 'Bluetooth Speaker')
Category.create(name: 'Over-Ear Headphones')
Category.create(name: 'Home Theater Audio')

question_1 = Question.create(category_id: cat_1.id, text: 'Color', presentation_type: 'drop_down')
question_2 = Question.create(category_id: cat_1.id, text: 'Stereo', presentation_type: 'radio')


question_2 = Option.create(question_id: question_1.id, opt_value: 'Red')
question_2 = Option.create(question_id: question_1.id, opt_value: 'Black')
