# Egg Timer

### Overview
I built this app as a part of The App Brewery's IOS bootcamp. It is an egg timer with three different settings for different egg hardness levels. Building the app involved learning a few new responsive UI lessons _(text autoscaling, making buttons appear like they are inside an image)_ as well a some neat tricks with dictionaries to store and retrieve data.

### Lessons learned
The timer code we used in this app was the first time I've worked with an Objective-C library. Swift made this fairly painless and I was able to get the base timer logic up and running on my own before checking in with the course content to make sure my answer was headed in the right direction.

One obstacle I overcame while designing the timer logic was making the progress bar react the way a user will assume it does. The issue with my initial logic was that the timer loop completes once before the callback function is called the first time. This caused an off-by-one error, which I resolved a few different ways before deciding to simply call function manually once before the loop started. I chose this option because adding one to the counter felt a little more confusing to reason about, and I wanted the logic flow to be easy to understand for future me _(and others!)_ when looking back and trying to figure out what I did here!
