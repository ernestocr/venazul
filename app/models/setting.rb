class Setting < ApplicationRecord
	mount_uploader :home_photo, PhotoUploader
end
