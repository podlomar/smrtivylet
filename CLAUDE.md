# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
npm run dev       # Start dev server (localhost:4321)
npm run build     # Build to dist/
npm run preview   # Preview the build locally
./deploy.sh       # Build and deploy to production via scp
```

## Architecture

Single-page Astro site (static output). The one page is `src/pages/index.astro`.

- **`src/layouts/Layout.astro`** — base HTML shell: `<head>`, Google Fonts (Montserrat), favicons, footer. Accepts `title` and `description` props.
- **`src/components/Stop.astro`** — reusable checkpoint card component. Accepts `number`, `name`, `km`, `photo`, `photoAlt`, `mapUrl`, and optional `extraLink`. Description text goes in the default `<slot>`.
- **`src/styles/global.css`** — all styles, imported via `<style is:global>` in the layout.
- **`public/img/`** — all images served as static assets.

The site is in Czech. Build output goes to `dist/`, which is what `deploy.sh` uploads to the server.
