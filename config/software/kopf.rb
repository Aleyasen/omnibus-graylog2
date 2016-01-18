name "kopf"
default_version "1.0"

dependency "elasticsearch"

source url: "https://github.com/lmenezes/elasticsearch-kopf/archive/1.0.zip",
       md5: "d5829ecaba16ead444fe3a233f58be42"

relative_path "elasticsearch-kopf-1.0"

build do
  mkdir  "#{install_dir}/elasticsearch/plugins/kopf"
  sync   "#{project_dir}/", "#{install_dir}/elasticsearch/plugins/kopf"
end
