require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should have_many :notes }
  end
end
