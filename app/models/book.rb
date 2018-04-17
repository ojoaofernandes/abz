class Book < ActiveRecord::Base
    belongs_to :discipline
    belongs_to :user
    mount_uploader :image, ImageUploader
    validates_presence_of :title, :author
end
