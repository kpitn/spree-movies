class MovieSite < ActiveRecord::Base
  has_many :movies

  validates_presence_of :name, :height, :width, :embed
  validates_uniqueness_of :name

end