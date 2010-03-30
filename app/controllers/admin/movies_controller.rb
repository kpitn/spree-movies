class Admin::MoviesController < Admin::BaseController
  resource_controller
  belongs_to :product

  layout proc { |controller| controller.request.xhr? ? false : 'admin' }

  create.response do |wants|
    wants.html{ redirect_to admin_product_movies_url(@product)}
  end
  update.response do |wants|
    wants.html{ redirect_to admin_product_movies_url(@product)}
  end
  
  destroy.success.wants.js { render_js_for_destroy }

end
