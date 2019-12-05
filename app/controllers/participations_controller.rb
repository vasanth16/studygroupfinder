class ParticipationsController < ApplicationController
    def index
        @participations = Participation.all
    end
    
    def new 
       
        #@participation = Participation.new 
        # default: render 'new' template 
    end  
    
    def create
        @user = current_user
        @participation = Participation.create!({:group_id => 2, :user_id => 21})
        #flash[:notice] = "Participation was successfully created." 
        redirect_to participations_path 
        #params.require(:participation)
        #permitted = params[:participation].permit(:group_id,:user_id)
        
    end
    
    def edit
        @participation = Participation.find params[:id]
    end
    
    def update
        @participation = Participation.find params[:id]
        if(@participation.update(participation_params))
            redirect_to @participation
        else
            render 'edit'
        end
    end
    
    private def participation_params
        params.require(:participation).permit(:group_id,:user_id)
    end
    
    def destroy
        @participation = Participation.find params[:id]
        @participation.destroy
        redirect_to participations_path
    end
end
