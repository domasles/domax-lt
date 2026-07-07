---
title: "The journey of Radvilija"
date: 2026-07-07 10:01:00 +0300
image: '/images/posts/radvilija.png'
tags: [PHP, Wordpress, Website]
---

# All About My Relationship With Wordpress

In this post I'd love to share my experience with Wordpress, where I tried to adapt it, what I learned, what I liked and disliked about it, and what I think about it now.

The main story follows a project I did with my friends, called Radvilija. We tried to make a website for our school where students could exchange stuff they no longer needed, creating a sustainable and friendly relationship between students. The project was a success, but Wordpress made us work hard to tame it.

## Through Highs And Lows

My experience with Wordpress is on the rougher side. And it all started when me and my friends decided to make an e-commerce website for our school.

The idea was excellent, and well-executed, just poorly marketed. We wanted to make our school a place where sustainability was promoted. But it didn't align with what the major part of the community was hoping a school to be in the first place.

I'm not saying it wasn't worth the effort though.

## Wordpress Isn't For Everyone

Since its start back in 2003, Wordpress was created to act as a blogging platform. Everything about it speaks that way. It was designed to be simple, and it is simple. But when you want to make a website that is more than just a blog, Wordpress turns out to be a roadblock more than a lifebuoy.

When people started to make usual websites with Wordpress, handling commerce and more, the contributors of source also turned towards the same idea. Nothing about that speaks good to me, even if this opinion is a bit personal. Tweaking Wordpress is a nightmare due to outdated way Wordpress works. The freemium model of additional content also doesn't help.

Now, getting back to the context of Radvilija, we started with nothing but a Wordpress install on Hostinger and a free theme. I don't know if it's a common thing for the customization of a theme to be distributed across multiple panels, but if it isn't, we got extremely unlucky.

One of many goals we had in mind was using the site for student listings instead of payment processing. Every theme and plugin we found for listings was either paid, or relied heavily on single-person posting as opposed to a system where everyone could post.

Furthermore, to have an easier sign-in flow, we wanted to use Microsoft's SSO to utilize Microsoft accounts our school used for online work and restrict the site only to our school's community.

To enable all these features, many plugins were required, and when our team couldn't find those for free, we turned to modifying the site's internals.

## Inside Wordpress

Whether it's a surprise or not, Wordpress is written in PHP. And while I don't have a problem with PHP, the way of diagnosing exactly *what* is wrong with the code was a nightmare. Time constraints meant we were learning Wordpress on-the-go. This was one of my most impactful lessons in programming - rushing with a technology I have never used before is a **bad** idea. And it's likely that we didn't enable all the features Wordpress provides to make development easier.

The point I'm trying to make is that I don't see Wordpress as a balanced tool. Being advertised as an easy tool for everyone, anything beyond the *designed target user* things requires heavy in-code modification or paid extensions.

Thankfully, my coding skillset led me with great self-guidance on approaching problems. I even made my own plugins to tackle some user registration issues before I realized that I should've made plugins for all the other customizations.

## Did Me And My Team Succeed?

Yes, and to great extent. We managed to make a website that was functional and had everything we wanted. From a well-working listing system, to including profile customization and even a messaging system.

Our team even saw growth. We've had people who helped with legal protection and listing reviewing. The project was well received and backed by our school's administration. However, signaling poor user enrollment, it didn't reach the expected amount of users.

## Conclusion

Did we learn something? Yes. Working in a team and managing a website after hours was one of the best experiences that year. Wordpress is a great tool for blogging, but when it comes to making a website that is more than just a blog, it can be a nightmare.

Maybe we saw Wordpress as this ultimate tool and praised it beyond its capabilities before actually trying it. As much as this post is a hate letter to Wordpress, the lessons on modularized plugin and SSO workflow were priceless and drive me to this day. All thanks *to* Wordpress and Radvilija. I would not trade the time spent on it, but making something similar again, I would probably rely on a modern React + Python stack with ORM SQL databases.
