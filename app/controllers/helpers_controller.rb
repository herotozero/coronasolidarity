class HelpersController < ApplicationController
  def new
  end

  def create
    @helper = Helper.new(params)
    @helper.save
    redirect_to root_path
  end

  def index
    @helpers = Helper.all
  end

  def destroy

  end

  private
  def helpers_params
    params.require(:helper).permit(:title, :first_name, :last_name, :email, :phone, :qualification, :specialty, :city, :commitment, :start_date, :employment_status)
  end

end
