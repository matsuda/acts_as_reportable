Gem::Specification.new do |s|
  s.name = %q{acts_as_reportable}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kosuke Matsuda"]
  s.date = %q{2009-05-25}
  s.description = %q{Rails plugin that add reports integrated with ActiveRecord's model.}
  s.email = %q{kosukematsuda+github@gmail.com}
  s.extra_rdoc_files = ["README", "CHANGELOG"]
  # s.files = ["README", "CHANGELOG", "Rakefile", "test/acts_as_reportable_test.rb", "lib/acts_as_reportable.rb", "lib/report.rb"]
  s.files = ["README", "CHANGELOG", "Rakefile", "MIT-LICENSE", "init.rb", "uninstall.rb", "install.rb", "lib", "lib/acts_as_reportable.rb", "lib/report.rb", "generators", "generators/acts_as_reportable_migration", "generators/acts_as_reportable_migration/acts_as_reportable_migration_generator.rb", "generators/acts_as_reportable_migration/templates", "generators/acts_as_reportable_migration/templates/migration.rb", "tasks", "tasks/acts_as_reportable_tasks.rake", "test", "test/acts_as_reportable_test.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/mat5uda/acts_as_reportable/}
  s.rdoc_options = ["--title", "acts_as_reportable documentation", "--charset", "utf-8", "--opname", "index.html", "--line-numbers", "--main", "README", "--inline-source", "--exclude", "^(examples|extras)/"]
  s.require_paths = ["lib"]
  # s.rubyforge_project = %q{acts_as_reportable}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Rails plugin that add reports integrated with ActiveRecord's model.}
  s.test_files = ["test/acts_as_reportable_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
    else
    end
  else
  end
end
