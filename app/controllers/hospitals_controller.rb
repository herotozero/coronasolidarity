class HospitalsController < ApplicationController
  def new
    @hospital = Hospital.new
  end

  def create
    @hospital = Hospital.new(helpers_params)
    @hospital.title = 'KEIN'

    if @hospital.save
      redirect_to thanks_path
    else
      render 'new'
    end
  end

  def index
    @hospitals = Hospital.all
  end

  def destroy
    @hospital = Hospital.find(params[:id])
    @hospital.destroy

    redirect_to hospital_path
  end

  private
  def helpers_params
    params.require(:hospital).permit(:hospital_type, :city, :qualification, :specialty, :start_date, :helper_amount, :personal_note, :first_name, :last_name, :email, :phone, :title, :availability, :shift)
  end

end
