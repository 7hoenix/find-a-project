require "rails_helper"

describe ProjectsController do

  describe "Getting the index" do
    it "works" do
      get :index

      expect(response.status).to eq(200)
    end

    it "finds all the projects" do
      Project.create!(description: "Working on iOS")

      get :index

      expect(assigns(:projects).size).to eq(1)
      first_project = assigns(:projects)[0]
      expect(first_project.description).to eq("Working on iOS")
    end
  end

end

