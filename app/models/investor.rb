class Investor < ApplicationRecord
  belongs_to :project
  has_many :project_sponsors


  validates :project_id, presence: true
  #validates :project_sponsor_id, presence: true
end
