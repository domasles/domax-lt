---
date: 2026-07-09 10:00:00 +0300
title: Detention Loop
subtitle: A game for Hack Club's Sprig
image: '/images/posts/detention-loop.png'
---

Have you ever wondered how tiny a game can be these days?

A raw, uncompiled JavaScript game, with stunning 2D graphics (for 128x160 resolution) and a full game loop fits into a single 94KB file (without minification). And the device that allowed me to do this was [Hack Club's Sprig](https://sprig.hackclub.com), a platform where anyone can create and share games with people, and by submitting have a chance on receiving a console to run the games on, completely for free!

Pushing the extreme limits of Sprig's engine to the point where original hardware can still run, Detention loop, at its heart, is a game about escaping a liminal school corridor. Each time you try escaping, you'll find yourself in the same corridor with something different here and there.

Core gameplay was heavily built around the idea of *Exit 8* - you see an anomaly - you step back. Everything seems normal - you continue.

Since Sprig can't load full-sized images, has a limited color palette and all of the game (including visual assets) must fit into a single file, I had to figure ways to make the game visually appealing and playable, such as:
- **Image transformation**: I had to transform images into a format that Sprig could understand, and render tiles at runtime (because Sprig talks strictly in 16x16 tiles).
- **Transition system**: A transition system was required to make the game feel more alive.
- **Scoring system**: I had to make a dynamic visual indication to show the player's score.

This game let me think algorithmically and bump my skills of working with careful optimization requiring environments. And I think that the end result is surprising taking into consideration the limitations of Sprig.

You can try out Detention Loop [here](https://detention-loop.domax.lt)!
