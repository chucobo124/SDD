class PersonalData < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :user
  attr_accessible  :birthday,:id_number,:school_name,:department,:connect_address,:connect_phone_number,:personality,:expect,:specialty,:ideal,:learning_skill
end
