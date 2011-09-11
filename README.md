## DESCRIPTION:

Saves Scalr data to node attributes.

## REQUIREMENTS:

This probably won't work unless your on a Scalr environment ;)

Oh, and it assumes Scalarizr.

## ATTRIBUTES:

- node['scalr']['configini'] The path to Scalr's config.ini.
- node['scalr']['snmp']['community_name'] The SNMP community name assigned by Scalr.
- node['scalr']['snmp']['security_name'] The SNMP security name assigned by Scalr.
- node['scalr']['general']['server_id'] Scalr's internal server id.
- node['scalr']['general']['role_name'] The Scalr role name.
- node['scalr']['general']['queryenv_url'] Internal Scalr url.

## USAGE:

Apply recipe[scalr] to nodes as needed.


## LICENSE:

Copyright 2011, Ticean Bennett

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
