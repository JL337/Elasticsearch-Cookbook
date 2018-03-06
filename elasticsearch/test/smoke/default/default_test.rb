# # encoding: utf-8

# Inspec test for recipe elasticsearch::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

describe package('elasticsearch') do 
    it {should be_installed}
    its ('version') {should match /6\../}
end

describe service('elasticsearch') do 
	it {should be_running}
	it {should be_enabled}
end

# This is an example test, replace it with your own test.
describe port(80) do
  it { should_not be_listening }
end
