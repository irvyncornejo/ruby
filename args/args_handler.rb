require "logger"
require 'json'

require_relative 'users/create_user'
require_relative 'utils/utils'

@log = Logger.new(STDOUT)
@log.debug("Start...")

def main
    args = get_params()
    {
        "create_users" => lambda  { create_users args[0] }
    }["#{args[1]}"].call
end

puts main()

#'ruby args_handler.rb '{"test":"r"}' --function create_users'