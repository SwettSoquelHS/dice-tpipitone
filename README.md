Dice
====

In this assignment we'll practice using OOP (Object Oriented Programming) techniques. We'll create a `class` to model what a single die has and does, and then we will create at least 9 *instances* of that class arranged in a grid shape. Note that for full credit your program must display the total of all the dice and draw the dice with dots or similar marks. Also, you must customize the title, header and footer of `index.html`. You may find the first 66 slides of the 
[OOP--Classes](https://drive.google.com/open?id=1esmmDE9bCKXrHMY3Wk3TNihJHbmQJ2Am5-_1I087jjM) slide presentation helpful, as well as the [Nested Loops](https://drive.google.com/open?id=1BVT2DQCriRXC4iTV_rzad22mqKbSpbXI), 
[Practice with classes](https://drive.google.com/open?id=1wru9T3uwIhMziWxGcirR-HoiqY0-L_Gs) and the 
[Math.random](https://drive.google.com/open?id=1lkqcEGCUX-xNA-UOMfMzTX08JrvK_fGH) worksheets.

Suggested steps to start the assignment
------------------------------------------   
1. Start by cloning your project.
2. Open the pde file (located in the Dice directory of your project) and you should see the following code:

```java
        void setup()
	{
	    noLoop();
	}
	void draw()
	{
	    //your code here
	}
	void mousePressed()
	{
	    redraw();
	}
	
	// Class Die, models one single role of a six sided die
	class Die 
	{
	    //variable declarations here
	    
	    Die(int x_pos, int y_pos) //constructor
	    {
	        //variable initializations here
	    }
	    void roll()
	    {
	        //your code here
	    }
	    void show()
	    {
	        //your code here, this will draw what you imagine a die to look like
	    }
	}
```

2. Complete the `draw()` function first. For now it should:  
     - clear the screen using `background(0); //to whatever bgcolor you like` 
     - declare and initialize one instance of the `Die` class
     - Call the `show()` function for that `Die` (even though we won't see anything yet)
3. Now lets work on the `Die` class. 
     - First complete the `show()` function that displays the die to the screen. Notice that the constructor takes arguments. We'll use those arguments to position the individual die cubes. Don't worry about the dots at first, just get the shape of the dice on the screen for now. (Just draw one dot to represent a roll of 1 for now, the remaining 5 sides you figure out later)
     - Once you like the shape of your die, go back to `show()` and add some `if` statements to check how many dots you need to put on the die. Start by "forcing" the die to always roll a one. Check to see that you can get one dot where it is suppose to be, and move on to two, and so on. If you are clever, you can combine some of the ifs and avoid duplicate code. 
4. Now, use nested loops to display at least nine instances of the `Die` class. This is the power of OOP. It's not that much more work to make 1000 dice as it is to make one. Make sure the dots are on the dice. Your `show()` function will need to position the dots by adding some small amount to the x and y coordinates of the `rect()` of the `Die`
5. Finally, add code to the `draw()` function so that your program displays the total for the roll to the screen.  

Program requirements
-----------------------
The steps above are only a suggestion. Your program needs to:
1. Use a `class` to model a **single** `Die` cube 
2. The `Die` constructor needs to use the two arguments to position the x and y coordinates of the `Die` cube
3. Create at least 9 *instances* of the `Die` class
4. Use `Math.random()` for *all* random numbers in the assignment
5. Display the total of all the dice and draw the dice with dots or similar marks
6. Personalize the title, header and footer of `index.html`

Other than that, your dice program doesn't have to work or look like any other. Have fun and be creative!

Optional Extras
---------------
For a challenge, you might see how many legible dice you can fit on the screen. You can also keep track of the rolls. You could display the average roll, or maybe a graph that shows how often each of the numbers from 2 to 12 have come up. This is useful in some dice games like Settlers of Catan. Check the links below for examples of other students work

Samples of Student Work
-----------------------
[With Spread](https://jowong1.github.io/Dice/)   
[Organic but structured layout](https://fredxhua.github.io/Dice/)
[Keep it simple](https://thchin12345.github.io/Dice/)
[Graduated Color, so pretty](https://ethan-ap-cs.github.io/Dice/)
[Best in show!](https://jalenng.github.io/Dice/)
[Soooo many](https://emmab3.github.io/Dice/)
[Beast mode](https://dactualchung.github.io/Dice/)
[Rainbow](https://seanzep.github.io/Dice/)

