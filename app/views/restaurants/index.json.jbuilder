# Aqui fazemos um array para formar o JSON com todos os restaurantes, é utilizada
# a partial restaurant
json.array! @restaurants do |restaurant|
  json.partial! restaurant
end