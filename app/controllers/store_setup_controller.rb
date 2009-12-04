class StoreSetupController < ApplicationController
  act_wizardly_for :business,
    :completed => '/store_setup/complete',
    :canceled => { :action => :new }
end