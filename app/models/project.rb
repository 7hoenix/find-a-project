class Project < ApplicationRecord
  has_many :project_memberships, dependent: :destroy

  def member_names
    project_memberships.map(&:user_name)
  end
end
