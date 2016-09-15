require 'rails_helper'

RSpec.describe "Kota", type: :request do
  describe "GET /kota" do
    it "works! (now write some real specs)" do
      get kota_path
      expect(response).to have_http_status(200)
    end
  end
end
