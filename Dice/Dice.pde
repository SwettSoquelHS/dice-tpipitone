Die die_1;
Die die_2;
Die die_3;
Die die_4;
Die die_5;
Die die_6;


void setup(){
  size(600,600);
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  noLoop();
}

void draw(){
  background(0);
  die_1 = new Die(50,50);
  
}

void mousePressed(){
  redraw();
}



//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
class Die {
	//variable declarations for your Die instances here
	
	//constructor
	Die(int x, int y){
		//variable initializations here
	}
	
	//Simulate a roll of a die
	void roll(){
		//your code here, 
		//should randomly assign a value from 1 to 6
	}
	
	/*
	  Use the randomly assigned roll value to draw the face of a die
	*/
	void show(){
  

  
    
	}
}
