module HashiCorp
  module VagrantVMwareDesktop
    module Action
      # This can be used with "Call" built-in to check if the machine
      # is running.
      class Running
        include Common

        def initialize(app, env)
          @app = app
        end

        def call(env)
          env[:result] = env[:machine].state.id == :running
          @app.call(env)
        end
      end
    end
  end
end
