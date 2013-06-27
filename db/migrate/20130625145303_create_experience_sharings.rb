class CreateExperienceSharings < ActiveRecord::Migration
  def change
    create_table :experience_sharings do |t|
      t.date :ES_date
      t.text :ES_context

      t.timestamps
    end
  end
end
