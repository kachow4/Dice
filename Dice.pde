void setup(){
	size(600, 600);
	noLoop();
}

void draw(){
	for (int a = 0; a < 601; a = a + 100){
		for (int b = 0; b < 301; b = b + 100){
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
		numDie = (int)(Math.random()*6 + 1);
	}

	void roll(){
		
	}

	void show(){
			fill((int)(Math.random()*200 + 50), (int)(Math.random()*200 + 50), (int)(Math.random()*200 + 50));
			noStroke();
			rect(myX, myY, 100, 100, 20);
			strokeWeight(10);
			stroke(0);
		if (numDie == 1){	
			point(myX + 50, myY + 50);
		}
		else if (numDie == 2){
			point(myX + 33, myY + 33);
			point(myX + 66, myY + 66);
		}
		else if (numDie == 3){
			point(myX + 25, myY + 25);
			point(myX + 50, myY + 50);
			point(myX + 75, myY + 75); 
		}
		else if (numDie == 4){
			point(myX + 33, myY + 33);
			point(myX + 66, myY + 33);
			point(myX + 33, myY + 66);
			point(myX + 66, myY + 66);
		}
		else if (numDie == 5){
			point(myX + 33, myY + 33);
			point(myX + 66, myY + 33);
			point(myX + 33, myY + 66);
			point(myX + 66, myY + 66);
			point(myX + 50, myY + 50); 
		}
		else if (numDie == 6){
			point(myX + 25, myY + 33);
			point(myX + 25, myY + 50);
			point(myX + 25, myY + 66);
			point(myX + 75, myY + 33);
			point(myX + 75, myY + 50);
			point(myX + 75, myY + 66);
		}
	}
}
