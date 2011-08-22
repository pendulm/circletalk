class Topic < ActiveRecord::Base
  belongs_to :forum
  has_many :posts, :autosave => true
end
