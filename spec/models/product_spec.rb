require 'rails_helper'
RSpec.describe Product, type: :model do
let!(:product) {create(:product)}
  context "Validating the Product" do
    it "tests the product has name" do
      expect(product).to be_valid
    end


  end
end
