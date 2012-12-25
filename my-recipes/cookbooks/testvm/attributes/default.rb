set['rvm']['user_installs'] = [
  { 'user'            => 'vagrant',
    'default_ruby'    => 'ruby-1.9.3-p327',
    'global_gems'     => [
      { 'name'    => 'bundler',
      },
    ]
  },
]

set['rvm']['rubies'] = [ "ruby-1.9.3-p327" ]
set['rvm']['default_ruby'] = "ruby-1.9.3-p327"

set['rvm']['gems'] = {
  "ruby-1.9.3-p327" => [
    { 'name'    => 'chef' }
  ]
}