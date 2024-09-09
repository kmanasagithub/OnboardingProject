class Image < ApplicationRecord
    belongs_to :user
    acts_as_taggable_on :tags
    validates :tag_list, presence: { message: "provide please." }
end
