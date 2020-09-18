
Assignment.destroy_all
ProjectSponsor.destroy_all 
Investor.destroy_all 
Project.destroy_all
ProjectManager.destroy_all


Assignment.reset_pk_sequence
Investor.reset_pk_sequence
Project.reset_pk_sequence 
ProjectManager.reset_pk_sequence 
ProjectSponsor.reset_pk_sequence


major_taylor = ProjectManager.create(first_name: "Marshall", nick_name: "Major", last_name: "Taylor", bio:"American bicycle racer Marshall Taylor (1878-1932) was the word’s first black sports superstar. He was world cycling champion in 1899, American sprint champion in 1900, and set seven track cycling records in 1898.  A year later, he was crowned national and international champion, making him just the second Black world champion athlete, after Canadian bantamweight boxer George Dixon.")
eddie = ProjectManager.create(first_name: "Eddy", nick_name: "The Cannibal", last_name: "Merckx", bio: "Born June 17, 1945, Eddy Merckx is a Belgian former professional road and track bicycle racer who is widely seen as the most successful rider in the history of competitive cycling. His victories include an unequalled eleven Grand Tours (five Tours of France, five Tours of Italy, and a Tour of Spain), all of the five Monuments, three World Championships, the hour record, every major one-day race other than Paris–Tours, and extensive victories on the track.")
beyrl = ProjectManager.create(first_name: "Beryl", nick_name: "Mile-a-Minute", last_name: "Burton", bio: "Beryl Burton (1937 – 5 May 1996) was an English racing cyclist who dominated women’s cycle racing in the UK, winning more than 90 domestic championships and seven world titles, and setting numerous national records. She set a women's record for the 12-hour time-trial which exceeded the men's record for two years.")
bernard = ProjectManager.create(first_name: "Bernard", nick_name: "The Badger", last_name: "Hinault", bio:"Born 14 November 1954, Bernard Hinault is a French former professional cyclist. With 147 professional victories, including five in the Tour de France, he is often named among the greatest cyclists of all time.")
jacques = ProjectManager.create(first_name: "Jacques", nick_name: "Monsiuer Chrono", last_name: "Anquetil", bio:"Jacques Anquetil (January 1934 – 18 November 1987) was a French road racing cyclist and the first cyclist to win the Tour de France five times, in 1957 and from 1961 to 1964.  He stated before the 1961 Tour that he would gain the yellow jersey on day one and wear it all through the tour, a tall order with two previous winners in the field—Charly Gaul and Federico Bahamontes—but he did it.  His victories in stage races such as the Tour were built on an exceptional ability to ride alone against the clock in individual time trial stages, which lent him the name 'Monsieur Chrono'.")

derailer = Project.create(name: "Build a Better Derailleur", budget: "$1.3 million", stage: 1)
aerobar = Project.create(name: "Build a Better Aerobar", budget: "1.5 million", stage: 3)
saddle = Project.create(name: "Build a Better Saddle ", budget: "$1.2 million ", stage: 5)
fork = Project.create(name: "Build a Better Fork", budget: "$3 million ", stage: 5)
lock = Project.create(name: "Build a Better Bike Lock", budget: "$2.2 million", stage: 5)

bike_lock = Assignment.create(assignment_name: "Test Bike Lock", project_manager: ProjectManager.third, project: Project.third)
tighten_bolts = Assignment.create(assignment_name: "Tighten Bolts", project_manager: ProjectManager.fourth, project: Project.fourth)
polish_frame = Assignment.create(assignment_name: "Polish Frame", project_manager: ProjectManager.second, project: Project.second)
drop_bars = Assignment.create(assignment_name: "Install Drop Bars", project_manager: ProjectManager.first, project: Project.first)


moe = Investor.create(investor_name: "Moe Howard", points: 10, project_id: 1)
curley = Investor.create(investor_name: "Curley Howard", points: 2, project_id:2)
lary = Investor.create(investor_name: "Lary Fine", points: 7, project_id: 3)
joe_b = Investor.create(investor_name: "Joe Besser", points: 5, project_id:4)
curley_joe = Investor.create(investor_name: "Curley Joe", points: 7, project_id:5)


mj_white = ProjectSponsor.create(sponsor_name: "Mary Jo White", investor_id: 1)
jay_c = ProjectSponsor.create(sponsor_name: "Jay Clayton", investor_id:2)
mary_s = ProjectSponsor.create(sponsor_name: "Mary Shapiro", investor_id: 3)
harvey_p = ProjectSponsor.create(sponsor_name: "Harvey Pitt", investor_id: 4)
a_levitt = ProjectSponsor.create(sponsor_name: "Arthur Levitt", investor_id: 5)




# create_table "assignments", force: :cascade do |t|
#     t.string "assignment_name"
#     t.string "development_stage"
#     t.integer "project_manager_id", null: false
#     t.integer "project_id", null: false
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["project_id"], name: "index_assignments_on_project_id"
#     t.index ["project_manager_id"], name: "index_assignments_on_project_manager_id"
#   end

#   create_table "investors", force: :cascade do |t|
#     t.string "investor_name"
#     t.integer "points"
#     t.integer "project_id", null: false
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["project_id"], name: "index_investors_on_project_id"
#   end

#   create_table "project_managers", force: :cascade do |t|
#     t.string "first_name"
#     t.string "nick_name"
#     t.string "last_name"
#     t.text "bio"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

#   create_table "project_sponsors", force: :cascade do |t|
#     t.string "sponsor_name"
#     t.integer "investor_id", null: false
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["investor_id"], name: "index_project_sponsors_on_investor_id"
#   end

#   create_table "projects", force: :cascade do |t|
#     t.string "name"
#     t.string "budget"
#     t.integer "stage"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end