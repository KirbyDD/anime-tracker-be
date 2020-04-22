require 'rails_helper'

RSpec.describe "User API" do
  it 'should get back user' do
    tron = User.create!(username: "Tron", password: "test", password_confirmation: "test")
    user_params = {username: "Tron", password: "test"}
    get '/api/v1/users/1', params: {user: user_params}
    expect(response).to be_successful
    user = JSON.parse(response.body)["data"]["attributes"]
    expect(user["username"]).to eq(tron.username)
  end

  it 'should not get back user' do
    tron = User.create!(username: "Tron", password: "test", password_confirmation: "test")
    user_params = {username: "Tron", password: "trst"}
    get '/api/v1/users/1', params: {user: user_params}
    expect(response).to be_successful
    error = JSON.parse(response.body)
    expect(error["error_message"]).to eq("Username and/or Password is incorrect.")
  end

  it 'should create a user' do
    user_params = {username: "Kat", password: "test", password_confirmation: "test"}
    post '/api/v1/users', params: {user: user_params}
    new_user = User.last
    expect(new_user.username).to eq('Kat')
  end

  it 'should not create a user (PASSWORDS DONT MATCH)' do
    user_params = {username: "Kat", password: "test", password_confirmation: "tst"}
    post '/api/v1/users', params: {user: user_params}
    expect(response).to be_successful
    error = JSON.parse(response.body)
    expect(error["error_message"]).to eq("Passwords do not match.")
  end

  it 'should not create a user (DUPLICATE USERNAME)' do
    tron = User.create!(username: "Tron", password: "test", password_confirmation: "test")
    user_params = {username: "Tron", password: "test", password_confirmation: "tst"}
    post '/api/v1/users', params: {user: user_params}
    expect(response).to be_successful
    error = JSON.parse(response.body)
    expect(error["error_message"]).to eq("Username is already in use.")
  end

  it 'should delete a user' do
    tron = User.create!(username: "Tron", password: "test", password_confirmation: "test")
    kat = User.create!(username: "Kat", password: "test", password_confirmation: "test")
    delete "/api/v1/users/#{kat.id}"
    expect(User.count).to eq(1)
    expect(User.last).to eq(tron)
  end

end
