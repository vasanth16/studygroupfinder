class GroupsController < ApplicationController
    def index
        @groups = Group.all
    end

    def show
        #id = params[:id]
        @group = Group.find params[:id]
    end

end