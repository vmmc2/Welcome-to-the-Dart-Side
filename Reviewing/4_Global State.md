# Dealing with Global State
![[t1]](fluttest.png)


## Solution 1
* Suppose that we want to track the state of the Checkbox widget not only in the Checkbox widget itself but also inside the Text widget. Since they are in different parts inside the widget tree... How can we do this??
* First of all, we must take the variable that tracks the state of the Checkbox() widget (In this case, it is the boolean variable: isChecked) and we must put it __one level above in the widget tree. In other words, we must put this variable inside the TaskTile() widget and we must also make the TaskTile() widget a Stateful Widget.__
* Secondly, we must turn the Checkbox() widget into a Stateless Widget.
* __But there is a problem... we have lifted the state up to the TaskTile() widget by putting the variable inside there but we cannot change the Checkbox() widget since it is a Stateless Widget. You can we solve this problem? USING A CALLBACK.__
