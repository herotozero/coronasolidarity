class HelpersController < ApplicationController
  def new
    @helper = Helper.new
  end

  def create
    @helper = Helper.new(helpers_params)
    # @helper.current_step = session[:helper_step]

    # Code für server seitige multi step form
    # if params[:back_button]
    #   @helper.previous_step
    # else
    #   @helper.next_step
    # end

    # session[:helper_step] = @helper.current_step
    # render "new"

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
