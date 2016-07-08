#
# Install Rebar using the git repo.
#

bash 'install-rebar' do
  Chef::Log.info('Installing Rebar')

  code <<-EOH
    git clone git://github.com/rebar/rebar.git
    cd rebar
    ./bootstrap
    ln -s $PWD/rebar /usr/bin/rebar
  EOH
  action :nothing
  not_if "rebar --version"
  Chef::Log.info('Rebar successfully installed')
end
