module Lita
  module Handlers
    class WorkFaster < Handler
      route %r{^hey$}i, :work_faster, command: true, help: { "hey" => "Responds appropriately to a conversation." }

      route %r{^order$}i, :order, command: true, help: { "order" => "Randomly generates a meeting order for a morning standup"}

      def self.default_config(config)
        config.users = ["replace", "your", "users"]
      end

      def work_faster(response)

        response.reply "@all, WORK FASTER"
      end

      def order(response)
        response.reply config.users.shuffle
      end



    end

    Lita.register_handler(WorkFaster)
  end
end
