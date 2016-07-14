class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def new
  end

  def create
    note = current_user.notes.create(note_params)
    if note.save
      redirect_to '/notes'
    else
      if note.errors
        render :new
      end
    end
  end

  private

  def note_params
    params.require(:note).permit(:title, :note)
  end

end
