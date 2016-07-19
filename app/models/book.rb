class Book < ApplicationRecord
  validates :title, :author, :year,  presence: true

  validates :number_of_pages , numericality:{
    greater_than: 10,
    less_than: 1000
  }
end
