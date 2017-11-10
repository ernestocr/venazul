class Album < ApplicationRecord
	mount_uploaders :photos, PhotoUploader
	default_scope { order(created_at: :asc) }

	def created_at_f
		created_at.strftime('%d/%m/%Y')
	end
end
