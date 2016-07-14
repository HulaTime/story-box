class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def new
  end

  def create
    note = current_user.notes.create(note_params)
    redirect_to '/notes' if note.save
  end

  def show
    @note = Note.find(params[:id])
  end

  private

  def note_params
    params.require(:note).permit(:title, :note)
  end

end
