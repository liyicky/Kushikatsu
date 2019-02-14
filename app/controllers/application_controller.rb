class ApplicationController < ActionController::Base
  include DeviseWhitelist, SetSource, CurrentUserConcern

  before_action :set_page_defaults

  def set_page_defaults
    @page_title = current_user.first_name + '\'s Dinosaur Turds'
    @seo_keywords = 'Jason Cheladyn portfolio'
  end
end
