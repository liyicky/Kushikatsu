class ApplicationController < ActionController::Base
  include DeviseWhitelist, SetSource, CurrentUserConcern
end
