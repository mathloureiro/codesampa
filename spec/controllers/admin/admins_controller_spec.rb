require 'rails_helper'
require 'admin/admin_controller'


describe Admin::AdminController do

  describe "GET #index" do

    it "If user is admin ok" do
    	user = FactoryGirl.create(:admin)
    	sign_in user
    	get :index, {}
		expect(response.status).to eq(200)
    end

    it "Unless current_user admin redirect to root_path" do
    	user = FactoryGirl.create(:user, admin: false)
    	sign_in user
    	get :index, {}
     	expect(response).to redirect_to(root_path)
    end

  end

end