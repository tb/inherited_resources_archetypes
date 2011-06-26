module Archetype
  module Helpers
    module InheritedResources
      
      def self.included(base)
        base.send :include, InstanceMethods
      end

      module InstanceMethods
        def has_resource?
          resource.present? rescue false
        end
      end

      module OnCreateSuccessRedirectToEdit
        def create
          create! do |success, failure|
            success.html { redirect_to edit_resource_url }
          end
        end
      end

      module OnUpdateSuccessRedirectToEdit
        def update
          update! do |success, failure|
            success.html { redirect_to edit_resource_url }
          end
        end
      end

      module DisableCreateUpdateDelete
        def create; raise ActionController::NotImplemented; end
        def update; raise ActionController::NotImplemented; end
        def delete; raise ActionController::NotImplemented; end
      end

    end
  end
end