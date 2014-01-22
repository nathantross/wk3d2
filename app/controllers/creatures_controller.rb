class CreaturesController < ApplicationController
    def index
        # Note it used to say 
        #   render text: 'Hello, pilots'
        render :index
    end

    def new
    	render :new
    end

end