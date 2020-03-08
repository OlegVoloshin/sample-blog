require "spec_helper"

describe Contacts do
  it {should validate_presence_of :email}
end