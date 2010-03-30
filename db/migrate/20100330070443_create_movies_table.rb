class CreateMoviesTable < ActiveRecord::Migration
  def self.up
    create_table :movie_sites, :force=>true do |t|
      t.string :name
      t.integer :width
      t.integer :height
      t.text :embed
      t.timestamps
    end
    
    create_table :movies, :force=>true do |t|
      t.string :name
      t.references :product
      t.string :keyword
      t.references :movie_site
      t.timestamps
    end
    add_index :movies, :product_id
    add_index :movies, :movie_site_id
  end

  def self.down
    drop_table :movies
    drop_table :movie_site
  end
end