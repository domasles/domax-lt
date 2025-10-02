---
date: 2025-09-29 10:02:00 +0300
title: PaperChat
subtitle: AI-Powered Minecraft Plugin
image: '/images/paperchat.png'
comments: true
---

PaperChat is a modern Minecraft server plugin that seamlessly integrates AI language models directly into the Minecraft experience. Built for PaperMC servers, it allows players to have natural conversations with AI assistants powered by Google Gemini, OpenAI, and Hack Club's AI services, all while maintaining complete privacy and control.

**Key Features:**

- **Multi-Provider AI Support**: Automatic registration system supporting Google Gemini, OpenAI, and Hack Club with easy extensibility
- **Persistent Conversation History**: Per-player chat sessions with configurable history limits for contextual conversations
- **Smart Error Handling**: User-friendly error messages with automatic response recovery
- **Privacy-First Design**: Your API keys, your infrastructure - player conversations never leave your server
- **Docker Ready**: Complete containerized deployment with Minecraft server bundled in
- **Modern Java Architecture**: Clean architecture principles with service provider interfaces

Following the "run it yourself" philosophy, PaperChat requires your own AI API credentials and local deployment. This approach ensures no rate limits, complete privacy, full control over AI behavior, and no dependencies on external services beyond the AI providers themselves.

The plugin features a sophisticated provider system with automatic registration, graceful fallback mechanisms, and extensible architecture for adding new AI providers. Configuration is flexible through both environment variables and YAML files, with comprehensive validation and security measures.

PaperChat demonstrates how to integrate modern AI capabilities into existing platforms while maintaining security, performance, and user privacy.

[Read more about PaperChat](/blog/paperchat)
