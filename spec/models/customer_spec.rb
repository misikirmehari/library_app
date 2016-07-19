require 'rails_helper'

RSpec.describe Customer, type: :model do

  it { is_expected.to validate_presence_of(:first_name)}
  it { is_expected.to validate_presence_of(:last_name)}
  it { is_expected.to validate_presence_of(:phone)}
  it { is_expected.to validate_presence_of(:email)}


  it 'generates a customer number' do
    customer = FactoryGirl.build(:customer)
    expect{ customer.save }.to change {customer.account_number}.from(nil).to(anything)
  end
end
