---
title: "The rise and fall of EchoTuner"
date: 2026-07-06 10:01:00 +0300
image: '/images/posts/echotuner-deprecation.png'
tags: [AI, Music, Docker, Python, Website]
---

# What Was EchoTuner?

EchoTuner was a project I started in 2025. It was an AI-powered playlist generator that you could run locally, giving you complete control over your music data and playlists. The idea was to create a tool that could give you a playlist only **for you**.

You might have already read about it's launch [here](/blog/echotuner) or [there](/projects/echotuner). It was a project that I was very proud of, and I put a lot of work into it.

While a master server has been launched for quite some time now, with an app reachable at [echotuner.domax.lt](https://echotuner.domax.lt), the project has been officially deprecated.

## Will It Still Work?

Yes, I'll try everything to keep master server running for as long as possible. However, the project is no longer maintained, and I will not be adding any new features or fixing any bugs. The source code will not be taken down and will remain available on [GitHub](https://github.com/domasles/echotuner).

## Brief History of EchoTuner

It was made because of lack of an easy personalized playlist experience. Something that you could truly own had to be made by hand. My goal was to simplify the process. And while everything was working great, the app had a nice user experience, built with cross-platform Flutter framework, and a backend that was built with Python, Spotify cut down API access for non-business partners.

I went by the philosophy of "run on your own", and I even included separate backend working "modes".

Main limitation was no true Spotify account connection. This required everything to be tied to a single account. I fixed it by making an official EchoTuner account for playlist storage that the master server could use, but there were more roadblocks.

Recently, Spotify restricted API access only to premium users. This not only made development difficult, but made my nerves boil.

## The Bigger Picture

It was not only Spotify's fault, but I'll cover Spotify too in just a bit. One of the main reasons I couldn't push EchoTuner through, even when I talked about it publicly, was that you can't take something personal and make it AI - people like having things they made themselves. The personalization system was perfectly fine, but it's still not the same as having a playlist that you made top to bottom.

Using AI just for the sake of using AI was popular, but wasn't the right approach for playlist generation.

Second thing denying the popularity of EchoTuner was that users reported generation wasn't always reliable. Switching to a *better* AI model got the job done, but first impression is always the most important. And when you have a bad first impression, it's hard to get people back.

I had a lot of trouble hosting everything (database was getting bloated) and ensuring a seamless user experience too. To add the correct songs to Spotify, I had to check them using Spotify's Search API. Back then I didn't know much about asynchronous programming up until late in development, and making synchronous requests to Spotify's API was a nightmare. Even bigger timing hog was the AI model itself. It took a lot of time for a relatively small playlist. Even I got frustrated, because 30 songs seem enough, but they're not.

Last, and the most important problem was 3rd party API vendors. I used Google for user authentication/AI, and Spotify for everything else. Google requires constant maitenance. They take down AI models fairly often, and when they do, you have to switch to a new one. Spotify is a different nightmare. They don't want you to use their API for anything that isn't directly related to their own app.

Around the same time they also partnered with OpenAI to make their own AI playlist generator. And that was the end of EchoTuner.

## Conclusion

The idea was very thought out, but much like with [CAP](/blog/cap), timing was awful. I had a lot of fun making it, and I learned a lot about AI, APIs, and user experience. I loved Flutter, but I don't anymore. I learned a lot about asynchronous programming, submitted EchoTuner to Hack Club's Summer of Making 2025, and got great feedback from a couple of people.

Everything's a learning experience. Was it wasteful? Not at all. But I'm still standing by the hate towards corporate decisions.

I'm yet to make EchoTuner's Spotify account premium for the sake of preservation while the API still lasts.
