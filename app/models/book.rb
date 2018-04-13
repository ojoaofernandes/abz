class Book < ApplicationRecord
    belongs_to :discipline
    belongs_to :user
    
    validates_presence_of :title, :author
end
