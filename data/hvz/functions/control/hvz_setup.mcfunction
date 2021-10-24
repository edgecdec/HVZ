# Remove old scoreboard stats objectives
scoreboard objectives remove PlayersKilled
scoreboard objectives remove MZombiesKilled
scoreboard objectives remove TotalKills
scoreboard objectives remove PKilledAsZombie
scoreboard objectives remove PKilledAsHuman

# Add scoreboard objectives
scoreboard objectives add HVZLivesLeft dummy "Lives Left"
scoreboard objectives add HumanDeaths deathCount "Human Deaths"

# Create team for all players
team add HVZPlaying "HVZ All"

# Create human team
team add HVZHuman "Human"
team modify HVZHuman color yellow
team modify HVZHuman friendlyFire false

# Create zombie team
team add HVZZombie "Zombie"
team modify HVZZombie color dark_green
team modify HVZZombie friendlyFire false











