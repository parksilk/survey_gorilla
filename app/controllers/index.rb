get '/' do
  @surveys = Survey.all
  erb :index
end

post '/' do
end

get '/create_form' do
  erb :create_form
end

post '/create_form' do
  @survey = Survey.create(name: params[:survey_name])
  current_user.created_surveys << @survey
  questions = params[:questions]
  questions.each do |ques|
    p "-----------------------------------------------------------------------------#{ques}"
    question = Question.create(:text=>ques["question"])

      ques["answer"].each do |a|
        question.choices << Choice.create(:text=>a)
      end

    @survey.questions << question 
  end
  redirect "/survey/#{@survey.id}"
end



def current_user
  User.first
end

get '/survey/:id' do 
  @survey = Survey.find(params[:id])
  erb :survey
end

post '/survey/:id' do
  survey = Survey.find(params[:id])
  current_user.taken_surveys << survey
  current_survey = current_user.taken_surveys.find(params[:id])
    params["choice"].each do |key,value|
      current_user.choices << current_survey.questions.find(key).choices.find(value)
    end
redirect '/'
end

# { :member => {
#   :name => 'joe', :posts_attributes => [
#     { :title => 'Kari, the awesome Ruby documentation browser!' },
#     { :title => 'The egalitarian assumption of the modern citizen' },
#     { :title => '', :_destroy => '1' } # this will be ignored
#   ]
# }}
