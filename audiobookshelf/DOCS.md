# Home Assistant Add-on: Audiobookshelf

## How to use

1. Add this repository to your Home Assistant add-on store.
2. Install the Audiobookshelf add-on.
3. Start the add-on.
4. Open the web UI to set up your Audiobookshelf instance.

## Storage

Audiobookshelf stores its database and settings in the add-on's persistent data
directory. Metadata (cover images, cache) is also stored there.

Media files should be placed in your Home Assistant `/media` or `/share`
directories, both of which are mapped into the add-on.

## Ports

The web interface is available on port **13378** by default.
