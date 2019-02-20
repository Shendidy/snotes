class NotesController < ApplicationController
  def index
    @notes = Note.all.order("updated_at DESC") # Note here is referring to the model
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
    @categories = Category.all # Category here is referring to the model
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      flash[:alert] = "Your note has been saved"
      redirect_to :action => 'index'
    else
      flash[:alert] = "Couldn't save your note, please try again"
      render 'new'
    end
  end

  def edit
  end

  def delete
  end

  def update
  end

  private
  def note_params
    params.require(:note).permit(:note_title, :note_body, :note_category_id)
  end
end
