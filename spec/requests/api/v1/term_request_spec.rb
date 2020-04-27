require 'rails_helper'

RSpec.describe 'Term API' do
  it 'should get list of anime term' do
    term = Term.create!(word: "Test", definition: "This is a definition", category: 0, pronunciation: "Ah-knee-meh")
    term = Term.create!(word: "Test2", definition: "This is a definition also", category: 1, pronunciation: "meh-kah")
    term = Term.create!(word: "Test3", definition: "This is a definition also also", category: 2)

    get '/api/v1/terms'
    expect(response).to be_successful
    terms = JSON.parse(response.body)["data"]
    expect(terms.count).to eq(3)
    binding.pry
  end
end
