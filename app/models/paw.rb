class Paw < ApplicationRecord
     belongs_to :about	    
	    #paperclip validations
	has_attached_file :avatar, styles: { medium: "600x600>", thumb: "100x100>",large: '1000x1000>' }
    validates_attachment :avatar, presence: true,
    content_type: { content_type: ["image/jpeg", "image/png", "image/jpg"] },
    size: {in: 0..500.kilobytes }
end
