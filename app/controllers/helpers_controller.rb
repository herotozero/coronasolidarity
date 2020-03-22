class HelpersController < ApplicationController
  before_action :authenticate, only: :index if Rails.env.production?

  def new
    @helper = Helper.new
  end

  def create
    @helper = Helper.new(helpers_params)
    @helper.title = 'KEIN'
    print @helper.inspect
    if @helper.save
      SendHelperMailJob.perform_later(@helper)
      MatchHelperJob.perform_later(@helper, SecureRandom.uuid)
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

  def test_mail
    SendHelperMailJob.perform_later(Helper.last)
    redirect_to root_path
  end

  def test_match
    redirect_to root_path
  end

  private
  def helpers_params
    params.require(:helper).permit(:title, :first_name, :last_name, :email, :phone, :qualification, :radius, :specialty, :availability, :shift, :city, :commitment, :start_date, :employment_status, :personal_note)
  end

end
