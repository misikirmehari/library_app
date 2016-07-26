class Customer < ApplicationRecord
  before_save :create_account_number

  has_many :books

  validates :first_name, :last_name, :phone, :email, presence: true

  def checkout(book)
    books << book if books.count < 3
  else
    puts 'You have checked out the maximum allowed'
  end


  private
  def create_account_number
    self.account_number = rand(1_000_000) + 999_999_999
  end

end
