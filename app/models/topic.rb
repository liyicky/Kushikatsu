class Topic < ApplicationRecord
  validates_presents_of :title

  has_many :blogs
end
