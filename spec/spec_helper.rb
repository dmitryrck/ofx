require "ofx"

RSpec::Matchers.define :have_key do |key|
  match do |hash|
    hash.respond_to?(:keys) &&
    hash.keys.kind_of?(Array) &&
    hash.keys.include?(key)
  end
end

RSpec::Matchers.define :be_at_same_time_of do |expected|
  match do |actual|
    expected.strftime("%F %T") == actual.strftime("%F %T")
  end
end
