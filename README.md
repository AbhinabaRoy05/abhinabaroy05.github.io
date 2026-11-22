# Abhinaba Roy — Portfolio

Static site: `index.html` + `css/` + `js/`. Hosted on GitHub Pages.

## Publish changes

Edit files, then double-click **`publish.bat`** (or run `git add -A && git commit -m "Update" && git push`).
GitHub Pages rebuilds automatically; the live link updates in about a minute.

## Two versions

- `index.html` is the full portfolio, with contact details: `https://abhinabaroy05.github.io/`
- `showcase.html` is the same site **without** contact details: `https://abhinabaroy05.github.io/showcase`

`showcase.html` is generated: `build-showcase.ps1` copies `index.html` and drops everything between
`<!-- contact:start -->` and `<!-- contact:end -->`. `publish.bat` runs it for you, so only ever edit `index.html`.
Your email lives only inside that contact block in `index.html`.

## Edit everything in `js/data.js`

- `portrait` — e.g. `"assets/img/portrait.jpg"` (4:5 works best).
- `tools[].icon` — optional path to an icon in `assets/icons/` (white logo on transparent, ~120×120 `.webp`); leave empty to show the letter mark.
- `categories[].items[]`
  - `video` — YouTube link (watch, youtu.be, shorts), Vimeo link, or a local `.mp4`.
  - `thumb` — optional image; YouTube links get their thumbnail automatically.
  - `preview` — optional muted `.mp4` that plays on hover (Motion Graphics).
  - `title`, `description`, `meta`.

`IMAGES/` holds the original logo files the toolkit icons were made from.

The old links (`.../portfolio/` and `.../portfolio/showcase`) still work: the `portfolio/` folder redirects them to the new addresses.
