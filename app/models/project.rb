class Project < ApplicationRecord
    has_many :assignments
    has_many :project_managers, through: :assignments
    has_many :investors 
    has_many :project_sponsors, through: :investors 


end
