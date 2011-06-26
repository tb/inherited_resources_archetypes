module Archetype
  module Helpers
    module Tabs

      def self.included(base)
        base.class_eval do
          before_filter :set_tab_to_controller_name
        end
      end

      def set_tab_to_controller_name
        set_tab controller_name
        set_tab controller_name, :topmenu
      end

    end
  end
end