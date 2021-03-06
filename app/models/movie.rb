class Movie < ApplicationRecord
    
    belongs_to :user
    has_many :reviews
    has_attached_file :image, :default_url => ":style/rails1.jpg", validate_media_type: false
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

    
    def self.search(search)

      where(["title LIKE ? or description LIKE ? " , "%#{search}%", "%#{search}%"])
    end

end
