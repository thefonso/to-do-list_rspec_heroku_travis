require 'rails_helper'

RSpec.describe HomeController, :type => :controller do
  describe 'get index' do
    it 'should get page for index' do
      get :index

      expect(response).to have_http_status(:success)
      expect(response).to have_http_status(200)
    end
  end
end