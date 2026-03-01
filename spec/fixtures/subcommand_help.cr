require "../../src/admiral"

class ParentWithFlagCommand < Admiral::Command
  class ChildCmd < Admiral::Command
    define_help description: "Execute a subcommand."
    define_argument childarg : String, description: "Arg for child"

    def run
      puts "in ChildCmd"
    end

    def exit(*args)
    end
  end

  register_sub_command child : ChildCmd, description: "Child Command"
  define_flag parentflag : Bool, description: "Parent flag", default: false, short: p
  define_help description: "Test subcommands help with global flag"

  def run
    puts help
  end

  def exit(*args)
  end
end
