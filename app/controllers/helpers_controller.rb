class HelpersController < ApplicationController
  def new
    @helper = Helper.new
  end

  def create
    @helper = Helper.new(helpers_params)

    if @helper.save
      redirect_to helper_path
    else
      render 'new'
    end
  end

  def index
    @helpers = Helper.all
  end

  def destroy
    @article = Helper.find(params[:id])
    @article.destroy

    redirect_to helper_path
  end

  private
  def helpers_params
    params.require(:helper).permit(:title, :first_name, :last_name, :email, :phone, :qualification, :specialty, :city, :commitment, :start_date, :employment_status)
  end

end
