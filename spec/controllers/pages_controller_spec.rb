require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe "GET #index" do
    it "show index for anyone" do
    	get :index
    	expect(response.status).to eq(200)
    end
  end
end
