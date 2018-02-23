class Restaurant < Sinatra::Base
  get "/" do
    erb :home
  end

  get "/dish/new" do
    erb :new
  end

  # get "/dish" do

  post "/dish" do
    binding.pry
  end

  post "/dishes" do
    Dish.create(
      title: params[:title], 
      description: params[:description], 
      price: params[:price],
      image: params[:image]
    )
    redirect "/"
  end

  get "/dishes" do
    @dishes = Dish.all
    erb :dishes
  end
end