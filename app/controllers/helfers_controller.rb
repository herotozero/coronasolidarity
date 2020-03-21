class HelfersController < ApplicationController
  before_action :set_helfer, only: [:show, :edit, :update, :destroy]

  # GET /helfers
  # GET /helfers.json
  def index
    @helfers = Helfer.all
  end

  # GET /helfers/1
  # GET /helfers/1.json
  def show
  end

  # GET /helfers/new
  def new
    @helfer = Helfer.new
  end

  # GET /helfers/1/edit
  def edit
  end

  # POST /helfers
  # POST /helfers.json
  def create
    @helfer = Helfer.new(helfer_params)

    respond_to do |format|
      if @helfer.save
        format.html { redirect_to @helfer, notice: 'Helfer was successfully created.' }
        format.json { render :show, status: :created, location: @helfer }
      else
        format.html { render :new }
        format.json { render json: @helfer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /helfers/1
  # PATCH/PUT /helfers/1.json
  def update
    respond_to do |format|
      if @helfer.update(helfer_params)
        format.html { redirect_to @helfer, notice: 'Helfer was successfully updated.' }
        format.json { render :show, status: :ok, location: @helfer }
      else
        format.html { render :edit }
        format.json { render json: @helfer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /helfers/1
  # DELETE /helfers/1.json
  def destroy
    @helfer.destroy
    respond_to do |format|
      format.html { redirect_to helfers_url, notice: 'Helfer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_helfer
      @helfer = Helfer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def helfer_params
      params.fetch(:helfer, {})
    end
end
