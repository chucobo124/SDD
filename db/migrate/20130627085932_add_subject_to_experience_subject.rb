class AddSubjectToExperienceSubject < ActiveRecord::Migration
  def change
    add_column :experience_sharings, :ES_Subject, :string
  end
end
