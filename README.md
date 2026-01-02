# JalAI

JalAI is an Artificial Intelligence (AI) for Open Transport Tycoon Deluxe (OpenTTD), written in the Squirrel programming language. It is based on the legacy AdmiralAI.

## Description

JalAI manages a transportation company by connecting towns and industries using multiple modes of transport. It is designed to be a comprehensive AI that can handle:
- **Road Transport**: Managing buses for passengers and trucks for cargo.
- **Air Transport**: Building airports and managing aircraft for long-distance passenger travel.
- **Rail Transport**: Constructing rail networks and managing trains.

The AI uses a town management system to oversee transport needs for individual towns and advisors to propose and manage inter-town connections.

## Features

- **Town Management**: Analyzes towns to determine transport needs, builds local stations, and manages growth.
- **Multi-modal Transport**:
  - **Buses/Trucks**: Builds road depots, bus stops, and truck stations; finds routes for road vehicles.
  - **Aircraft**: Builds airports (Small to Intercontinental) based on town size and needs.
  - **Trains**: Plans and builds rail lines.
- **Advisors**: Uses specific advisors (`AircraftAdvisor`, `RoadConnectionAdvisor`, `TrainConnectionAdvisor`, etc.) to optimize different parts of the network.
- **Pathfinding**: Implements custom pathfinding algorithms (including A*) for route planning.

## Installation

1. Download the JalAI source code or a compiled tar bundle.
2. Place the `JalAI` folder (or `.tar` file) into your OpenTTD `ai/` directory.
   - On Linux: `~/.openttd/ai/`
   - On Windows: `Documents\OpenTTD\ai\`
   - On macOS: `~/Documents/OpenTTD/ai/`
3. Start OpenTTD.
4. Go to **AI/Game Script Settings**.
5. Select **JalAI** from the list of available AIs.

## Requirements

- OpenTTD (compatible with the API version used by the AI).
- No external libraries are required; the AI is self-contained.

## License

This software is released into the public domain under the [Unlicense](http://unlicense.org).

> This is free and unencumbered software released into the public domain.
> Anyone is free to copy, modify, publish, use, compile, sell, or distribute this software, either in source code form or as a compiled binary, for any purpose, commercial or non-commercial, and by any means.

See the `LICENSE` file for full details.

## Credits

- **Author**: Jalal Ahmad
- **Based on**: AdmiralAI
