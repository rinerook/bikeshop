require 'rails_helper'

describe UsersController, :type => :controller do

  before do
    @user = FactoryGirl.create(:user)
    #@user = User.create!(email: 'localhorst@gmx.de', password: 'password')
    #@user2 = User.create!(email: 'localhorst2@gmx.de', password: 'password2')
  end

  #let(:user) { User.create!(email: 'localhorst@gmx.de', password: 'password') }

  describe 'GET #show' do

   context 'User is logged in' do

    before do
      sign_in @user  
    end

    it 'loads correct user details' do
      get :show, id: @user.id
      expect(response).to be_success
      expect(response).to have_http_status(200)
      expect(assigns(:user)).to eq @user
    end
  end

  context 'No user is logged in' do
   it 'redirects to login' do
     get :show, id: @user.id
     expect(response).to redirect_to(new_user_session_path)
         #expect(response).to redirect_to(root_path)
       end
     end
   end
 end