class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: :show

  # Pegamos todos os restaurantes do Banco de Dados
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  private
  # O set_restaurant vai buscar o restaurante atraves do id e salvar na variavel @restaurant
  # essa variável será utilizada no jbuilder
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
