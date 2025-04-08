defmodule Log do
  require Logger

  def set_level(level) do
    Logger.configure(level: level)
  end

  def log(:error, text), do: Logger.log(:error, text, [ansi_color: :light_red])
  def log(:emergency, text), do: Logger.log(:emergency, text, [ansi_color: :light_red])
  def log(level, text), do: Logger.log(level, text)
end
