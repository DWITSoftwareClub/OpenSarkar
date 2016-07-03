class SuggestionsController < InheritedResources::Base
  before_action :authenticate_user!, only: [:new] 

  private

    def suggestion_params
      params.require(:suggestion).permit(:title, :description)
    end
end

