require 'spec_helper'

describe 'SIPp' do
  describe command('wav2rtp -v') do
    it { should return_stdout /0.9.3/ }
  end
end
