class CreateInvestors < ActiveRecord::Migration[6.0]
  def change
    create_table :investors do |t|
      t.string :investor_name
      t.integer :points
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
