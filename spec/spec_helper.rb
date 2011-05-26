$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'
require 'arel-pretty-sql'
require 'ruby-debug'
require 'arel'
require 'fake_record.rb'
# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

Arel::Table.engine = Arel::Sql::Engine.new(FakeRecord::Base.new)

class Object
  def must_be_like other
    gsub(/\s+/, ' ').strip.should == other.gsub(/\s+/, ' ').strip
  end
end

RSpec.configure do |config|
  
end
