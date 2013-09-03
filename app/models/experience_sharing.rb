class ExperienceSharing < ActiveRecord::Base 
  belongs_to :user
  attr_accessible :ES_context, :ES_date , :ES_Subject ,:user_id
  def self.by_user(user)
    where('user_id in (?)', user )
  end
end

