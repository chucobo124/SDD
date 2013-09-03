class CreateObservationTutorials < ActiveRecord::Migration
  def change
    create_table :observation_tutorials do |t|
      t.string :learning_ability
      t.string :characteristics_obseration
      t.string :teachers_suggestion
      t.timestamps
    end
  end
end
