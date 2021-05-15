class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: :show

  # Pegamos todos os restaurantes do Banco de Dados
  def index
    @restaurants = Restaurant.all
    filter_by_query if params[:q]
    filter_by_city if params[:city]
    filter_by_category if params[:category]
  end

  def show
  end

  private
  # O set_restaurant vai buscar o restaurante atraves do id e salvar na variavel @restaurant
  # essa variável será utilizada no jbuilder
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # Utilizamos a gem ransack para ajudar no filtro por query
  # A gem pega o resultado do parametro "q", verificando se esse parametro está dentro do nome
  # ou descrição de algum restaurante.
  def filter_by_query
    @restaurants = @restaurants.ransack(name_or_description_cont: params[:q]).result
  end

  def filter_by_city
    @restaurants = @restaurants.where(city: params[:city])
  end

  def filter_by_category
    @restaurants = @restaurants.select do |r|
      r.category.title == params[:category]
    end
  end
end
