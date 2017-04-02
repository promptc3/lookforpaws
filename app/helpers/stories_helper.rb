module StoriesHelper
	def shorten(story_id)
		@body = Story.find(story_id)
		@body.body[0..50] << ".........."
	end
end
