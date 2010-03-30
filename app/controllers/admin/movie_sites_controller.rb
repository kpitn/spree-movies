class Admin::MovieSitesController < Admin::BaseController
  resource_controller

  layout proc { |controller| controller.request.xhr? ? false : 'admin' }

  create.response do |wants|
    wants.html{ redirect_to admin_movie_sites_url()}
  end
  update.response do |wants|
    wants.html{ redirect_to admin_movie_sites_url()}
  end
  
  destroy.success.wants.js { render_js_for_destroy }

end
