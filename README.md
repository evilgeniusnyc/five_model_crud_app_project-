# README

Project Dashboard:

A basic Rails CRUD application.   


General info: 

Project Dashboard is a Flatiron School Module 2 project built to demonstrate working knowledge of MVC structure and RESTful conventions.  The application has five models: 

Project Manager ----< Assignment >---- Project ----< Investor ------Project Sponsor 
:first_name          :name             :name        :first_name     :name 
:nick_name           :project_id       :budget      :last_name      :type 
:last_name           :priority_level
:bio                 

Relationships: 
Project Manager has_many Assignments and has_many Projects, through Assignments.  
Assignment belongs_to Project Manager and belong_to Project.  
Project has many Assignments and many Project Managers, through Assignments.  
Investor belongs_to Project and has_one Project Sponsor.
Project Sponsor belongs_to investor.  

User Stories: 
As a user, I am able to click on a project manager's name to be redirected to the project manager’s show page, where I can see all the projects that particular project manager is managing, as well as the project manager’s full name, nick name, and a brief bio. 

From the assignment index page, I am able to click on an Assignment to be redirected to that Assignment's show page, where I can update the assignment's development stage.  

I am also able to create a new assignment for an existing project manager and assign it to a project manager.  

From the investor index page, I am able to see all the investors, the projects in which they are invested, and the number of "points" each investor owns in a project.  

I am able to click investor to be redirected to that particular investor's show page, where I can see the project sponsor who associated with the investor.  

As a user, I can create a new Investor for an existing project, using dropdown forms for the project name and numeric points, and typing in the new investor's name.

While on an investor show page, I am able to a button that will delete that particular Investor from the database.  

I am also to increase and decrease the number of points that an investor owns in a project using a dropdown form.

# five_model_crud_app_project-
