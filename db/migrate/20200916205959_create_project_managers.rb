class CreateProjectManagers < ActiveRecord::Migration[6.0]
  def change
    create_table :project_managers do |t|
      t.string :first_name
      t.string :nick_name
      t.string :last_name
      t.text :bio

      t.timestamps
    end
  end
end
