class GroupsController < ApplicationController
    def index
        @groups = Group.all
    end

    def show
        #id = params[:id]
        @group = Group.find params[:id]
    end
    
    def new 
        @group = Group.new 
        # default: render 'new' template 
    end  

    def create
        params.require(:group)
        permitted = params[:group].permit(:group_id,:time,:location, :members, :class_code, :group_name)
        @group = Group.create!(permitted)
        flash[:notice] = "#{@group.group_name} was successfully created." 
        redirect_to groups_path 
    end
    
end