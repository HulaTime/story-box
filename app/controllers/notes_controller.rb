class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def new
  end

  def create
    Note.create(note_params)
    redirect_to '/notes'
  end

  private

  def note_params
    params.require(:note).permit(:title, :note)
  end

end
