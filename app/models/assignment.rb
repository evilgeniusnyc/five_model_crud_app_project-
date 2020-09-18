class Assignment < ApplicationRecord
 

            
  belongs_to :project
  belongs_to :project_manager

  validates :project_id, presence: true
  validates :project_manager_id, presence: true

 
                
 

end




