require 'rails_helper'

RSpec.describe "Provinsis", type: :request do
  describe "GET /provinsis" do
    it "works! (now write some real specs)" do
      get provinsis_path
      expect(response).to have_http_status(200)
    end
  end
end
