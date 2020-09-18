class CreateProjectSponsors < ActiveRecord::Migration[6.0]
  def change
    create_table :project_sponsors do |t|
      t.string :sponsor_name
      t.belongs_to :investor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
