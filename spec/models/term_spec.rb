require 'rails_helper'

RSpec.describe Term, type: :model do
  describe 'validations' do
    it {should validate_presence_of :word}
    it {should validate_presence_of :definition}
  end
end
