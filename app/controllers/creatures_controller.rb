class CreaturesController < ApplicationController
    def index
        # Note it used to say 
        #   render text: 'Hello, pilots'
        @creatures = Creature.all
        render :index
    end

    def new
    	render :new
    end

    def create
        creature = params.require(:creature).permit(:name, :description)
        Creature.create(creature)
        redirect_to "/creatures"
    end


end