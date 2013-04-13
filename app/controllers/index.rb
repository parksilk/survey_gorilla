get '/' do
  # Look in app/views/index.erb
  erb :create_form
end

post '/' do
  params.inspect
end
