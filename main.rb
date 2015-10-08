require 'telegrammer'
token = '[YOUR TELEGRAM TOKEN]'
bot = Telegrammer::Bot.new(token)

bot.get_updates do |message|
  puts "In chat #{message.chat.id}, @#{message.from.username} said: #{message.text}"
  bot.send_message(chat_id: message.chat.id, text: "You said: #{message.text}")

  # Here you can also process message text to detect user commands
  # To learn more about commands, see https://core.telegram.org/bots#commands
end
