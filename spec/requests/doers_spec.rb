require 'rails_helper'

RSpec.describe "Doers", :type => :request do
  describe "GET /doers" do
    it "works! (now write some real specs)" do
      get doers_path
      expect(response).to have_http_status(200)
    end
  end
end
