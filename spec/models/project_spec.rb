require "rails_helper"

describe Project do

  it "has a description" do
    project = Project.create!({
      description: "working on iOS"
    })
    expect(project.description).to eq("working on iOS")
  end

end

