class Book < ActiveRecord::Base
    belongs_to :discipline
    belongs_to :user
    has_many :bookings
    mount_uploader :image, ImageUploader
    validates_presence_of :title, :author
end
