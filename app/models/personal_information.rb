class PersonalInformation < ActiveRecord::Base
  belongs_to :user
  attr_accessible :Birthday, :Id_Number, :Attending_School, :Department, :School_Name, :Department, :Connect_Address , :Connect_Phone_Number, :Special_Experience, :Personality, :Expectations, :Specialty, :Ideal, :Planning_the_ability_to_learn,:user_id
  def self.by_user(user)
    where('user_id in (?)', user )
  end
end
