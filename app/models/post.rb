class Post < ApplicationRecord
    validates :contents, presence: true, allow_blank: false
end
