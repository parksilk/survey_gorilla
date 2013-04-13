user1 = User.create(:email => "user1@example.com")
user2 = User.create(:email => "user2@example.com")

survey1 = Survey.create(:name => "Survey 1", :user_id => 1)
survey2 = Survey.create(:name => "Survey 2", :user_id => 2)

user1.created_surveys = [survey1]
user2.created_surveys = [survey2]

question1 = Question.create(:text => "What's your favorite color?", :survey => survey1)
question2 = Question.create(:text => "What's your favorite animal?", :survey => survey2)

choice1 = Choice.create(:text => "Blue", :question_id => 1)
choice2 = Choice.create(:text => "Red", :question_id => 1)
choice3 = Choice.create(:text => "Dog", :question_id => 2)
choice4 = Choice.create(:text => "Cat", :question_id => 2)

user1.created_surveys = [survey1]
user2.created_surveys = [survey2]

user1.taken_surveys = [survey2]
user2.taken_surveys = [survey1]

user1.choices << choice1 #take each choise and add it like tihs
