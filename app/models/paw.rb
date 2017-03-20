class Paw < ApplicationRecord
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>",large: '1000x1000>' }
    validates_attachment :avatar, presence: true,
    content_type: { content_type: "image/jpeg" },
    size: { in: 0..10.kilobytes }
end
