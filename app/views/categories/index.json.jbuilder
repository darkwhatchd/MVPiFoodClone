json.array! @categories do |category|
  json.id category.id
  json.title category.title
  json.image_url polymorphic_url(category.image) if category.image.attached?
end

# Representação de como ficará o JSON, após a ação do Jbuilder
# Um array com todas as categorias:
#[
#  {
#    'id': 1,
#    'title': "titulo da categoria 1",
#    'image_url': "http://localhost3000/image.png"
#  },
#  {
#    'id': 2,
#    'title': "titulo da categoria 2",
#    'image_url': "http://localhost3000/image.png"
#  },
#  {
#    'id': 3,
#    'title': "titulo da categoria 3",
#    'image_url': "http://localhost3000/image.png"
#  },
#]