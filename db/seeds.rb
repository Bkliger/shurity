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

# user1=User.create(first_name:"joe",last_name:"blow")

cat_1 = Category.create(name: 'Bluetooth Speaker')
Category.create(name: 'Over-Ear Headphones')
Category.create(name: 'Home Theater Audio')


question_1 = Question.create(category_id: cat_1.id, text: 'Do the speakers need to be waterproof?', presentation_type: 'reg-slider')
question_2 = Question.create(category_id: cat_1.id, text: 'Is portability important?', presentation_type: 'reg-slider')
question_3 = Question.create(category_id: cat_1.id, text: 'How important is sound quality to you?', presentation_type: 'reg-slider')
question_4 = Question.create(category_id: cat_1.id, text: 'Speakerphone capable?', presentation_type: 'radio')
question_5 = Question.create(category_id: cat_1.id, text: 'How important is durability?', presentation_type: 'reg-slider')
question_6 = Question.create(category_id: cat_1.id, text: 'Does the sound need to go in all directions?', presentation_type: 'radio')
question_7 = Question.create(category_id: cat_1.id, text: 'Is Volume important', presentation_type: 'reg-slider')
question_8 = Question.create(category_id: cat_1.id, text: 'Battery Duration', presentation_type: 'reg-slider')
question_9 = Question.create(category_id: cat_1.id, text: 'What is your maximum budget?', presentation_type: 'slider')
question_10 = Question.create(category_id: cat_1.id, text: 'Color', presentation_type: 'drop_down')

Option.create(question_id: question_10.id, opt_value: 'Red')
Option.create(question_id: question_10.id, opt_value: 'Black')
Option.create(question_id: question_4.id, opt_value: 'Yes')
Option.create(question_id: question_4.id, opt_value: 'No')
Option.create(question_id: question_6.id, opt_value: 'Yes')
Option.create(question_id: question_6.id, opt_value: 'No')

# Answer.create(category_id:cat_1.id, user_id: user1.id, question_id: question_2.id)
