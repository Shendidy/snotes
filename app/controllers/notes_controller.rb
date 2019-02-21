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
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update_attributes(note_params)
      flash[:alert] = "Your updated note has been saved."
      redirect_to note_path
    else
      flash[:alert] = "Couldn't update your note, please try again or cancel!"
      render 'edit'
    end
  end

  def destroy
    @note = Note.find(params[:id])
    if @note.destroy
      flash[:alert] = "Your note has been deleted successfully"
      redirect_to :action => 'index'
    else
      flash[:alert] = "We couldn't delete your note, please try again!"
      render 'show'
    end
  end

  private
  def note_params
    params.require(:note).permit(:note_title, :note_body, :note_category_id)
  end
end
