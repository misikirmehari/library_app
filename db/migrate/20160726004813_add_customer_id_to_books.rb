class AddCustomerIdToBooks < ActiveRecord::Migration[5.0]
  def change
    add_reference :books, :customer, foreign_key: true
  end
end
