# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'luke')
user2 = User.create(username: 'chewy')
user3 = User.create(username: 'han')

poll1 = Poll.create(title: 'Fave Foods', user_id: 1)
poll2 = Poll.create(title: 'Fave Bevs', user_id: 2)
poll3 = Poll.create(title: 'Fave Holidays', user_id: 3)

question1 = Question.create(body: "what's your favorite food?", poll_id: 1)
question2 = Question.create(body: "what's your favorite beverage?", poll_id: 2)
question3 = Question.create(body: "what's your favorite holiday?", poll_id: 3)

answer1 = AnswerChoice.create(body: "Steak", question_id: 1)
answer2 = AnswerChoice.create(body: "Pizza", question_id: 1)
answer3 = AnswerChoice.create(body: "Sushi", question_id: 1)

answer4 = AnswerChoice.create(body: "Coffee", question_id: 2)
answer5 = AnswerChoice.create(body: "Tea", question_id: 2)
answer6 = AnswerChoice.create(body: "Beer", question_id: 2)

answer7 = AnswerChoice.create(body: "Christmas", question_id: 3)
answer8 = AnswerChoice.create(body: "Thanksgiving", question_id: 3)
answer9 = AnswerChoice.create(body: "Halloween", question_id: 3)

response1 = Response.create(user_id: 1, question_id: 2, answer_id: 1)
response2 = Response.create(user_id: 2, question_id: 3, answer_id: 2)
response3 = Response.create(user_id: 3, question_id: 1, answer_id: 3)
response3 = Response.create(user_id: 2, question_id: 1, answer_id: 3)
response3 = Response.create(user_id: 2, question_id: 1, answer_id: 3)

