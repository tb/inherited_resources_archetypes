module Archetype
  module Helpers
    module PerPage

      def per_page
        params[:per_page] || 10
      end

    end
  end
end