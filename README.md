# Project Alpha Gamemode

A multiplayer game mode project developed for **San Andreas Multiplayer (SA-MP)**, featuring dynamic gameplay systems, Discord integration, anti-cheat functionality, and custom mapping.

## Features

- **Discord UCP Integration** — Create a User Control Panel (UCP) account through Discord.
- **Dynamic World Systems** — Dynamic Actors, Doors, Lockers, and ATMs.
- **Phone System** — Custom phone interface built with TextDraws.
- **Anti-Cheat System** — Anti-cheat functionality to help maintain fair gameplay.
- **Custom Mapping** — Exterior and interior mapping.
- **Speed Monitoring** — Speed camera and speed trap systems.
- **Vehicle Theft System** — Car stealing functionality.

## Tech Stack

- **Game Platform:** San Andreas Multiplayer (SA-MP)
- **Scripting Language:** Pawn
- **Server Environment:** SA-MP Server
- **Database:** Refer to the project's database configuration.

## Repository Structure

```text
project-alpha-gamemode/
├── .vscode/       # Editor configuration
├── database/      # Database-related files
├── filterscripts/ # Filterscripts
├── gamemodes/     # Main gamemode scripts
├── include/       # Pawn include files
├── logs/          # Server logs
├── npcmodes/      # NPC scripts
├── pawno/         # Pawn compiler and editor
├── plugins/       # Server plugins
├── scriptfiles/   # Runtime data and script files
├── LICENSE
├── README.md
└── server.cfg     # Server configuration
```

## Getting Started

### Requirements

Before setting up the project, make sure you have:

- A compatible SA-MP server package.
- Pawn compiler.
- Required server plugins and their dependencies.
- Database server and configuration, if required by the gamemode.

### Setup

1. Clone this repository:

   ```bash
   git clone https://github.com/Anjaya-PureFrame/project-alpha-gamemode.git
   ```

2. Open the project directory.

3. Review `server.cfg` and configure the server settings.

4. Make sure all required plugins and dependencies are installed.

5. Configure the database connection according to the project's source configuration.

6. Compile the gamemode if necessary.

7. Start the SA-MP server using the appropriate server executable for your operating system.

> **Note:** Additional configuration may be required depending on your server environment and installed dependencies.

## Credits

- **Dandy & Adit** — Original base script.
- **Anjayaa** — Updates and further development.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

**Project Alpha Gamemode**  
Developed and maintained by the project contributors.
