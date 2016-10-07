# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

projects = [{
  description: "Working on iOS",
  member_names: ["Eric", "Cyrus"]
}, {
  description: "Learning Clojure",
  member_names: ["Justin"]
}, {
  description: "Wathing Clean Coders Videos",
  member_names: ["Damon", "Eva", "Colin"]
}]

projects.each do |project_attributes|
  project = Project.create!(description: project_attributes[:description])
  project_attributes[:member_names].each do |member_name|
    project.project_memberships.build(user_name: member_name)
  end
  project.save!
end
