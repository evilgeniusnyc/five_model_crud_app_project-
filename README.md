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
As a user, I am able to create a new Project Manager.  
From the Project Manager Index page, I am able to click on a Project Manager's name to be redirected to that particular Project Manager's show page. 
In the Project Manager's show page, I am able to see the Program Manager's full name, nick name, a brief bio and all the Projects that the Project Manager is managing.  
From the Assignment Index page, I am able to click on an Assignment to be redirected to that particular Assignment's show page, where I can find the Assignment's current stage of development and the name's of the Project Manager and Project that it belongs to.  
I am also able to create a new Assigment for a Project and Project Manager from the databse using dropdown forms.  

# five_model_crud_app_project-
