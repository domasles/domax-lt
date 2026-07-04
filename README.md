![DoMax Logo](DoMaxLogo.png)

# DoMax.lt - Personal Portfolio & Digital Space

Welcome to my corner of the internet.

## Live Demo

Experience it yourself at [DoMax.lt](https://domax.lt)!

## The Philosophy Behind Me And My Nickname DoMax

In a world of constant platform changes and algorithm tweaks, I believe in digital independence. This project embodies:

- **Complete Ownership of the written stuff**
- **Easy to Deploy Technology** - Built with Jekyll
- **Performance First**
- **Professional Presentation**

The meaning of "DoMax" is simple: "Do" as in action, and "Max" as in maximum. I try to put my best effort into everything I do, and this site is a reflection of that philosophy.

I am all for the idea that source is open. Not only to read, but also edit. So, if you want to fork this and make it your own, go ahead!

## What Makes This Different

### Crafted for Real Use

- **Jekyll 4.3.3** with battle-tested reliability
- **Bookshop Components** for modular design that scales
- **True Jekyll Pagination** with clean `/blog/page/x` URLs
- **Responsive Everything** because the audience uses every device imaginable

### Built for Content Creation

- **Project Showcases** that tell the story
- **Blog Platform** with proper tagging and pagination
- **SEO Ready** because visibility matters

### Development Experience That Doesn't Suck

- **Component Architecture** that makes sense
- **Docker Everything** for consistency across environments
- **Clean Structure** you can understand and modify

## Getting Started

### Prerequisites

Just Docker. That's it. No Ruby installations, no version conflicts, no "works on my machine" problems.

### Launch Your Site

1. **Get the code**:
```bash
git clone https://github.com/domasles/domax-lt.git
cd domax-lt
```

2. **Run it**:
```bash
docker compose up --build
```

3. **Visit `http://localhost:80`** and see your site running.

That's it.

## How It's Organized

Everything has its place:

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

## Configuration That Makes Sense

### Jekyll Setup

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
    permalink: /project/:slug
  testimonials:
    output: false
  posts:
    output: true
    permalink: /blog/:slug
```

### Docker Magic

The multi-stage build:
1. **Ruby environment** builds your Jekyll site
2. **nginx stage** serves it blazingly fast

All configured for production from day one.

## Deployment Options

### Production Ready

```bash
# Build for production
docker compose up
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
- Check that jekyll-paginate is in your Gemfile
- Verify pagination settings in `_config.yml`
- Make sure your blog index page is properly configured

**Want to understand what's happening?**
Look at the Dockerfile - it's made to be straightforward.

## Technical Foundation

**Built With:**
- **Jekyll 4.3.3** - The static site generator that just works
- **Bookshop** - Component architecture for maintainable development  
- **SCSS** - Styling that scales with your ambitions
- **Docker** - Consistent environments everywhere
- **nginx** - Production-grade web serving

**Philosophy:** Use proven technologies, avoid complexity, own your platform.

## License

MIT License - Use it, modify it, make it yours. See [LICENSE](LICENSE) for the fine print.

---

*Built for anyone who believes in digital independence and owning their professional presence.*

*Open source, as intended.*
