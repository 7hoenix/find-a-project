class Project < ApplicationRecord
  has_many :project_memberships

  def member_names
    project_memberships.map(&:user_name)
  end
end
