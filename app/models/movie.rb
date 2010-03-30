class Movie < ActiveRecord::Base
  belongs_to :product
  belongs_to :movie_site
  
  validates_presence_of :name, :movie_site,:keyword


  def content(option=:normal)
    case true
      when option == :mini
        width = "100"
        height = "60"
      when option  == :normal
        width = self.movie_site.width.to_s
        height = self.movie_site.height.to_s
    else
        width = self.movie_site.width.to_s
        height = self.movie_site.height.to_s
    end
    self.movie_site.embed.gsub("[[WIDTH]]",width).gsub("[[HEIGHT]]",height).gsub("[[KEYWORD]]",self.keyword)

  end


end