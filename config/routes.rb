Rails.application.routes.draw do
  # Aqui estamos definindo que todas as urls devem ser precedidas por /api
  # Ex: localhost:3000/api/restaurants
  scope '/api', defaults: { format: :json } do
    # Quando utilizamos o resources, sao criadas as urls no formato REST
    # o rest possui urls de criar, listar, atualizar, deletar
    resources :categories, only: [:index]
    resources :restaurants, only: [:index, :show]
    resources :orders, only: [:create, :show]
    resources :available_cities, only: [:index]
  end
end
