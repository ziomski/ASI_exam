class Note < ActiveRecord::Base
	validates_presence_of :title, :description
	
	validates :email, :allow_blank => true, :format => { :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/}
	
	mount_uploader :photo, PhotoUploader
	
	def self.search(search)
  		if search
    		where('lower(title) LIKE ? OR description LIKE ?', "%#{search.downcase}%", "%#{search.downcase}%");
  		else
    	scoped
  	end
end	
end