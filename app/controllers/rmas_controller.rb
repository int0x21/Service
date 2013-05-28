class RmasController < ApplicationController
  before_action :set_rma, only: [:show, :edit, :update, :destroy]

  # GET /rmas
  # GET /rmas.json
  def index
    @rmas = Rma.all
  end

  # GET /rmas/1
  # GET /rmas/1.json
  def show
  end

  # GET /rmas/new
  def new
    @rma = Rma.new
  end

  # GET /rmas/1/edit
  def edit
  end

  # POST /rmas
  # POST /rmas.json
  def create
    @rma = Rma.new(rma_params)

    respond_to do |format|
      if @rma.save
        format.html { redirect_to @rma, notice: 'Rma was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rma }
      else
        format.html { render action: 'new' }
        format.json { render json: @rma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rmas/1
  # PATCH/PUT /rmas/1.json
  def update
    respond_to do |format|
      if @rma.update(rma_params)
        format.html { redirect_to @rma, notice: 'Rma was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rmas/1
  # DELETE /rmas/1.json
  def destroy
    @rma.destroy
    respond_to do |format|
      format.html { redirect_to rmas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rma
      @rma = Rma.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rma_params
      params.require(:rma).permit(:PUFIRMA_ID, :PUFIRADR_AID, :status, :user, :ttest, :tprod, :tmech, :tprot, :warranty, :action)
    end
end
