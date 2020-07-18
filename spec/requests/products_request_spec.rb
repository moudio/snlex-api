require 'rails_helper'

RSpec.describe "Products", type: :request do
  let!(:products) {create_list(:product, 20)}
  context "Testing Products CRUD" do
    it "tests if the user can list all products" do
      get '/api/products/'
      expect(JSON(response.body)['products'].length).to eq(20)
    end

    it "test if the user returs one product" do
      get '/api/products/1'
       expect(JSON(response.body)['product']['id']).to eq(1)
    end
  end
end
