require 'rails_helper'

RSpec.describe "Products", type: :request do
  let!(:products) {create_list(:product, 20)}
  context "Testing Products CRUD" do
    it "tests if the user can list all products" do
      get '/api/products/'
      expect(JSON(response.body)['products'].length).to eq(20)
    end
  end
end
