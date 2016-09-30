require "rails_helper"

describe ProjectsController do

  describe "Getting the index" do
    it "finds all the projects" do
      Project.create!(description: "Working on iOS")

      get :index

      expect(assigns(:projects).size).to eq(1)
      first_project = assigns(:projects)[0]
      expect(first_project.description).to eq("Working on iOS")
    end
  end

  describe "Creating a project" do

    it "creates a new project" do
      expect {
        post :create, params: { project: { description: "Need help on HTTP Server" } }
      }.to change{Project.count}.by(1)

      expect(assigns(:project).description).to eq("Need help on HTTP Server")
    end

    it "redirects to the list of projects" do
      post :create, params: { project: { description: "iOS" } }

      expect(response).to redirect_to(action: "index")
    end
  end

  describe "Destroying all projects" do
    it "redirects to admin" do
      delete :destroy_all

      expect(response).to redirect_to(admin_path)
    end

    it "removes all projects" do
      Project.create!(description: "Working on iOS")

      delete :destroy_all

      expect(Project.count).to eq(0)
    end
  end

end
