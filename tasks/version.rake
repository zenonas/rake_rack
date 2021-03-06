desc "Display the latest version (from history.rdoc)"
task :"rake_rack:version" do
  puts "Latest version is #{RakeRack::Version.latest_version}"
end

namespace :rake_rack do
  namespace :version do
    desc "Increment the major version in history.rdoc (eg 1.2.3 => 2.0.0)"
    task :major do
      new_version = RakeRack::Version.latest_version
      new_version[0] += 1
      new_version[1,2] = 0, 0
      RakeRack::Version.update_to new_version
    end

    desc "Increment the minor version in history.rdoc (eg 1.2.3 => 1.3.0)"
    task :minor do
      new_version = RakeRack::Version.latest_version
      new_version[1] += 1
      new_version[2] = 0
      RakeRack::Version.update_to new_version
    end

    desc "Increment the patch version in history.rdoc (eg 1.2.3 => 1.2.4)"
    task :patch do
      new_version = RakeRack::Version.latest_version
      new_version[2] += 1
      RakeRack::Version.update_to new_version
    end
  end
end
