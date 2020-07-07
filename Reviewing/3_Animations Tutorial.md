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

## Changing the Animations
* If we want to create different animations, we can use the CurvedAnimation() class.
* Through this way, we can change the animation.value along a curve.
* For more info, check the Flutter documentation about the CurvedAnimation() class.
* If we are working with a CurvedAnimation() class, you must assure that: __The lower_bound of the animation is 0 and the upper_bound of the animation is 1.__
* If we are using the CurvedAnimation() class, __then we are not going to use the controller.value but instead we are going to use the animation.value.__
* What if you want the animation to go backwards? __For that to happen, you must use controller.reverse() instead of using controller.forward(). A good practice is to put the optional parameter in the .reverse() method: The parameter is from. By default, your code should look like this: controller.reverse(from: 1.0).__

## Making an Animation goes forwards and then backwards.
```dart
controller.forward();

animation.addStatusListener((status) {
 if(status == AnimationStatus.completed){
  controller.reverse(from: 1.0);
 }else if(status == AnimationStatus.dismissed){
  controller.forward();
 }
});
```

