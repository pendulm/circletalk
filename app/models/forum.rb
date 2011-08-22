class Forum < ActiveRecord::Base
  has_many :childs, :class_name => "Forum", :foreign_key  => 'parent_id'
  belongs_to :parent, :class_name => "Forum"
  has_many :topics

  validates_presence_of :name

  def get_path
    path_list = []
    f = self
    until f.parent.nil?
      path_list.unshift f.parent
      f = f.parent
    end
    path_list
  end

  def get_path_include_self
    path_list = get_path
    path_list << self
  end
end
