module Archetype
  module Helpers
    module InheritedResources
      
      module Ajax
        def index
          index! do |success|
            success.js { render :index, :layout => "popup" }
          end
        end

        def new
          new! do |success, failure|
            success.js { render :edit, :layout => "popup" }
          end
        end

        def edit
          edit! do |success|
            success.js { render :edit, :layout => "popup" }
          end
        end

        def create
          create! do |success, failure|
            success.js { render :create }
            failure.js { render :edit, :layout => "popup" }
          end
        end

        def update
          update! do |success, failure|
            success.js { render :update }
            failure.js { render :edit, :layout => "popup" }
          end
        end

        def destroy
          destroy! do |success, failure|
            success.js { render :destroy_success }
            failure.js { render :destroy_failure }
          end
        end
      end

    end
  end
end