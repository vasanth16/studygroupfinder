class GroupsController < ApplicationController
    def index
        @groups = Group.all
    end

    def details
        id = params[:id]
        @group = Group.find(id)
    end

end