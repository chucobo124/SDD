class ExperienceSharing < ActiveRecord::Base  
  belongs_to :user
  attr_accessible :ES_context, :ES_date , :ES_Subject
end
