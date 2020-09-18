class ProjectManager < ApplicationRecord
has_many :assignments
has_many :projects, through: :assignments

validates :first_name, presence: true


 def full_name 
    self.first_name + " " + self.last_name
 end 


end
