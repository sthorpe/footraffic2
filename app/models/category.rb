class Category < ActiveRecord::Base
  acts_as_tree :order => "name"
  named_scope :all_children, :conditions => "parent_id IS NOT NULL"
end
