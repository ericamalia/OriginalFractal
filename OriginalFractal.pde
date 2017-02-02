public void setup(){
	size(800,800);
	background(0);

}
int bob =80;
public void draw(){
	strokeWeight(.3);
	for (int i =0; i< 850; i+=50){
		for(int j=0; j<850; j+= 50){
			fill(35, 59, 71);
			fract(i,j, 30);
		}
	}
	
	fill(117, 160, 92);

	int r = (int)(Math.random()*100);
	int g = (int)(Math.random()*150);
	int b = (int)(Math.random()*150);
	stroke(r,g,b);

	fract(400,400,bob);

	fill(59, 115, 26);
	fract(400,400,bob/2);

	fill(69, 105, 48);
	fract(400,400,bob/4);

	if (bob < 250){
		bob+=2;
		rotate(30);
	}

}

public void fract(int x, int y, int siz){
	

	ellipse(x,y, siz, siz*1.3);


	if (siz > 10){
		fract(x-siz/2, y, siz-15);
		fract(x+siz/2, y, siz-15);
		fract(x, y-siz/2, siz-10);
		fract(x, y+siz/2,siz-10);
	}

}
