require_relative '../lib/environment'

grid = Grid.new(30, 35, 0.075)

grid.add_spawner(15, 0, 3)

grid.play
