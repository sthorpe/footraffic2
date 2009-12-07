class Business < ActiveRecord::Base
  include AASM
  has_many :offers
  has_many :locations
  has_many :addresses, :through => :locations

  belongs_to :primary_category, :class_name => "Category"
  belongs_to :category
  belongs_to :owner, :class_name => "User"

  validates_uniqueness_of :name, :case_sensitive => false
  validates_length_of :name, :within => 2..32
  validates_uniqueness_of :email, :case_sensitive => false
  validates_length_of :email, :within => 7..255
  validates_presence_of :phone
  validates_presence_of :primary_category_id
  validates_presence_of :category_id

  named_scope :verified,   :conditions => ["status = 'verified'"]
  named_scope :unverified, :conditions => ["status = 'unverified'"]
  named_scope :suspended,  :conditions => ["status = 'suspended'"]

  aasm_column :status
  aasm_initial_state :unverified
  aasm_state :suspended
  aasm_state :unverified
  aasm_state :verified

  aasm_event :verify do
    transitions :from => [:unverified, :suspended], :to => :verified
  end

  aasm_event :suspend do
    transitions :from => [:unverified, :verified], :to => :suspended
  end
end
