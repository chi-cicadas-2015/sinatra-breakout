get '/products' do
  @products = Product.all
  erb :"products/index"
end

get '/products/new' do
  @product = Product.new
  erb :"products/new"
end

post '/products' do

  logger.info params

  @product = Product.new(params[:product])

  if @product.save
    redirect '/products'
  else
    erb :"products/new"
  end
end