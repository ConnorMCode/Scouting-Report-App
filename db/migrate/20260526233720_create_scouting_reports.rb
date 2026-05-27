class CreateScoutingReports < ActiveRecord::Migration[8.1]
  def change
    create_table :scouting_reports do |t|
      t.string :player_name
      t.string :position
      t.string :team
      t.text :evaluation
      t.string :grade

      t.timestamps
    end
  end
end
