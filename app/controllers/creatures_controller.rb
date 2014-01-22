class CreaturesController < ApplicationController
    def index
        # Note it used to say 
        #   render text: 'Hello, pilots'
        render :index
    end

end