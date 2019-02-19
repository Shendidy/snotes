class NotesController < ApplicationController
  def index
    @notes = Note.all # Note here is referring to the model
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
    @categories = Category.all # Category here is referring to the model
  end

  def create
  end

  def edit
  end

  def delete
  end

  def update
  end

end
