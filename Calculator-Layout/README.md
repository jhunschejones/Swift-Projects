# Calculator Layout

### Overview
This app is the result of an advanced layout challenge. The design was provided by The App Brewery as a part of their IOS bootcamp. The task I completed was to lay out the buttons so that they would look as follows:

![Landscape](Documentation/Landscape.png)

![Portrait](Documentation/Portrait.png)

_(I believe the metal colors listed are intended to indicate challenge complexity)_

### Lessons learned
* Pinning allows one to set the highest level container to fill the device screen
* To fill the whole container with a sub-container then, one can set the view attributes to to `Alignment: Fill`, `Distribution: Fill Equally`, `Spacing: 1`
* If some elements need to take up more space within a container than others, it's worth it to take the time to think through how the content can be subdivided into view containers to keep the constraints as simple as possible. A good example of this is how the `0` button needed to take up twice as much space horizontally as the `.` and `=` buttons in the bottom row.
