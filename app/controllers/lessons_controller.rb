class LessonsController < ApplicationController

  def index
    render("index.html.erb")
  end

  def new
    render("new.html.erb")
  end

  def create
    @lesson = Lesson.new({:name => params[:name], :number => params[:number]})

    if @lesson.save
      redirect_to('/lessons')
    else
      render('lessons/new.html.erb')
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end

  def edit
    @lesson = Lesson.find(params[:id])
    render('lessons/edit.html.erb')
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update({:name => params[:name],
                        :number => params[:number]})
      redirect_to('/lessons')
    else
      render('lessons/edit.html.erb')
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    render('lessons/destroy.html.erb')
  end

end
