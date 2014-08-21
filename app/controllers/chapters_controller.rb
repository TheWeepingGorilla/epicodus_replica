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

  def show
    @chapter = Chapter.find(params[:id])
    render('chapters/show.html.erb')
  end

  def edit
    @chapter = Chapter.find(params[:id])
    render('chapters/edit.html.erb')
  end

end


