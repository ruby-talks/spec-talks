module RSpec
  module Core
    class Runner

      # Register an at_exit hook that runs the suite.
      def self.autorun
        ::Talks.say 'Tests start'
        return if autorun_disabled? || installed_at_exit? || running_in_drb?
        at_exit { exit run(ARGV, $stderr, $stdout).to_i unless $! }
        @installed_at_exit = true
      end

    end
  end
end

module RSpec::Core
  class Reporter
    def report(expected_example_count, seed=nil)
      start(expected_example_count)
      begin
        yield self
      ensure
        finish(seed)
        if @failure_count.zero?
          ::Talks.success 'Tests passed'
        else
          ::Talks.error "Tests failed, there #{@failure_count} errors"
        end
      end
    end
  end
end
