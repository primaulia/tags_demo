class Restaurant < ApplicationRecord
  TAGS_LIST = [ 'fast-food', 'burger', 'italian', 'japanese', 'spanish' ]

  belongs_to :user
  acts_as_taggable_on :tags
end
