class NotesController < ApplicationController
  def create
    @note = current_user.notes.new(note_params)
    if @note.save
      redirect_to "/#{@note.name}"
    else
      render 'home/index'
    end
  end

  def show
    @note = Note.find_by_name(params[:name])
    unless @note
      @note = Note.new(name: params[:name])
      @note.save
      render 'show'
    end
  end

  def update
    @note = current_user.notes.find(params[:id])
    if @note.update_attributes(note_params)
      redirect_to note_path(@note), notice: 'Note was successfully updated!'
    else
      render 'home/index'
    end
  end

  protected

  def note_params
    params.required(:note)
          .permit(:name, :body)
  end
end