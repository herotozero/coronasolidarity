class KrankenhausController < ApplicationController
  before_action :set_krankenhau, only: [:show, :edit, :update, :destroy]

  # GET /krankenhaus
  # GET /krankenhaus.json
  def index
    @krankenhaus = Krankenhaus.all
  end

  # GET /krankenhaus/1
  # GET /krankenhaus/1.json
  def show
  end

  # GET /krankenhaus/new
  def new
    @krankenhau = Krankenhaus.new
  end

  # GET /krankenhaus/1/edit
  def edit
  end

  # POST /krankenhaus
  # POST /krankenhaus.json
  def create
    @krankenhau = Krankenhaus.new(krankenhau_params)

    respond_to do |format|
      if @krankenhau.save
        format.html { redirect_to @krankenhau, notice: 'Krankenhaus was successfully created.' }
        format.json { render :show, status: :created, location: @krankenhau }
      else
        format.html { render :new }
        format.json { render json: @krankenhau.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /krankenhaus/1
  # PATCH/PUT /krankenhaus/1.json
  def update
    respond_to do |format|
      if @krankenhau.update(krankenhau_params)
        format.html { redirect_to @krankenhau, notice: 'Krankenhaus was successfully updated.' }
        format.json { render :show, status: :ok, location: @krankenhau }
      else
        format.html { render :edit }
        format.json { render json: @krankenhau.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /krankenhaus/1
  # DELETE /krankenhaus/1.json
  def destroy
    @krankenhau.destroy
    respond_to do |format|
      format.html { redirect_to krankenhaus_index_url, notice: 'Krankenhaus was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_krankenhau
      @krankenhau = Krankenhaus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def krankenhau_params
      params.fetch(:krankenhau, {})
    end
end
