# Contributor's Guide

If you want to take this site as a template and make it your own, here's how to get started.

> **Quick notes:**
> - This site is built with **Jekyll**, a static site generator. If you're not familiar with Jekyll, you might want to check out the [Jekyll documentation](https://jekyllrb.com/docs/) first (not required if the only modification aim is blogging).
> - This site is not built from ground-up. A template made by [CloudCannon](https://cloudcannon.com/) was used as a starting point. The original template can be found [here](https://github.com/CloudCannon/vonge-jekyll-bookshop-template).
> - This version of the template has been modified to suit my needs, be super clean, up-to-date and have everything (even pagination) available even if hosting locally.

## Content Management

The beauty of owning a platform is complete customization freedom:

- **Components**: Components in `component-library/components/`
- **Styling**: Global styles in `component-library/shared/styles/`
- **Layout**: Page templates in `site/_layouts/`
- **Data**: Site configuration in `site/_data/`

## Important File Architecture

```
site/
├── collections/
│   ├── _pages/          # Static pages (about, contact, etc.)
│   ├── _posts/          # Blog posts with automatic pagination
│   ├── _projects/       # Your portfolio pieces
│   └── _testimonials/   # Social proof (when you're ready)
├── _data/               # Site settings and navigation
├── _layouts/            # Page templates
└── images/              # All your visual assets
```

```
component-library/
├── components/          # Reusable UI pieces
│   ├── blog-card/       # Post previews
│   ├── hero/            # Homepage impact
│   ├── projects-list/   # Portfolio showcase
│   └── ...              # Everything modular
└── shared/              # Global styles and utilities
```

### Adding Blog Posts

Drop a new file in `site/collections/_posts/`:
```markdown
---
title: "Your Brilliant Thoughts"
date: 2026-09-30 10:00:00 +0300
image: '/images/your-image.jpg'
tags: [relevant, tags, here]
---

Write something meaningful...
```

### Showcasing Projects

Add to `site/collections/_projects/`:
```markdown
---
title: Amazing Project
subtitle: What it does
image: '/images/project-screenshot.jpg'
---

Tell the story of what you built and why it matters...
```

### Populating Featured Projects

You can populate the homepage's featured projects by editing `site/_config.yml`:
```yaml
featured_projects:
  - project-1
  - project-2
  - project-3
```

Note that the project names must match the titles of projects within their markdown files.

## Jekyll Setup

Key bits in `site/_config.yml`:
```yaml
# Pagination that actually works
pagination:
  enabled: true
  per_page: 6
  permalink: '/blog/page/:num/'
  title: ':title - Page :num'
  sort_field: 'date'
  sort_reverse: true

# Bookshop integration
bookshop_locations:
  - ../component-library

# Collections
collections:
  pages:
    output: true
    permalink: /:title/
  projects:
    output: true
    permalink: /projects/:slug
  testimonials:
    output: false
  posts:
    output: true
    permalink: /blog/:slug
```

## Deployment

### Docker Magic

The multi-stage build:
1. **Ruby environment** builds your Jekyll site
2. **nginx stage** serves it blazingly fast

All configured for production from day one.
To launch the site, run:

```bash
docker compose up -d
# append --build if you want to rebuild the image from source.
# By default, the downloaded image will contain DoMax.lt content.
```

The nginx configuration is already optimized for:
- Static file serving
- Proper caching headers
- Security headers
- GZIP compression

## Troubleshooting

**Build not working?**
```bash
# Nuclear option - clean rebuild
docker compose build --no-cache
```

**Pagination acting up?**
- Check that jekyll-paginate is within the Gemfile
- Verify pagination settings in `_config.yml`
- Make sure blog index pages are properly configured

**Want to understand what's happening?**
Look at the Dockerfile - it's made to be straightforward.

---

*The rest is in your own hands. Enjoy building your digital space!*
