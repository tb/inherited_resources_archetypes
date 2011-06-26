module InheritedResourcesArchetypes
  module Resolver
    class Engine < ::ActionView::FileSystemResolver

      def initialize(common_resource_views_path)
        @common_resource_views_path = common_resource_views_path
        super( File.join(File.dirname(__FILE__), '..', '..', 'app', 'views') )
      end

      def find_templates(name, prefix, partial, details)
        super(name, @common_resource_views_path, partial, details)
      end

    end    
  end
end