require 'rails_helper'

RSpec.describe ListingsController, type: :controller do
  describe 'GET#index' do
    it 'renders index view' do
      get :index

      expect(response).to have_http_status :ok
      expect(response).to render_template :index
    end
  end
end
