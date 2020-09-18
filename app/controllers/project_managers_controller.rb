class ProjectManagersController < ApplicationController

    def index
        # digesting the request: checking in with the model to get project_manager array
        @project_managers = ProjectManager.all 
    end
    
      def show
        @project_manager = ProjectManager.find(params[:id])
      end
  
      def new
        @project_manager = ProjectManager.new
      end
  
      def create
        @project_manager = ProjectManager.new(project_manager_params)
        # @project_manager.save
        redirect_to project_manager_path(@project_manager)
      end
  
      private
  
      def project_manager_params
        params.require(:project_manager).permit(:first_name, :nick_name, :last_name, :bio)
      end
    end 


