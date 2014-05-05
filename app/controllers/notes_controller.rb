class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  # GET /notes
  # GET /notes.json
  def index
    @notes = Note.search(params[:search]).paginate(:per_page => 6, :page => params[:page])
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
  end

  # GET /notes/new
  def new
    @note = Note.new
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes
  # POST /notes.json
  def create
    @note = Note.new(note_params)
	
	respond_to do |format|
      if @note.save
        format.html {  redirect_to notes_url }
        format.json { render action: 'show', status: :created, location: @note }
      else
        format.html { render action: 'new' }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to notes_url }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # GET /notes/1
  # GET /notes/1.json
   def checked
    note = Note.find(params[:id])
    note.checked = 'true'
    note.save

    redirect_to notes_url
  end
  
  # GET /notes/1
  # GET /notes/1.json
   def unchecked
    note = Note.find(params[:id])
    note.checked = 'false'
    note.save

    redirect_to notes_url
  end
  
  # GET /delchecked
   def delchecked
   
     ary = Array.new();
   	Note.all.each do |note| 
		if note.checked == 'true'
		 	ary.push(note.id)
		end
	end
	ary.each { |x|
		@note = Note.find(x)
		@note.destroy
	}
	 redirect_to notes_url
  end
  
  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to notes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.require(:note).permit(:priority, :title, :description, :photo, :remote_photo_url, :checked)
    end
end
