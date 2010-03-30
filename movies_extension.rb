# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class MoviesExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/movies"

  def self.require_gems(config)
    config.gem "formtastic"
  end
  
  def activate

    Product.class_eval do
      has_many :movies
    end

  end
end
