class TopicsController < ApplicationController
  # GET /topics/:id
  def show
    @topic = Topic.find(params[:id])
    @forum = @topic.forum
  end

  # GET /topics/new
  def new
    @topic = Topic.new
  end

  # GET /topics/1/edit
  def edit
    @topic = Topic.find(params[:id])
  end

  # POST /topics
  def create
    @forum = Forum.find(params[:forum])
    @topic = Topic.new
    @topic.forum = @forum
    post = Post.new(:content => params[:post_content])
    @topic.posts << post

    if @topic.save
      redirect_to @topic
    else
      redirect_to(topicnew_forum_path(@forum), notice => 'Topic create failed.')
    end
  end

  # PUT /topics/1
  def update
    @topic = Topic.find(params[:id])

    if @topic.update_attributes(params[:topic])
      redirect_to(@topic, :notice => 'Topic was successfully updated.')
    else
      render :action => "edit"
    end
  end

  # DELETE /topics/1
  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy

    redirect_to(topics_url)
  end

  # GET /topics/1/newpost
  def postadd
    @topic = Topic.find(params[:id])
  end
end
