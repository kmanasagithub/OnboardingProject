class Image < ApplicationRecord
  serialize :tags, coder: JSON
end
