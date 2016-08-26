class CreateProjectMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :project_memberships do |t|
      t.references :project, foreign_key: true
      t.string :user_name
      t.timestamps
    end
  end
end
