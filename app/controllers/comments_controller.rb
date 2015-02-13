class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index

      #get post_id
      post = Post.find(params[:post_id])

      #gets all comments
    #  @comments = Comment.

    #get comments on post
    @comment = post.comments

    respond_to do |format|
        format.html # index.html.erb
        format.json  { render :json => @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    #1st you retrieve the post thanks to params[:post_id]
    post = Post.find(params[:post_id])
    #2nd you retrieve the comment thanks to params[:id]
    @comment = post.comments.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json  { render :json => @comment }
    end
  end

  # GET /comments/new
  def new
    @comment = Comment.new()

    # #1st you retrieve the post thanks to params[:post_id]
    # post = Post.find(params[:post_id])
    # #2nd you build a new one
    # @comment = post.Comments.build

    # respond_to do |format|
    #   format.html # new.html.erb
    #   format.json  { render :json => @comment }
    # end
  end

  # GET /comments/1/edit
  def edit
    #1st you retrieve the post thanks to params[:post_id]
    post = Post.find(params[:post_id])
    #2nd you retrieve the comment thanks to params[:id]
    @comment = post.comments.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end


  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
 

    post = Post.find(params[:post_id])
    @comment = post.comments.find(params[:id])
    respond_to do |format|
       if @comment.update(comment_params)
        format.html { redirect_to([@comment.post, @comment], :notice => 'Comment was success')}
      format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
         format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:body, :author, :user_id, :post_id)
    end
end
