class Paw < ApplicationRecord
	#paws features validation
	validates :name, presence: true
    #paperclip validations
	has_attached_file :avatar, styles: { medium: "600x600>", thumb: "100x100>",large: '1000x1000>' },
	                  :storage => :s3,
	                  :s3_credentials => Proc.new{|a| a.instance.s3_credentials },
                      :s3_permissions => :private
    validates_with AttachmentPresenceValidator, :attributes => :avatar
    validates_with AttachmentSizeValidator, :attributes => :avatar, less_than: 1.megabytes
    validates_attachment :avatar, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
    validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
    #asscoiations
    has_many :stories
    ##
    def s3_credentials
      {:bucket => "pawsome", :access_key_id => "AKIAID5FLVIVE7OQ3R2A", :secret_access_key => "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"}
    end
end
