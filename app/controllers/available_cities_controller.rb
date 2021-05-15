class AvailableCitiesController < ApplicationController
  # Aqui fazemos um mapeamento em todos os restaurantes, pegando as cidades deles,
  # e utilizamos a função uniq, para evitar cidades repetidas
  def index
    @available_cities = Restaurant.all.map { |r| r.city }.uniq
  end
end
