# Home Assistant Add-on: Ad Begone

## How to use

1. Add this repository to your Home Assistant add-on store.
2. Install the Ad Begone add-on.
3. Configure your OpenAI API key in the add-on settings.
4. Set the podcast directory to where your podcast MP3 files are stored.
5. Start the add-on.

Ad Begone will monitor the podcast directory and automatically detect and remove
ads from any new podcast MP3 files that appear.

## Configuration

### `podcast_directory`

The directory containing podcast MP3 files. This should be a path under
`/media` or `/share`, both of which are mapped into the add-on.

**Default:** `/media/podcasts`

### `openai_api_key`

Your OpenAI API key. Required for the ad detection functionality.

### `openai_model`

The OpenAI model to use for ad detection.

**Default:** `gpt-5-mini-2025-08-07`
