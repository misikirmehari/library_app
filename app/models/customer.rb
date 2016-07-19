class Customer < ApplicationRecord
  before_save :create_account_number

  validates :first_name, :last_name, :phone, :email, presence:true

  private
  def create_account_number
    self.account_number = rand(1_000_000) + 999_999_999
  end
end
