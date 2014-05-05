class Note < ActiveRecord::Base
	mount_uploader :photo, PhotoUploader
	
	def self.search(search)
  		if search
    		where('lower(title) LIKE ? OR description LIKE ?', "%#{search.downcase}%", "%#{search.downcase}%");
  		else
    	scoped
  	end
end	
end
