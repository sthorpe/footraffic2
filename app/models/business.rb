class Business < ActiveRecord::Base
  include AASM
  has_many :offers
  has_many :locations
  has_many :businesses_categories
  has_many :categories, :through => :businesses_categories
  
  validation_group :new
  validation_group :step1, :fields => [:name, :email, :phone, :description, :categories]
  validation_group :step2, :fields => [:locations]
  validation_group :step3

  validates_uniqueness_of :name, :case_sensitive => false
  validates_length_of :name, :within => 2..32
  validates_uniqueness_of :email, :case_sensitive => false
  validates_length_of :email, :within => 7..255


  aasm_column :status
  aasm_initial_state :unverified
  aasm_state :suspended
  aasm_state :unverified
  aasm_state :verified

  aasm_event :verify do
    transitions :unverified => :verified
  end

  aasm_event :suspend do
    transitions :unverified => :suspended
    transitions :verified => :suspended
  end
end
