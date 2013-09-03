class CreateExperienceSharings < ActiveRecord::Migration
  def change
    create_table :experience_sharings do |t|
      t.date :ES_date
      t.text :ES_context
      t.references :user
      t.timestamps
    end
    add_index :experience_sharings, :user_id
  end
end
