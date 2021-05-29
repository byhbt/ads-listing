# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ListingsController, type: :controller do
  describe 'GET#index' do
    it 'renders index view' do
      get :index

      expect(response).to redirect_to new_user_session_path
      expect(flash[:alert]).to eq I18n.t('devise.failure.unauthenticated')
    end

    context 'when the user is unauthenticated' do
      it 'responds with unauthorized status' do
        get :index

        expect(response).to redirect_to new_user_session_path
        expect(flash[:alert]).to eq I18n.t('devise.failure.unauthenticated')
      end
    end
  end
end
