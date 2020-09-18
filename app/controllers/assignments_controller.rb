class AssignmentsController < ApplicationController

    def index 
        @assignments = Assignment.all
    end
    def show
        @assignment = Assignment.find(params[:id])
    end
    def new
        @assignment = Assignment.new
        # @project_manager = ProjectManager.all
        # @project = Project.all
    end
    def create
        @assignment = Assignment.create(assignment_params)
        redirect_to project_manager_path(@assignment.program_manager)
    end

    def update
        # goes through params and checks in with the model to update a the instance
        @assignment = Assignment.find(params[:id])
  
        # response: redirect to the '/assignment/:id', which triggers the show action
        redirect_to assignment_path(@assignment)
        end
    private 

    def assignment_params
       params.require(:assignment).permit(:assignment_name, :development_stage, :project_manager_id, :project_id)
     end


end

