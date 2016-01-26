class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.datetime :date
      t.string :workout
      t.string :length

      t.timestamps null: false
    end
  end
end
