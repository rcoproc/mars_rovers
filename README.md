# MarsRovers(Explorando Marte)

**TODO: Test by Ricardo Oliveira MarsRovers**

## Installation

See below the generation of the executable in Elixir.

```
mix deps.get
```

```
# Test Input:
5 5
1 2 N
LMLMLMLMM
3 3 E
MMRMMRMRRM
```

### OUTPUT
The output for each rover should be its final co-ordinates and
heading.
```
# Expected Output:
1 3 N
5 1 E
```

## Running tests

```
mix test
```

## Building and running the CLI
```
mix escript.build # Generante Elixir Executable

./mars_rovers test/support/input.txt

./mars_rovers -s -p -w 5 -h 5 -r 3

```

