class Location < ActiveRecord::Base
  include AASM
  belongs_to :address

  validates_length_of :name, :within => 3..32
  validates_uniqueness_of :name, :case_sensitive => :false

  aasm_column :status
  aasm_initial_state :unverified
  aasm_state :unverified
  aasm_state :verified

  aasm_event :verify do
    transitions :unverified => :verified
  end

end
