require 'rails_helper'

RSpec.describe "LastEditors", :type => :request do
  describe "GET /last_editors" do
    it "works! (now write some real specs)" do
      get last_editors_path
      expect(response.status).to be(200)
    end
  end
end
