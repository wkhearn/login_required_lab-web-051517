class SecretsController < ApplicationController
  before_action :require_login
  # skip_before_action :require_login, only: [:index]

  def show
  end

  private

  def require_login
    redirect_to login_path unless current_user
  end
end
