class Order < ApplicationRecord
  belongs_to :restaurant
  has_many :order_products

  validates :name, :phone_number, :total_value, :city, :neighborhood, :street, :number, presence: true

  # Enum serve para que possamos utilizar os valores predefinidos como se fossem os inteiros:
  # Nesse caso, waiting == 0 e delivered == 1
  enum status: { waiting: 0, delivered: 1 }
end
