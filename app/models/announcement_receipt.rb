class AnnouncementReceipt < ActiveRecord::Base
  belongs_to :user
  belongs_to :announcement
end
