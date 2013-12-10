# wav2rtp cookbook

This Chef cookbook installs [wav2rtp](http://wav2rtp.sourceforge.net/).

# Requirements

Tested on Ubuntu 12.04.

# Usage

Add `recipe[wav2rtp]` to your node's run list

# Attributes

* `node['wav2rtp']['version']` - the version of wav2rtp to install (default `0.9.3`)
* `node['wav2rtp']['checksum']` - the checksum of the wav2rtp release (default `fbc7a41c8e68bc5eb9919e6a7f08d6d3da08c17315fe346b9f93e233baa94348`)
* `node['wav2rtp']['build_dependencies']` - the OS packages to install as dependencies for building wav2rtp (default `%w{libsndfile1-dev libgsm1-dev libspeex-dev libpcap-dev}`)

# Recipes

* `wav2rtp` - Fetches, compiles, and installs WAV2RTP

# Author

Author:: Ben Langfeld (<ben@langfeld.me>)
