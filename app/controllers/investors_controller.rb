class InvestorsController < ApplicationController
   

def index
    @investors = Investor.all 
end

def show
  @investor = Investor.find(params[:id])
end

def new
  @investor = Investor.new
end

def create
  @investor = Investor.create(investor_params)
  redirect_to investor_path(@investor)
end

def edit
    # digesting the request: crompiling data for the form from the model
    @investor = Investor.find(params[:id])
    # response: render edit form view
end

# patch '/investor/:id'
def update
# goes through params and checks in with the model to update a the instance
@investor = Investor.find(params[:id])
investor_params = params.require(:investor).permit(:investor_name, :points)
@investor.update(investor_params)
# response: redirect to the '/investor/:id', which triggers the show action
redirect_to investor_path(@investor)
end

def destroy
# goes through params with the model to find a investor instance and destroy it
@investor = Investor.find(params[:id])
Investor.destroy(params[:id])
#redirect to the index page
redirect_to investor_path
end

private

def investor_params
  params.require(:investor).permit(:investor_name, :points, :project_id)
end
# def find_investor_id
#     investor.find(params[:id])
# end
# def post_params(*args)
#     params.require(:investor).permit(*args)
# end

end



