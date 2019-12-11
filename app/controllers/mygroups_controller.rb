class MygroupsController < ApplicationController

     def index
        #@groups=Group.where(["group_name LIKE ?","%#{params[:search]}%"]).order(:group_name)
        if user_signed_in? 
            @user = current_user
        
            @mygroups = []
            @participations= Participation.where(:user_id => @user.id)
            @participations.each do |participations|
                puts "____________"
                @group = Group.where(:id => participations.group_id)
                @group.each do |group|
                    @mygroups.append(group)
                end
            end
            puts @mygroups
            
            @groups=@mygroups
        
        #@groups=Group.all
        end
    end
end