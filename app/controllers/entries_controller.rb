class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      redirect_to entries_url, notice: "save successful"
    else
      flash.now[:notice] = "error, try again"
      render :new
    end
  end

  private
  def entry_params
    params.require(:entry).permit(:title, :content)
  end



end
