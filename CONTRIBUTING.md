# Contributing to Paloma Docs

This file is excluded from the public site build.

## Local Development

### Prerequisites

- Ruby (2.6+)
- Bundler

### Setup

```bash
# Install dependencies
bundle install
```

### Running Locally

```bash
# First time: build site with search index
./build.sh

# Start dev server with live reload
./serve.sh
```

Site at `http://localhost:4000`. The search index is preserved across Jekyll rebuilds.

If search stops working, run `./build.sh` again to regenerate the index.

### Building for Production

```bash
./build.sh
```

This runs Jekyll build + pagefind index. Output goes to `_site/`.

## Project Structure

```
├── _config.yml          # Jekyll configuration
├── _data/
│   └── navigation.yml   # Sidebar and nav structure
├── _includes/           # Reusable HTML partials
├── _layouts/            # Page templates
├── assets/
│   ├── css/             # Stylesheets
│   └── images/          # Images
├── guides/              # Guide pages
├── install/             # Platform-specific install docs
└── *.md                 # Root-level pages
```

## Adding Pages

1. Create a new `.md` file with front matter:
   ```yaml
   ---
   title: Your Page Title
   layout: default
   ---
   ```

2. Add to `_data/navigation.yml` to include in sidebar

## Excluded from Build

These files/folders are not rendered to the public site:
- `CONTRIBUTING.md` (this file)
- `dev/` folder
- `Gemfile` / `Gemfile.lock`
- `vendor/`
