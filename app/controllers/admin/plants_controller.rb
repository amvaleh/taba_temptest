module Admin
  class PlantsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Plant.all.paginate(10, params[:page])
    # end

    # Define a custom finder by overriding the `find_resource` method:
    def find_resource(param)
      Plant.find_by!(farsi_name: param)
    end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
