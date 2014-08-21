class SectionsController < ApplicationController

  def index
    render("index.html.erb")
  end

  def new
    render("new.html.erb")
  end

  def create
    @section = Section.new({:name => params[:name], :number => params[:number]})

    if @section.save
      redirect_to('/sections')
    else
      render('sections/new.html.erb')
    end
  end

  def show
    @section = Section.find(params[:id])
    render('sections/show.html.erb')
  end

  def edit
    @section = Section.find(params[:id])
    render('sections/edit.html.erb')
  end

  def update
    @section = Section.find(params[:id])
    if @section.update({:name => params[:name],
                        :number => params[:number]})
      redirect_to('/sections')
    else
      render('sections/edit.html.erb')
    end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    render('sections/destroy.html.erb')
  end
end
