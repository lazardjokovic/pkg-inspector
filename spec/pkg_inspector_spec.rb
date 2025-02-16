# spec/pkg_inspector_spec.rb
require "spec_helper"

RSpec.describe PkgInspector do
  it "has a version number" do
    expect(PkgInspector::VERSION).not_to be nil
  end
end

