require 'carrierwave/orm/activerecord'
class List < ActiveRecord::Base
	has_many :tasks
	validates :name, presence: true
  mount_uploader :avatar, AvatarUploader
end