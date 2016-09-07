require 'discordrb'
require 'configatron'
require_relative 'config'
require_relative 'lib/picture_commands'
require_relative 'lib/raid_commands'

bot = Discordrb::Commands::CommandBot.new token: configatron.token, application_id: configatron.appid, prefix: '!'
bot.include! PictureCommands
bot.include! RaidCommands

bot.command(:idolsheet, chain_usable: false) do |event|
  event.respond configatron.links.spreadsheet
end

bot.run