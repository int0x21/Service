class UNotesController < ApplicationController
  before_action :set_u_note, only: [:show, :edit, :update, :destroy]

  # GET /u_notes
  # GET /u_notes.json
  def index
    @u_notes = UNote.all
  end

  # GET /u_notes/1
  # GET /u_notes/1.json
  def show
  end

  # GET /u_notes/new
  def new
    @u_note = UNote.new
  end

  # GET /u_notes/1/edit
  def edit
  end

  # POST /u_notes
  # POST /u_notes.json
  def create
    @u_note = UNote.new(u_note_params)

    respond_to do |format|
      if @u_note.save
        format.html { redirect_to @u_note, notice: 'U note was successfully created.' }
        format.json { render action: 'show', status: :created, location: @u_note }
      else
        format.html { render action: 'new' }
        format.json { render json: @u_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /u_notes/1
  # PATCH/PUT /u_notes/1.json
  def update
    respond_to do |format|
      if @u_note.update(u_note_params)
        format.html { redirect_to @u_note, notice: 'U note was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @u_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /u_notes/1
  # DELETE /u_notes/1.json
  def destroy
    @u_note.destroy
    respond_to do |format|
      format.html { redirect_to u_notes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_u_note
      @u_note = UNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def u_note_params
      params.require(:u_note).permit(:note, :user)
    end
end
