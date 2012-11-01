class ForumsController < ApplicationController
  def index
    @forums = Forum.all
  end

  def new
    @forum = Forum.new
  end

  def create
    @forum = Forum.new(params[:forum])
    if @forum.save
      redirect_to forums_url, :notice => "Successfully created forum."
    else
      render :action => 'new'
    end
  end
end
