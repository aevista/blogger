class TagsController < ApplicationController
	include UserSessionsHelper
	before_filter :loginCheck, only: [:destroy]
	before_filter :require_login, only: [:destroy]
	def index
		@tags = Tag.all
	end
	def show
		@tag = Tag.find(params[:id])
	end
	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy

		if Tag.count.zero?
	    	redirect_to articles_path
	    else
	    	redirect_to tags_path
	    end
	end
end
