category = Category.create(title: 'cycles')
user = User.create(name: 'Vasya')
test = Test.create(title: 'Ruby', level: '1', category_id: category.id, user_id: user.id)
test = Test.create(title: 'Ruby', level: '1', category_id: category.id)
question = Question.create(body: 'How to create cycle?', test_id: test.id)
answer = Answer.create(correct: true, body: 'write while and end', question_id: question.id)

