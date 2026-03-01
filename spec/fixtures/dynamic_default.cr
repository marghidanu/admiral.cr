require "../../src/admiral"

class DynamicDefaultCommand < Admiral::Command
  define_help description: "Test dynamic defaults"
  define_flag context : String,
    description: "The context",
    default: Dir.current,
    short: x

  def run
    puts flags.context
  end

  def exit(*args)
  end
end
