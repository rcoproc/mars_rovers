alias MarsRovers.Rover.Position

defmodule MarsRovers.Rover do
  defstruct position: Position,
            commands_remaining: [],
            commands_executed: [],
            error: nil

  def new(%Position{} = position, commands \\ []) do
    %__MODULE__{position: position, commands_remaining: commands}
  end

  def new(x, y, direction, commands \\ []) do
    new(%Position{x: x, y: y, direction: direction}, commands)
  end

  defimpl String.Chars, for: __MODULE__ do
    import IO.ANSI, only: [green: 0, yellow: 0, red: 0, default_color: 0]

    def to_string(%{error: nil} = rover),
      do: "#{rover.position}"
    def to_string(%{error: error} = rover),
      do: "#{rover.position} (error: #{error}, commands: #{commands(rover)})"

    defp commands(rover) do
      [failed | remaining] = rover.commands_remaining
      [ green,  rover.commands_executed,
        red,    failed,
        yellow, remaining,
        default_color ]
    end
  end
end
