class SrNotesController < ApplicationController
  before_action :set_sr_note, only: [:show, :edit, :update, :destroy]

  # GET /sr_notes
  # GET /sr_notes.json
  def index
    @sr_notes = SrNote.all
  end

  # GET /sr_notes/1
  # GET /sr_notes/1.json
  def show
  end

  # GET /sr_notes/new
  def new
    @sr_note = SrNote.new
  end

  # GET /sr_notes/1/edit
  def edit
  end

  # POST /sr_notes
  # POST /sr_notes.json
  def create
    @sr_note = SrNote.new(sr_note_params)

    respond_to do |format|
      if @sr_note.save
        format.html { redirect_to @sr_note, notice: 'Sr note was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sr_note }
      else
        format.html { render action: 'new' }
        format.json { render json: @sr_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sr_notes/1
  # PATCH/PUT /sr_notes/1.json
  def update
    respond_to do |format|
      if @sr_note.update(sr_note_params)
        format.html { redirect_to @sr_note, notice: 'Sr note was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sr_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sr_notes/1
  # DELETE /sr_notes/1.json
  def destroy
    @sr_note.destroy
    respond_to do |format|
      format.html { redirect_to sr_notes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sr_note
      @sr_note = SrNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sr_note_params
      params.require(:sr_note).permit(:note, :user)
    end
end
