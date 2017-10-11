require 'spec_helper'
describe 'ftpcustom' do

  context 'with defaults for all parameters' do
    it { should contain_class('ftpcustom') }
  end
end
