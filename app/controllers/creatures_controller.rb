class CreaturesController < ApplicationController
    def index
        @creatures = Creature.all
        render :index
    end

    def new
    	render :new
    end

    def create
            creature = params.require(:creature).permit(:name, :description)
            Creature.create(creature)
            redirect_to '/creatures'    
    end

    def show
        id = params[:id]
        @creature = Creature.find(id)
        render :show
    end

    def edit
        id = params[:id]
        @creature = Creature.find(id)
        render :edit
    end

end