void setup(){
	size(600, 600);
	noLoop();
}

void draw(){
	for (int a = 0; a < 601; a = a + 100){
		for (int b = 0; b < 601; b = b + 100){
		Die mikaela = new Die (a, b);
		mikaela.show();	
		}
	}
}

void mousePressed(){
	redraw();
}

class Die{ 
	int numDie, myX, myY;

	Die(int x, int y){ 
		myX = x;
		myY = y;
		numDie = (int)((Math.random()*7) + 1);
	}

	void roll(){
	
	}

	void show(){
		
		if (numDie == 1){	
			strokeWeight(2);
			rect(myX, myY, 100, 100, 20);
			strokeWeight(5);
			stroke(0);
			point(myX + 50, myY + 50);
		}
		else if (numDie == 2){
			strokeWeight(2);
			rect(myX, myY, 100, 100, 20);
			strokeWeight(5);
			point(myX + 33, myY + 33);
			point(myX + 66, myY + 66);
		}
		else if (numDie == 3){
			strokeWeight(2);
			rect(myX, myY, 100, 100, 20);
			strokeWeight(5);
			point(myX + 25, myY + 25);
			point(myX + 50, myY + 50);
			point(myX + 75, myY + 75); 
		}
		else if (numDie == 4){
			strokeWeight(2);
			rect(myX, myY, 100, 100, 20);
			strokeWeight(5);
			point(myX + 33, myY + 33);
			point(myX + 66, myY + 33);
			point(myX + 33, myY + 66);
			point(myX + 66, myY + 66);
		}
		else if (numDie == 5){
			strokeWeight(2);
			rect(myX, myY, 100, 100, 20);
			strokeWeight(5);
			point(myX + 33, myY + 33);
			point(myX + 66, myY + 33);
			point(myX + 33, myY + 66);
			point(myX + 66, myY + 66);
			point(myX + 50, myY + 50); 
		}
		else if (numDie == 6){
			strokeWeight(2);
			rect(myX, myY, 100, 100, 20);
			strokeWeight(5);
			point(myX + 25, myY + 33);
			point(myX + 25, myY + 50);
			point(myX + 25, myY + 66);
			point(myX + 75, myY + 33);
			point(myX + 75, myY + 50);
			point(myX + 75, myY + 66);

		}
	}
}
