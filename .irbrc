require 'rubygems'
require 'irb/completion'
require 'irb/ext/save-history'

begin
  require "awesome_print"
  AwesomePrint.pry!
rescue LoadError => err
  warn "Couldn't load awesome_print: #{err}"
end

IRB.conf[:EVAL_HISTORY] = 10000
IRB.conf[:SAVE_HISTORY] = 10000
IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"


def cls
  system('cls')
end
puts ("IRB Configuration is Loaded!")

begin
  require "pry"
  Pry.start
  exit
rescue LoadError => err
  warn "=> Unable to load pry"
end
