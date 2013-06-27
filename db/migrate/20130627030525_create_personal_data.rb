class CreatePersonalData < ActiveRecord::Migration
  def change
    create_table :personal_data do |t|
      t.date :birthday
      t.string :id_number
      t.string :school_name
      t.string :department
      t.string :connect_address
      t.string :connect_phone_number
      t.text   :personality
      t.text   :expect
      t.string :specialty
      t.string :ideal
      t.string :learning_skill
      t.timestamps
    end
    add_column :events, :personal_data_id, :integer
    add_index :events, :personal_data_id
  end
end
