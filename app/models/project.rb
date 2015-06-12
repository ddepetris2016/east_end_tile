class Project < ActiveRecord::Base

  validates :project_type, presence: true
  validates :material, presence: true
  validates :design, presence: true
  validates :square_feet, presence: true
  validates :home_type, presence: true

  has_many :quotes , :class_name => "Quote", :foreign_key => "project_id"
  belongs_to :user , :class_name => "User", :foreign_key => "user_id"

end
