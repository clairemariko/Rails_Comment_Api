class CommentsController <ApplicationController

  def index
    #this was before we put data in the seed file! 
    # comments = [
    #   {
    #     id:1,
    #     author:"Jay",
    #     text:"This is a comment"
    #   },
    #   {
    #     id:2,
    #     author:"Tony",
    #     text:"hello"
    #   }
    # ]
    #but now we have a seed file so we can call it by doing Comment.all
    comments = Comment.all
    render({:json => comments})
  end

  def create
    comment = Comment.create( comment_params )
    render( { :json => comment } )
  end
  #we need to protect and check what is being passed into create and therefore we permit the text and the author
  private
  def comment_params
    params.require(:comment).permit(:text, :author)
  end

end