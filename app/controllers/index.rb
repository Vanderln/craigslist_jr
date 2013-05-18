get '/' do
  @categories = Category.all
  erb :index
end

# holds about, contact...
