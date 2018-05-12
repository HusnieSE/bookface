class Post < ApplicationRecord
    validates :contents, presence: true, allow_blank: false
    belongs_to :user
end
