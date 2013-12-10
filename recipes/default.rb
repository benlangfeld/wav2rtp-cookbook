node['wav2rtp']['build_dependencies'].each { |p| package p }

version = node['wav2rtp']['version']

directory Chef::Config[:file_cache_path]

remote_file "#{Chef::Config[:file_cache_path]}/wav2rtp-#{version}.tar.gz" do
  source "http://downloads.sourceforge.net/project/wav2rtp/wav2rtp/#{version}/wav2rtp-#{version}.tar.gz"
  checksum node['wav2rtp']['checksum']
  action :create_if_missing
end

script "compile wav2rtp" do
  interpreter "/bin/bash"
  cwd Chef::Config[:file_cache_path]
  code <<-EOF
  tar -xf wav2rtp-#{version}.tar.gz
  cd wav2rtp-#{version}
  ./configure && make
  make install
EOF
  not_if { `test -f wav2rtp && wav2rtp -v`.chomp == version }
end
