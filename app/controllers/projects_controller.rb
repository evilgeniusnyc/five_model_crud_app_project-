class ProjectsController < ApplicationController
 
def index
   @projects = Project.all
end

def show
   @project = Project.find(params[:id])
 end

 def new
   @project = Project.new
 end


 def create
   @project = Project.new(project_params)
   @project.save
   redirect_to project__path(@project)
 end


private 

def project_params
   params.require(:project).permit(:name, :budget, :stage)
 end
end
