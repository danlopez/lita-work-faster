module Lita
  module Handlers
    class WorkFaster < Handler
      route %r{^hey$}i, :work_faster, command: true, help: { "hey" => "Responds appropriately to a conversation." }

      def work_faster(response)

        response.reply "@all, WORK FASTER"
      end



    end

    Lita.register_handler(WorkFaster)
  end
end
