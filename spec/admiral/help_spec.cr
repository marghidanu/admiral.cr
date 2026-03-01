require "spec"
require "../fixtures/*"

describe "help" do
  context "issue #26: dynamic default values in help" do
    it "should display the evaluated default value, not the code expression" do
      File.tempfile("test") do |io|
        DynamicDefaultCommand.run(["--help"], output: io)
        io.rewind
        help_text = io.gets_to_end
        help_text.should contain(Dir.current)
        help_text.should_not contain("Dir.current")
      end
    end
  end
end
