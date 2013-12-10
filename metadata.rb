name              "wav2rtp"
maintainer        "Mojo Lingo LLC"
maintainer_email  "ops@mojolingo.com"
license           "MIT"
description       "Installs WAV2RTP"
version           '1.0.0'

recipe            "wav2rtp", "Fetches, compiles, and installs WAV2RTP"

%w{ ubuntu debian }.each do |os|
  supports os
end
