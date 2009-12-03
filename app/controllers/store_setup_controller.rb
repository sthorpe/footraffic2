class StoreSetupController < ApplicationController
  def index
    act_wizardly_for :business
  end
end