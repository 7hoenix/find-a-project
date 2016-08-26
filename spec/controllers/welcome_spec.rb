require "rails_helper"

describe WelcomeController do

  describe "Getting the index" do
    it "works" do
      get :index

      expect(response.status).to eq(200)
    end
  end

end

