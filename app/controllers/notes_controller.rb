class NotesController < ApplicationController

	def index
		@notes = Note.all
		@note = Note.new
	end

	def create
		Note.create(note_params)
		redirect_to notes_path
	end

	private

	def note_params
		params.require(:note).permit(:body)
	end

end
		# note_info = JSON.parse([params[:note]])
		# p note_info
		# new_note = Note.new(body: note_info)
		# new_note.save