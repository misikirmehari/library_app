require 'rails_helper'

RSpec.describe Customer, type: :model do

  it { is_expected.to validate_presence_of(:first_name)}
  it { is_expected.to validate_presence_of(:last_name)}
  it { is_expected.to validate_presence_of(:phone)}
  it { is_expected.to validate_presence_of(:email)}
  it { is_expected.to have_many (:books) }
#  it { is_expected.to validate_length_of (:books).is_at}



  it 'generates a customer number' do
    customer = FactoryGirl.build(:customer)
    expect{ customer.save }.to change {customer.account_number}.from(nil).to(anything)
  end

  describe '#checkout(book)' do
    it 'allows up to three checkouts'do
      customer = FactoryGirl.create(:customer)
      expect {
        customer.checkout(FactoryGirl.create(:book))
      }.to change(customer.books, :count).by(1)

      expect {
        customer.checkout(FactoryGirl.create(:book))
      }.to change(customer.books, :count).by(1)

      expect {
        customer.checkout(FactoryGirl.create(:book))
      }.to change(customer.books, :count).by(1)

      book = FactoryGirl.create(:book)
      expect {
        customer.checkout(book)
      }.to change(customer.books, :count).by(0)

      expect(book.customer).to be_nil

    end
  end
end
