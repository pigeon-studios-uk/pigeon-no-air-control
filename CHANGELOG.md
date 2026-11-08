# Changelog

All notable changes to Pigeon No Air Control are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html):

- **Major** versions can need changes to your configuration or other resources. Read the **Upgrade notes**.
- **Minor** versions add features without breaking existing setups.
- **Patch** versions fix bugs only.

## [Unreleased]

First release.

### Highlights

- No spinning or flipping cars in mid-air
- No rocking a car on its roof back over
- Normal steering on the ground
- Motorbikes, aircraft and boats left alone

### Added

- Steering and lean controls switched off while the driver's vehicle is in the air.
- The same while it's upside down, with `Config.BlockWhenUpsideDown`.
- Motorbikes left alone unless `Config.Motorcycles` is on.
- Vehicle classes and vehicles to leave alone, in `Config.SkipClasses` and `Config.SkipVehicles`.
- Update checker from the Pigeon Studios version registry.

[Unreleased]: https://github.com/pigeon-studios-uk/pigeon-no-air-control/commits/main
