class RMatsController < ApplicationController
  before_action :set_r_mat, only: [:show, :edit, :update, :destroy]

  # GET /r_mats
  # GET /r_mats.json
  def index
    @r_mats = RMat.all
  end

  # GET /r_mats/1
  # GET /r_mats/1.json
  def show
  end

  # GET /r_mats/new
  def new
    @r_mat = RMat.new
  end

  # GET /r_mats/1/edit
  def edit
  end

  # POST /r_mats
  # POST /r_mats.json
  def create
    @r_mat = RMat.new(r_mat_params)

    respond_to do |format|
      if @r_mat.save
        format.html { redirect_to @r_mat, notice: 'R mat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @r_mat }
      else
        format.html { render action: 'new' }
        format.json { render json: @r_mat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /r_mats/1
  # PATCH/PUT /r_mats/1.json
  def update
    respond_to do |format|
      if @r_mat.update(r_mat_params)
        format.html { redirect_to @r_mat, notice: 'R mat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @r_mat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /r_mats/1
  # DELETE /r_mats/1.json
  def destroy
    @r_mat.destroy
    respond_to do |format|
      format.html { redirect_to r_mats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_r_mat
      @r_mat = RMat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def r_mat_params
      params.require(:r_mat).permit(:PULAGER_ID, :PULAGER_Name, :SRow_ID)
    end
end
