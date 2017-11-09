class Album < ApplicationRecord
	mount_uploaders :photos, PhotoUploader

	def created_at_f
		created_at.strftime('%d/%m/%Y')
	end
end
