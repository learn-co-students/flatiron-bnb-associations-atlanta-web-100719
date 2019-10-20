class CreateCitiesNeighborhoodsListings < ActiveRecord::Migration[4.2]
  def change
    create_table :users do |t|
      t.string :name
    end
    create_table :cities do |t|
      t.string :name
    end
    create_table :neighborhoods do |t|
      t.string :name
      t.belongs_to :city
    end
    create_table :listings do |t|
      t.string :address
      t.string :listing_type
      t.string :title
      t.string :description
      t.float :price
      t.belongs_to :neighborhood
      t.belongs_to :host
    end
    create_table :reservations do |t|
      t.string :checkin
      t.string :checkout
      t.belongs_to :listing
      t.belongs_to :guest
    end
    create_table :reviews do |t|
      t.string :description
      t.integer :rating
      t.belongs_to :guest
      t.belongs_to :reservation
    end
  end
end
