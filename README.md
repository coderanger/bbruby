# BBRuby Cookbook

[![Gem Version](https://img.shields.io/gem/v/bbruby.svg)](https://rubygems.org/gems/bbruby)
[![Cookbook Version](https://img.shields.io/cookbook/v/bbruby.svg)](https://supermarket.chef.io/cookbooks/bbruby)
[![Gemnasium](https://img.shields.io/gemnasium/poise/bbruby.svg)](https://gemnasium.com/poise/bbruby)
[![License](https://img.shields.io/badge/license-Apache_2-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0)

# *IF YOU DON'T WORK FOR BLOOMBERG, THIS WON'T WORK FOR YOU*

A BBRuby package provider for the
[poise-ruby cookbook](https://github.com/poise/poise-ruby).

## Provider

The `bbruby` provider to install Ruby from `bbruby` packages in Artifactory.

```ruby
ruby_runtime 'myapp' do
  provider :bbruby
  version '2.3'
end
```

### Options

* `version` – Override the Ruby version.

## Sponsors

Development sponsored by [Bloomberg](http://www.bloomberg.com/company/technology/).

## License

Copyright 2016, Noah Kantrowitz

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
