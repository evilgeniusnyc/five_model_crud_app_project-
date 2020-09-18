class ProjectSponsor < ApplicationRecord
  belongs_to :investor

  validates :investor_id, presence: true

end
