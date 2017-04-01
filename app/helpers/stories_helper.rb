module StoriesHelper
	def story(paw_id)
      if @story.paw.id == paw_id
      	@story.body
      else
      	respond_to do |format|
      		format.html{ redirect_to @story,notice: "No Stories Found" }
      	end
      end
  end
end
