class HospitalsController < ApplicationController
  def new
    @helper = Hospital.new
  end

  def create
    @helper = Hospital.new(helpers_params)
    @helper.title = 'KEIN'

    if @helper.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @helpers = Hospital.all
  end

  def destroy
    @article = Hospital.find(params[:id])
    @article.destroy

    redirect_to hospital_path
  end

  private
  def helpers_params
    params.require(:helper).permit(:hospital_type, :city, :qualification, :specialty, :start_date, :helper_amount, :personal_note, :first_name, :last_name, :email, :phone, :title, :availability, :shift)
  end

end
