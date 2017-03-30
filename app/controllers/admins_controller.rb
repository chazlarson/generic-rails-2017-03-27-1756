#
class AdminsController < ApplicationController
  ##############################
  # BEGIN: before_action section
  ##############################
  before_action :may_show_admin, only: [:index, :show]
  before_action :may_destroy_admin, only: [:destroy]
  ############################
  # END: before_action section
  ############################

  #######################
  # BEGIN: action section
  #######################
  def show
    @admin = Admin.find(params[:id])
  end
  #####################
  # END: action section
  #####################

  private

  ########################
  # BEGIN: private section
  ########################
  def may_show_admin
    return redirect_to(root_path) unless admin_signed_in? == true
  end
  helper_method :may_show_admin
  ######################
  # END: private section
  ######################
end
