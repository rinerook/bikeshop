require 'rails_helper'

describe StaticPagesController, :type => :controller do  # exact same name of controller class we use in static_pages_controller.rb
  context 'GET #index' do  # HTTP GET request of the index
    before do
      get :index
    end

    it 'responds successfully with an HTTP 200 status code' do  #200 stands for "Everything is okay"
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do  #  if the correct template is loaded
      expect(response).to render_template('index')
    end
  end

end