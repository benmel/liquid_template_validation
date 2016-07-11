require 'rails_helper'

RSpec.describe "LiquidTemplates", type: :request do
  describe "GET /liquid_templates" do
    it "works! (now write some real specs)" do
      get liquid_templates_path
      expect(response).to have_http_status(200)
    end
  end
end
