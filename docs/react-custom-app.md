# React Custom App (Docs-Only Integration)

This template repo does **not** ship a React build system. Instead, it documents a convention for hosting a React build inside Core-CMS via a custom Django app.

The recommended developer experience matches `tup-cms-react` “widget mounts”: the React entrypoint looks for a DOM element by ID and **only mounts if it exists**. That keeps the Django/CMS side in control of where (and whether) the React UI appears.

## Concepts

- **Mount-by-ID (recommended)**: Your React entrypoint does something like `document.getElementById('cms-sysmon')` and renders only when found. This supports one widget or multiple widgets on a page.
- **Full-page app (also supported)**: Same idea, but you mount a single React root (e.g. `id="root"`) and render a router-driven SPA.
- **Asset include**: Django templates include a small snippet (often called `*-imports.html`) that loads the built JS/CSS from `/static/...`.

## File placement conventions

### React build output

Put your compiled assets under your project’s Django static tree so `collectstatic` picks them up. For example:

- `cms/src/taccsite_custom/<your_site>/static/<your_site>/react/<your_app>/assets/...`

Your actual structure depends on your React toolchain. The only requirement is that, after `collectstatic`, the assets are reachable under `/static/...`.

### Template snippet to load assets

Create a template include that contains the script tags for your build, for example:

- `cms/src/taccsite_custom/<your_site>/templates/react/<your_app>-imports.html`

This file is intentionally a *plain include* so you can swap it between dev/prod (or between different build outputs) without changing the page template.

## Example: “widget mount” (Sysmon-style)

### 1) Add a mount point in a Django template

In the template where you want the widget to appear, add a mount element with a stable ID:

```html
<section aria-label="System monitor">
  <div id="cms-sysmon"></div>
</section>
```

Your React entrypoint should check for `#cms-sysmon` and only render if present.

### 2) Include your React assets

If your templates use Sekizai (Core-CMS does), prefer adding scripts to the JS block rather than inline. A common pattern:

```django
{% load sekizai_tags %}

{% addtoblock "js" %}
  {% include "react/sysmon-imports.html" %}
{% endaddtoblock %}
```

The included `react/sysmon-imports.html` should contain `<script>` (and `<link>`, if needed) pointing at your built assets under `/static/...`.

## Example: “full-page app” (tup-ui-style)

### 1) Provide a single root mount

```html
<div id="root"></div>
```

### 2) Include the SPA assets

Include your `*-imports.html` snippet on that page. If the SPA needs runtime configuration, set it in a small `<script>` block in the page template (or via a context processor), then have your React app read it from `window`.

## Notes and gotchas

- **Multiple mounts**: One React entrypoint can mount multiple widgets by checking multiple IDs (e.g. `cms-sysmon`, `cms-software`), each guarded by `if (el) { ... }`.
- **Don’t assume the mount exists**: Keep the “guarded mount” behavior so CMS editors can place/remove components without breaking pages.
- **Static URLs**: Ensure the paths in your imports snippet match where `collectstatic` will serve the assets (usually `/static/...`).

