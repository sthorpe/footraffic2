class NewStoreController < ApplicationController
  def index
    act_wizardly_for :business
  end
end

validation_group :step1, :fields=>[:first_name, :last_name]
  validation_group :step2, :fields=>[:age, :gender]
