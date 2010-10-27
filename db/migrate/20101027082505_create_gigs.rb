class CreateGigs < ActiveRecord::Migration
  def self.up
    create_table :gigs do |t|
      t.string :title
      t.string :venue
      t.string :city
      t.string :country
      t.date :date
      t.text :description
      t.text :map

      t.timestamps
    end
  end

  def self.down
    drop_table :gigs
  end
end
