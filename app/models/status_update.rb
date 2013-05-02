class StatusUpdate < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :title

  default_scope order: 'status_updates.created_at DESC'
end
