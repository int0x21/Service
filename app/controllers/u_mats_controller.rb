class UMatsController < ApplicationController
  before_action :set_u_mat, only: [:show, :edit, :update, :destroy]

  # GET /u_mats
  # GET /u_mats.json
  def index
    @u_mats = UMat.all
  end

  # GET /u_mats/1
  # GET /u_mats/1.json
  def show
  end

  # GET /u_mats/new
  def new
    @u_mat = UMat.new
  end

  # GET /u_mats/1/edit
  def edit
  end

  # POST /u_mats
  # POST /u_mats.json
  def create
    @u_mat = UMat.new(u_mat_params)

    respond_to do |format|
      if @u_mat.save
        format.html { redirect_to @u_mat, notice: 'U mat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @u_mat }
      else
        format.html { render action: 'new' }
        format.json { render json: @u_mat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /u_mats/1
  # PATCH/PUT /u_mats/1.json
  def update
    respond_to do |format|
      if @u_mat.update(u_mat_params)
        format.html { redirect_to @u_mat, notice: 'U mat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @u_mat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /u_mats/1
  # DELETE /u_mats/1.json
  def destroy
    @u_mat.destroy
    respond_to do |format|
      format.html { redirect_to u_mats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_u_mat
      @u_mat = UMat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def u_mat_params
      params.require(:u_mat).permit(:PULAGER_ID, :PULAGER_Name, :unit_ID)
    end
end
