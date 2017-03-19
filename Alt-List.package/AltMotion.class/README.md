Base class for motions. Just defines a combining interface and the next method.

AltMotion>>#step
	Update value and check that the Motion is still active or not

AltMotion>>#check
	Check that the motion is still active. Returns self if yes, nil if not.
	Allows a motion to replace itself with another...

AltMotion>>#value
	Apply the value for now in the animation.
	
step is written as value followed by check.