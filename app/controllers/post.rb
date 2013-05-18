post '/posts/login' do
# p params[:post].inspect
# p params[:post][:edit_key].inspect
if params[:post][:edit_key] == Post.find(params[:post][:post_id]).edit_key
    @post = Post.find(params[:post][:post_id])
    p @post
    erb :post_editor
  else
    @post = Post.find(params[:post][:post_id])
    erb :post_editor_login
  end
end

get '/posts/new' do

  @rand_key = rand_key
  erb :post_form
end

get '/posts/edit/:id' do

  @post = Post.find(params[:id])
 
  erb :post_editor_login
end

post '/posts/update/:id' do
  @post = Post.update(params[:id], params[:post])
  # p @post.inspect
  erb :post
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :post
end

def rand_key
  ((1..9).to_a + ('a'..'z').to_a).sample(5).join
end



post '/posts' do
 # p params[:post]
  @post = Post.new(params[:post]) 

  if @post.save
    redirect to "/posts/#{@post.id}"
  else
    erb :post_form
  end
end


# post '/categories/:category_id/posts' do
#   @category = Category.find(params[:category_id])
#   @post = Post.new(params[:post])
#   if @category.posts << @post
#     redirct ...
#   else
#     form...
#   end
# end


