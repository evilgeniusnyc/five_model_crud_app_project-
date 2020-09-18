class AssignmentsController < ApplicationController

    def index 
        @assignments = Assignment.all
    end
    def show
        @assignment = Assignment.find(params[:id])
        @projects = Project.all
        @project_managers = ProjectManager.all
    end

    def new
        @assignment = Assignment.new
    end

    def create
    @assigment = Assignment.create(assignment_params)
    redirect_to assignments_path
    end

    def edit
    # digesting the request: crompiling data for the form from the model
    @assigment = Assignment.find(params[:id])
    # response: render edit form view
    end

# patch '/investor/:id'
    def update
    # goes through params and checks in with the model to update a the instance
    @assignment = Assignment.find(params[:id])
    assignment_params = params.require(:assignment).permit(:assignment_name, :development_stage)
    @assignment.update(assignment_params)
# response: redirect to the '/investor/:id', which triggers the show action
    redirect_to assignment_path(@assigment)
    end

 

private

def assignment_params
    params.require(:assignment).permit(:assignment_name, :development_stage, :project_manager_id, :project_id)
  end

   

end

