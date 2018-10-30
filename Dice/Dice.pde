Die die_1;
Die die_2;
Die die_3;
Die die_4;
Die die_5;
Die die_6;
Die die_7;
Die die_8;
Die die_9;

int total;
int grandTotal = 0;
int avg = 0;


void setup(){
  size(600,800);
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  noLoop();
  die_1 = new Die(50,50);
  die_2 = new Die(250, 50);
  die_3 = new Die(450, 50);
  
  die_4 = new Die(50, 250);
  die_5 = new Die(250, 250);
  die_6 = new Die(450, 250);
  
  die_7 = new Die(50, 450);
  die_8 = new Die(250, 450);
  die_9 = new Die(450, 450);
  

  
}

void draw(){
  background(0);
  die_1.show();
  die_2.show();
  die_3.show();
  
  die_4.show();
  die_5.show();
  die_6.show();
  
  die_7.show();
  die_8.show();
  die_9.show();
  
  textSize(32);
  fill (244);
  grandTotal = grandTotal + total;
  text("Current Total: " + total, 175, 650);
  text("Running Total: " + grandTotal, 175, 700);
  if(avg > 0){
    text("Average: " + grandTotal / avg , 175, 750);
  } else {
     text("Average: " + avg , 175, 750);
  }
  

  
}

void mousePressed(){
  redraw();
  die_1.roll();
  die_2.roll();
  die_3.roll();
  die_4.roll();
  die_5.roll();
  die_6.roll();
  die_7.roll();
  die_8.roll();
  die_9.roll();
  
  avg++;
  
  

}



//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
class Die {
  int x_pos, y_pos;
  int randside;
  
	//variable declarations for your Die instances here
	
	//constructor
	Die(int x, int y){
    x_pos = x;
    y_pos = y;
    
		//variable initializations here
	}
	
	//Simulate a roll of a die
	void roll(){
		randside = (int)(Math.random() * 6) + 1;
    total = 0;
    
    
    
	}
	
	/*
	  Use the randomly assigned roll value to draw the face of a die
	*/
	void show(){
    pushMatrix();
    translate(x_pos, y_pos);
    //die
    fill(random(100,255),random(100,255),random(100,255));
    rect(0,0,90,90, 30);
    fill(0);
    if (randside == 1){
      ellipse(45,45,10,10);
      total++;
    } else if (randside == 3){
      ellipse(45,45,10,10);
      ellipse(25,25,10,10);
      ellipse(65,65,10,10);
      total+=3;
    } else if (randside == 2) { 
      ellipse(25,25,10,10);
      ellipse(65,65,10,10);
      total+=2;
    } else if (randside == 4) { 
      ellipse(25,25,10,10);
      ellipse(25,65,10,10);
      ellipse(65,25,10,10);
      total+=4;
      ellipse(65,65,10,10);
    } else if (randside == 5){
      ellipse(25,25,10,10);
      ellipse(25,65,10,10);
      ellipse(65,25,10,10);
      ellipse(65,65,10,10);
      ellipse(45,45,10,10);
      total+=5;
    } else if (randside == 6){
      ellipse(25,25,10,10);
      ellipse(25,65,10,10);
      ellipse(65,25,10,10);
      ellipse(65,65,10,10);
      ellipse(25,45,10,10);
      ellipse(65,45,10,10);
      total+=6;
    }
    
    popMatrix();
  

  
    
	}
}
