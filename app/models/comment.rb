class Comment < ApplicationRecord
    validates :contents, presence: true, allow_blank: false
    belongs_to :user
    belongs_to :post
end
