class RequiredAuthenticationController < BaseController
  before_action :authorized, only: [:show]
end
