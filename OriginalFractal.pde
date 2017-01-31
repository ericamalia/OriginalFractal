public void setup(){
	size(500,500);
	background(0);

}
public void draw(){
	int bob =80;
	fill(107, 170, 185);
	int r = (int)(Math.random()*100);
	int g = (int)(Math.random()*150);
	int b = (int)(Math.random()*150);
	stroke(r,g,b);

	fract(250,250,bob);

	fill(187, 158, 21);
	fract(250,250,bob/2);

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
