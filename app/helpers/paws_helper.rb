module PawsHelper
	def current_paw
		@paw = Paw.find_by(params[:id])
		current_paw ||= @paw.id
		return current_paw
	end
end
