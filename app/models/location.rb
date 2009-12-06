class Location < ActiveRecord::Base
  include AASM
  belongs_to :address
  belongs_to :business

  validates_length_of :name, :within => 3..32

  aasm_column :status
  aasm_initial_state :unverified
  aasm_state :unverified
  aasm_state :verified

  aasm_event :verify do
    transitions :unverified => :verified
  end

end
