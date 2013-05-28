class SRowsController < ApplicationController
  before_action :set_s_row, only: [:show, :edit, :update, :destroy]

  # GET /s_rows
  # GET /s_rows.json
  def index
    @s_rows = SRow.all
  end

  # GET /s_rows/1
  # GET /s_rows/1.json
  def show
  end

  # GET /s_rows/new
  def new
    @s_row = SRow.new
  end

  # GET /s_rows/1/edit
  def edit
  end

  # POST /s_rows
  # POST /s_rows.json
  def create
    @s_row = SRow.new(s_row_params)

    respond_to do |format|
      if @s_row.save
        format.html { redirect_to @s_row, notice: 'S row was successfully created.' }
        format.json { render action: 'show', status: :created, location: @s_row }
      else
        format.html { render action: 'new' }
        format.json { render json: @s_row.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /s_rows/1
  # PATCH/PUT /s_rows/1.json
  def update
    respond_to do |format|
      if @s_row.update(s_row_params)
        format.html { redirect_to @s_row, notice: 'S row was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @s_row.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /s_rows/1
  # DELETE /s_rows/1.json
  def destroy
    @s_row.destroy
    respond_to do |format|
      format.html { redirect_to s_rows_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_s_row
      @s_row = SRow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def s_row_params
      params.require(:s_row).permit(:rma_ID, :ttest, :tprod, :tmech, :tprot, :warranty, :action, :PULAGER_ID, :artname)
    end
end
