class Profile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :about, :hobbies, :star_sign
end
