class CreateLocationHours < ActiveRecord::Migration
  def self.up
    create_table :location_hours, :force => true do |t|
      t.references  :location
      t.integer     :weekday
      t.time        :start
      t.time        :close
    end
  end

  def self.down
    drop_table :location_hours
  end
end
