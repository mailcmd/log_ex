defmodule Log do
  require Logger

  def set_level(level) do
    Logger.configure(level: level)
  end

  def log(level, text) do
    Logger.log(level, text, (if Enum.member?([:error, :emergency], level), do: [ansi_color: :light_red], else: []))
  end
end
