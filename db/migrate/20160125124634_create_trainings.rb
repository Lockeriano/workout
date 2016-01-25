class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.time :date
      t.string :workout
      t.string :length

      t.timestamps null: false
    end
  end
end
