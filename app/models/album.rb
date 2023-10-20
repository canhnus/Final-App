class Album < ActiveRecord::Base
    belongs_to :user

    has_many :photos, through: albums_photos

    enum album_type: [:private, :public]

end 
