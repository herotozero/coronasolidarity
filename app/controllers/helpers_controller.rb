class HelpersController < ApplicationController
  def new
    @helper = Helper.new
  end

  def create
    @helper = Helper.new(helpers_params)
    @helper.title = 'KEIN'
    print @helper.inspect
    if @helper.save
      SendHelperMailJob.perform_later(@helper)
      redirect_to thanks_path
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

    redirect_to helpers_path
  end

  def test
    SendHelperMailJob.perform_later(Helper.last)
    redirect_to root_path
  end

  private
  def helpers_params
    params.require(:helper).permit(:title, :first_name, :last_name, :email, :phone, :qualification, :specialty, :availability, :shift, :city, :commitment, :start_date, :employment_status)
  end

end
