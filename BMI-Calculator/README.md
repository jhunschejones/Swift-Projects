# BMI Calculator

## Overview
I built this app while taking The App Brewery's IOS bootcamp in 2020. It allows users to calculate a BMI score based on height and weight input.

This is the first multi-screen app I've built, and I found working with transitions was really interesting coming from a background in web development. Since Apple already did the hard work of designing and implementing all the neat animations and hooks required to seamlessly flow from one view to another, my app feels like an iPhone app right out of the gate!

## Additions

### Layout and UI
There were two versions of the starting project available for this app, and to challenge myself to continue to grow my storyboard layout skills, I chose the one that did not have an autolayout completed yet. I started by implementing the layout as the app appears in the course, then progressed to tweaking it based on how it felt.

First, I made sure there was enough space between the bottom slider and the "calculate" button so that users won't accidentally move the slider again after setting their intended value. Then I adjusted the height slider to increment in quarter-inch steps, since that is usually how people talk about their heights in America. Finally, I adjusted the title text color so that it is now easier to read on different screen sizes, no matter on how it falls against the background. On the second screen I took the same approach, choosing colors and font sizes that would be readable on a variety of screen sizes.

### Code
This app is written following the MVC design pattern. As we adjusted our implementation to provide different styling and content on the results view depending on the value calculated, I found a couple different ways to achieve this result that felt more intuitive to me. First off, I decided to calculate and return the BMI when the calculate button is pressed, rather than storing it as a value in place. As a result of our default starting values, this approach means the BMI can never be null.

The other improvement I made was moving the logic to decide on the color and advice into the BMI model. I made a static method that takes a bmi value and returns a full BMI struct with the color and advice set appropriately. This logic felt too specialized to just live in the Calculator model, and I like to separates elements like this when it's low cost and makes the code easier to reason about.

## Conclusion
More than any other app I've built in this course thus far, the BMI Calculator has me really excited about the toolset Apple has gathered together in UIKit. As I become more familiar with Apple's developer resources, I am finding it easier and easier to create great-feeling user interaction elements quickly, and I can't wait to see what's next!
