require 'rails_helper'

RSpec.describe 'Term API' do
  it 'should get list of anime term' do
    term = Term.create!(word: "Test", definition: "This is a definition")
    term = Term.create!(word: "Test2", definition: "This is a definition also")
    term = Term.create!(word: "Test3", definition: "This is a definition also also")

    get '/api/v1/terms'
    expect(response).to be_successful
    terms = JSON.parse(response.body)["data"]
    expect(terms.count).to eq(3)
  end
end
