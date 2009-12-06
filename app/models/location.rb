class Location < ActiveRecord::Base
  include AASM
  belongs_to :address
  belongs_to :business

  validates_length_of :name, :within => 3..32

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
