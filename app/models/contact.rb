class Contact < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user_id,:first_name

end
