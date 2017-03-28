class Paw < ApplicationRecord
	#paws features validation
	validates :name, presence: true
    #paperclip validations
	has_attached_file :avatar, styles: { medium: "600x600>", thumb: "100x100>",large: '1000x1000>' }
    validates_with AttachmentPresenceValidator, :attributes => :avatar
    validates_with AttachmentSizeValidator, :attributes => :avatar, less_than: 1.megabytes
    validates_attachment :avatar, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
    validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
    #add affection
   
end
