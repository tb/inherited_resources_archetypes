# Provide a simple gemspec so you can easily use your
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "inherited_resources_archetypes"
  s.summary = "Insert InheritedResourcesArchetypes summary."
  s.description = "Insert InheritedResourcesArchetypes description."
  s.files = Dir["{app,lib,config,db}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.version = "0.1.0"

  s.add_dependency('archetype')
end
