class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
  end

  def edit
  end

  def delete
  end

  def update
  end

end
