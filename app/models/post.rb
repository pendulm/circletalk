class Post < ActiveRecord::Base
  belongs_to :topic, :touch => true
  belongs_to :user
end
