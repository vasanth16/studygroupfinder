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
        permitted = params[:group].permit(:group_id,:time,:location,:class_code,:group_name)
        @group = Group.create!(permitted)
        flash[:notice] = "#{@group.group_name} was successfully created." 
        redirect_to groups_path 
    end
    
    def edit
        @group = Group.find params[:id]
    end
    
    def update
        @group = Group.find params[:id]
        if(@group.update(group_params))
            redirect_to @group
        else
            render 'edit'
        end
    end
    
    private def group_params
        params.require(:group).permit(:group_id,:time,:location,:members, :class_code, :group_name)
    end
    
    def destroy
        @group = Group.find params[:id]
        @group.destroy
        redirect_to groups_path
    end
    
    def add_member
        #params.require(:group)
        #params[:group]=params[:group]+1
        redirect_to groups_path
    end
end
