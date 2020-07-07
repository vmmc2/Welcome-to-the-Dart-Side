# Animations

## Recipe
* When we are working with animations in Flutter, in most of the cases we only have to follow a simple recipe to construct a beatiful animation.
* This recipe contains three important things:
  * A Ticker.
  * An Animation Controller.
  * An Animation Value.

## The Ticker
* You can think of the ticker as you think about a flipbook. Every time that the ticker ticks, it triggers a new setState() so that we can render something new/different on our screen.
## The Animation Controller
* As its name suggests, the Animation Controller is going to control how our animation is going to unfold. It's going to tell our animation: to start, to stop, to go backwards, to go forwards, to loop back or how long the animation is going to last.
## The Animation Value
* This is what does the animating.
* Usually, the animation value is going from 0 to 1.
* We use it to change some things inside our animation.
