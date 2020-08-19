require 'rails_helper'

RSpec.describe "Products", type: :request do
  let!(:products) {create_list(:product, 20)}
  context "Testing Products CRUD" do

    it "test if the user can create a product" do
       post '/api/products', params: {product: {name: 'Adidas', description: 'Stan Smith', category: 'shoes', price: 200}}
       expect(JSON(response.body)['status']).to eq('created')
    end

    it "test the products can be updated" do 
       patch '/api/products/1', params: {product: {name: 'Adidas', description: 'Stan Smith', category: 'shoes', price: 200}}
      expect(JSON(response.body)['status']).to eq('updated')
end

    it "tests if the user can list all products" do
      get '/api/products/'

      expect(JSON(response.body).length).to eq(20)
    end

    it "tests if the app returns one product" do
      get '/api/products/1'
       expect(JSON(response.body)['id']).to eq(1)
    end


    it "tests one product can be removed" do
      delete '/api/products/1'
      expect(JSON(response.body)['status']).to eq('deleted')

end

it "tests the api returns products with pictures" do 
  get '/api/products/1'
  expect(JSON(response.body)["picture"]['url']).to match('http://localhost')  
end 

end 
end
