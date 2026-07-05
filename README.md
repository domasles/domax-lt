![DoMax Logo](DoMaxLogo.png)

# DoMax.lt - Personal Portfolio & Digital Space

Welcome to my corner of the internet.

## Live Demo

Experience it yourself at [DoMax.lt](https://domax.lt)!

## The Philosophy Behind Me And My Nickname *DoMax*

In a world of constant right management, I believe in digital independence. This project embodies:

- **Complete Ownership of the written stuff**
- **Easy to Deploy Technology with Jekyll**
- **Performance First**
- **Professional Presentation**

The meaning of ***DoMax*** is simple: ***Do*** as in action, and ***Max*** as in maximum. I try to put my best effort into everything I do, and this site is a reflection of that philosophy.

I am all for the idea that source is open. Not only to read, but also edit. So, if you want to fork this and make it your own, go ahead!

## What Makes This Different

### Crafted for Real Use

- **Jekyll** with battle-tested reliability
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

## Local Launching

### Prerequisites

Just Docker. That's it. No Ruby installations, no version conflicts, no "works on my machine" problems.

### How To Launch The Site

1. **Get the code**:
```bash
git clone https://github.com/domasles/domax-lt.git
cd domax-lt
```

2. **Run through Docker**:
```bash
docker compose up --build
```

3. **Visit `http://localhost:80`** and see it running.

> NOTE: if you want to learn more about customizing, read [CONTRIBUTING.md](CONTRIBUTING.md) for a detailed guide.

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

## Technical Foundation

**Built With:**
- **Jekyll 4.4.1** - The static site generator that just works
- **Bookshop** - Component architecture for maintainable development  
- **SCSS** - Styling that scales with ambitions
- **Docker** - Consistent environments everywhere
- **nginx** - Production-grade web serving

**Philosophy:** Use proven technologies and avoid complexity.

## License

MIT License - Use it, modify it, make it yours. See [LICENSE](LICENSE) for the fine print.

---

*Built for anyone who believes in digital independence and owning their professional presence.*

*Open source, as intended.*
