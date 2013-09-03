class CreatePersonalInformations < ActiveRecord::Migration
  def change
    create_table :personal_informations do |t|
      t.date :Birthday
      t.string :Id_Number
      t.string :Attending_School
      t.string :Department
      t.integer :School_Name
      t.string :Department
      t.string :Connect_Address 
      t.string :Connect_Phone_Number
      t.text :Special_Experience
      t.text :Personality
      t.text :Expectations
      t.string :Specialty
      t.string :Ideal
      t.text :Planning_the_ability_to_learn
      t.references :user
      t.timestamps
    end
    add_index :personal_informations, :user_id
  end
end
