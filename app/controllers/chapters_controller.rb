class ChaptersController < ApplicationController

  def index
    render("index.html.erb")
  end

  def new
    render("new.html.erb")
  end

  def create
    @chapter = Chapter.new(params[:chapter])
    if @chapter.save(params[:chapter])
      redirect_to('/')
    else
      render('chapters/new.html.erb')
    end
  end
end


