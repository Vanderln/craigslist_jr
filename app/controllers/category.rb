post '/categories' do
  @category = Category.new(params[:category])
  if @category.save
    redirect to '/'
  else
    erb :category_form
  end
end

get '/categories/new' do
  erb :category_form
end

get '/categories/:description' do
  description = params[:description].capitalize
  @category = Category.find_by_description(description)
  erb :category
end
