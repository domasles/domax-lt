# ![DoMax Logo](DoMaxLogo.png) DoMax.lt - Personal Portfolio & Digital Space

Welcome to my corner of the internet.

This isn't just a website - it's a template for building professional portfolio sites that you control completely.

Built for developers who believe in owning their digital presence rather than renting it from platforms that come and go.

## Live Demo

Experience it yourself at [domax.lt](https://domax.lt) - see how ideas translate into reality.

## The Philosophy Behind DoMax.lt

In a world of constant platform changes and algorithm tweaks, I believe in digital independence. This project embodies:

- **Complete Ownership** - Your content, your design, your rules. No third-party platforms controlling your narrative.
- **Sustainable Technology** - Built with Jekyll's proven architecture that's been reliably serving sites for over a decade.
- **Performance First** - Static generation means lightning-fast loading times and rock-solid reliability.
- **Professional Presentation** - Because your work deserves a platform that matches its quality.

This isn't just my portfolio - it's a philosophy made code. Take it, make it yours, and own your digital presence.

## What Makes This Different

### Crafted for Real Use
- **Jekyll 4.3.3** with battle-tested reliability
- **Bookshop Components** for modular design that scales
- **True Jekyll Pagination** with clean `/blog/page/x` URLs
- **Responsive Everything** because your audience uses every device imaginable

### Built for Content Creators
- **Project Showcases** that tell the story behind your work
- **Blog Platform** with proper tagging and pagination
- **Portfolio Management** designed for professionals
- **SEO Ready** because visibility matters

### Developer Experience That Doesn't Suck
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

That's it. Seriously.

### For Local Development

If you prefer working directly with Ruby:
```bash
# Install dependencies
bundle install --gemfile=site/Gemfile

# Serve locally
cd site && bundle exec jekyll serve
```

## Making It Yours

### Content Management

#### Adding Blog Posts
Drop a new file in `site/collections/_posts/`:
```markdown
---
title: "Your Brilliant Thoughts"
date: 2025-09-30 10:00:00 +0300
image: '/images/your-image.jpg'
tags: [relevant, tags, here]
---

Write something meaningful...
```

#### Showcasing Projects
Add to `site/collections/_projects/`:
```markdown
---
title: Amazing Project
subtitle: What it does
image: '/images/project-screenshot.jpg'
---

Tell the story of what you built and why it matters...
```

### Customization

The beauty of owning your platform is complete customization freedom:

- **Components**: Modify any component in `component-library/components/`
- **Styling**: Global styles in `component-library/shared/styles/`
- **Layout**: Page templates in `site/_layouts/`
- **Data**: Site configuration in `site/_data/`

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
Look at the Dockerfile - it's commented and straightforward.

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

*Built for developers who believe in digital independence and owning their professional presence.*

**Ready to take control of your digital narrative? Clone it, customize it, and make it uniquely yours.**
