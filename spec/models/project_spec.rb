require "rails_helper"

describe Project do

  it "has a description" do
    project = Project.create!({
      description: "working on iOS"
    })
    expect(project.description).to eq("working on iOS")
  end

  describe "Project membership names" do
    it "has none for no project memberships" do
      project = Project.create!
      expect(project.member_names).to eq([])
    end

    it "has a name for project memberships" do
      project = Project.create!

      project.project_memberships.create!(user_name: "Justin")

      expect(project.member_names).to eq(["Justin"])
    end

    it "has many names for project memberships" do
      project = Project.create!

      project.project_memberships.build(user_name: "Justin")
      project.project_memberships.build(user_name: "Eric")
      project.save!

      expect(project.member_names).to eq(["Justin", "Eric"])
    end
  end

end

