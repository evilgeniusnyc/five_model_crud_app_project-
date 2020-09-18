class ProjectSponsorsController < ApplicationController


    def index
        # digesting the request: checking in with the model to get project_manager array
        @project_sponsors = ProjectSponsor.all
        # response: render an index view
    end
    
      def show
        @project_sponsor = ProjectSponsor.find(params[:id])
      end
  
  
      def new
        @project_sponsor = ProjectSponsor.new
      end
  
      def create
        @project_sponsor = ProjectSponsor.new(project_sponsor_params)
        @project_sponsor.save
        redirect_to project_sponsor_path(@project_sponsor)
      end
  
      private
  
      def project_sponsor_params
        params.require(:project).permit(:sponsor_mane)
      end
    end
