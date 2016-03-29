#
# Copyright 2016, Noah Kantrowitz
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'poise_ruby/ruby_providers/system'


module BBRuby
  class Provider < PoiseRuby::RubyProviders::System
    provides(:bbruby)
    packages('bbruby', {
      rhel: {default: %w{bbruby23}},
      centos: {default: %w{bbruby23}},
    })

    def ruby_binary
      ::File.join('', 'opt', system_package_name, 'bin', 'ruby')
    end

    private

    # Replace all package names.
    def system_package_candidates(version)
      super.map {|name| name.gsub(/^ruby/, 'bbruby') }
    end

  end
end
