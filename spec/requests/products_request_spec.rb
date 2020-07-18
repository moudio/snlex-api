require 'rails_helper'

RSpec.describe "Products", type: :request do
  let!(:products) {create_list(:product, 20)}
  context "Testing Products CRUD" do

    it "test if the user can create a product" do
       post '/api/products', params: {product: {name: 'Adidas', description: 'Stan Smith', price: 200}}
       expect(JSON(response.body)['status']).to eq('created')
    end
    it "tests if the user can list all products" do
      get '/api/products/'
      expect(JSON(response.body)['products'].length).to eq(20)
    end

    it "tests if the app returns one product" do
      get '/api/products/1'
       expect(JSON(response.body)['product']['id']).to eq(1)
    end

  end
end
