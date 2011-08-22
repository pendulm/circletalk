class ForumsController < ApplicationController
  # GET /forums
  def index
    @forums = Forum.all
  end

  # GET /forums/1
  def show
    @forum = Forum.find(params[:id])
    @sub_forums = @forum.childs
  end

  # GET /forums/new
  def new
    @forum = Forum.new
  end

  # GET /forums/1/edit
  def edit
    @forum = Forum.find(params[:id])
  end

  # POST /forums
  def create
    @forum = Forum.new(params[:forum])

    if @forum.save
      redirect_to(@forum, :notice => 'Forum was successfully created.')
    else
      render :action => "new"
    end
  end

  # PUT /forums/1
  def update
    @forum = Forum.find(params[:id])

    if @forum.update_attributes(params[:forum])
      redirect_to(@forum, :notice => 'Forum was successfully updated.')
    else
      render :action => "edit" 
    end
  end

  # DELETE /forums/1
  def destroy
    @forum = Forum.find(params[:id])
    @forum.destroy

    respond_to do |format|
      format.html { redirect_to(forums_url) }
    end
  end

  # GET /forums/1/topicnew
  def topicnew
    @forum = Forum.find(params[:id])
  end
end
