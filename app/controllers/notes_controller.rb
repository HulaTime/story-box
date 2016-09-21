class NotesController < ApplicationController

	def index
		redirect_to root_path if !user_signed_in?
		@sorted_notes = current_user.sort_notes_by_id unless !user_signed_in?
		@note = Note.new
	end

	def create
		current_user.notes.create(create_note_params)
		redirect_to notes_path
	end

	def destroy
		note = current_user.notes.find(params[:id])
		note.delete
		redirect_to notes_path
	end

	def update
		note = current_user.notes.find(edit_note_params[:id])
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