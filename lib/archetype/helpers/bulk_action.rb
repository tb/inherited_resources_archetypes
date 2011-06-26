module Archetype
  module Helpers
    module BulkAction

      def self.included(base)
        base.class_eval do
          before_filter :get_ids
          def get_ids
            @ids = params[:ids] || []
          end
        end
      end

      def bulk
        bulk_action = "bulk_#{params[:bulk_action]}"
        self.send(bulk_action)

        # todo, zamiast rescue lepiej byloby zrobic if, sprawdzajac czy istnieje ten templejt
        begin
          render :action => bulk_action
        rescue
          render :action => "bulk"
        end
      end

    end
  end
end
