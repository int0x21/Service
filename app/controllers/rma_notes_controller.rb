class RmaNotesController < ApplicationController
  before_action :set_rma_note, only: [:show, :edit, :update, :destroy]

  # GET /rma_notes
  # GET /rma_notes.json
  def index
    @rma_notes = RmaNote.all
  end

  # GET /rma_notes/1
  # GET /rma_notes/1.json
  def show
  end

  # GET /rma_notes/new
  def new
    @rma_note = RmaNote.new
  end

  # GET /rma_notes/1/edit
  def edit
  end

  # POST /rma_notes
  # POST /rma_notes.json
  def create
    @rma_note = RmaNote.new(rma_note_params)

    respond_to do |format|
      if @rma_note.save
        format.html { redirect_to @rma_note, notice: 'Rma note was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rma_note }
      else
        format.html { render action: 'new' }
        format.json { render json: @rma_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rma_notes/1
  # PATCH/PUT /rma_notes/1.json
  def update
    respond_to do |format|
      if @rma_note.update(rma_note_params)
        format.html { redirect_to @rma_note, notice: 'Rma note was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rma_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rma_notes/1
  # DELETE /rma_notes/1.json
  def destroy
    @rma_note.destroy
    respond_to do |format|
      format.html { redirect_to rma_notes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rma_note
      @rma_note = RmaNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rma_note_params
      params.require(:rma_note).permit(:note, :user)
    end
end
