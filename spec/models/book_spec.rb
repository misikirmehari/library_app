require 'rails_helper'

RSpec.describe Book, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:author) }
  it { is_expected.to validate_numericality_of(:number_of_pages).is_greater_than(10).is_less_than(1000) }
  it { is_expected.to validate_presence_of(:year) }

  it { is_expected.to belong_to (:customer)}
end
