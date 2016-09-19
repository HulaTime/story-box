class NotesController < ApplicationController

	def index
		@notes = Note.all
		@note = Note.new
	end

	def create
		Note.create(create_note_params)
		redirect_to notes_path
	end

	def destroy
		note = Note.find(params[:id])
		note.delete
		redirect_to notes_path
	end

	def update
		note = Note.find(edit_note_params[:id])
		note.update(body: edit_note_params[:note])
	end

	private

	def create_note_params
		params.require(:note).permit(:body)
	end

	def edit_note_params
		params.permit(:note, :id)
	end

end
		# note_info = JSON.parse([params[:note]])
		# p note_info
		# new_note = Note.new(body: note_info)
		# new_note.save