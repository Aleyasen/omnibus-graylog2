name "graylog-web"
default_version project.build_version

dependency "server-jre"
dependency "runit"

source path: "/opt/repos/graylog2-web-interface/target/universal/graylog-web-interface-#{version}.tgz",
    md5: "fcc0141e54f426d7e4c7e3e96a0cd9e9"


relative_path "graylog-web-interface-#{version}"

build do
  mkdir "#{install_dir}/web"
  sync  "#{project_dir}/", "#{install_dir}/web"
end
