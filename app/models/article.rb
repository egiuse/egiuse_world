class Article < ApplicationRecord
    belongs_to :category
    # b;ah
    validates_presence_of :title
    validates_presence_of :content 

    scope :alphabetical, -> { order('title')}
    scope :active,           -> { where('active = ?', true) }
end