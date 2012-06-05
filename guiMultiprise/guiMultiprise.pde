ImageButtons buttona;
ImageButtons buttonb;
ImageButtons buttonc;
ImageButtons buttond;
ImageButtons buttone;
ImageButtons buttonf;
ImageButtons buttong;
ImageButtons buttonh;
ImageButtons buttoni;
ImageButtons buttonj;
ImageButtons buttonk;
ImageButtons buttonl;

boolean firstpress=false;
int onetime=0;


void setup()
{
  size(800,600);;
  background(102, 102, 102);
  
  //12img a -> l
  
  // Define and create image button
  PImage i1a = loadImage("01a.jpg");
  PImage i2a = loadImage("01.jpg");
  int xa = 0;
  int ya = 0;
  int wa = i1a.width;
  int ha = i1a.height;
  
  
  PImage i1b = loadImage("02a.jpg");
  PImage i2b = loadImage("02.jpg");
  int xb = 200;
  int yb = 0;
  int wb = i1b.width;
  int hb = i1b.height;
  
  PImage i1c = loadImage("03a.jpg");
  PImage i2c = loadImage("03.jpg");
  int xc = 400;
  int yc = 0;
  int wc = i1c.width;
  int hc = i1c.height;
  
  PImage i1d = loadImage("04a.jpg");
  PImage i2d = loadImage("04.jpg");
  int xd = 600;
  int yd = 0;
  int wd = i1d.width;
  int hd = i1d.height;
  
  PImage i1e = loadImage("05a.jpg");
  PImage i2e = loadImage("05.jpg");
  int xe = 0;
  int ye = 200;
  int we = i1e.width;
  int he = i1e.height;
  
  PImage i1f = loadImage("06a.jpg");
  PImage i2f = loadImage("06.jpg");
  int xf = 200;
  int yf = 200;
  int wf = i1f.width;
  int hf = i1f.height;
  
  PImage i1g = loadImage("07a.jpg");
  PImage i2g = loadImage("07.jpg");
  int xg = 400;
  int yg = 200;
  int wg = i1g.width;
  int hg = i1g.height;
  
  PImage i1h = loadImage("08a.jpg");
  PImage i2h = loadImage("08.jpg");
  int xh = 600;
  int yh = 200;
  int wh = i1h.width;
  int hh = i1h.height;
  
  PImage i1i = loadImage("09a.jpg");
  PImage i2i = loadImage("09.jpg");
  int xi = 0;
  int yi = 400;
  int wi = i1i.width;
  int hi = i1i.height;
  
  PImage i1j = loadImage("10a.jpg");
  PImage i2j = loadImage("10.jpg");
  int xj = 200;
  int yj = 400;
  int wj = i1j.width;
  int hj = i1j.height;
  
  PImage i1k = loadImage("11a.jpg");
  PImage i2k = loadImage("11.jpg");
  int xk = 400;
  int yk = 400;
  int wk = i1k.width;
  int hk = i1k.height;
  
  PImage i1l = loadImage("12a.jpg");
  PImage i2l = loadImage("12.jpg");
  int xl = 600;
  int yl = 400;
  int wl = i1l.width;
  int hl = i1l.height;
  
  
  buttona = new ImageButtons(xa, ya, wa, ha, i1a, i2a, 1);
  buttonb = new ImageButtons(xb, yb, wb, hb, i1b, i2b, 2);
  buttonc = new ImageButtons(xc, yc, wc, hc, i1c, i2c, 3);
  buttond = new ImageButtons(xd, yd, wd, hd, i1d, i2d, 4);
  buttone = new ImageButtons(xe, ye, we, he, i1e, i2e, 5);
  buttonf = new ImageButtons(xf, yf, wf, hf, i1f, i2f, 6);
  buttong = new ImageButtons(xg, yg, wg, hg, i1g, i2g, 7);
  buttonh = new ImageButtons(xh, yh, wh, hh, i1h, i2h, 8);
  buttoni = new ImageButtons(xi, yi, wi, hi, i1i, i2i, 9);
  buttonj = new ImageButtons(xj, yj, wj, hj, i1j, i2j, 10);
  buttonk = new ImageButtons(xk, yk, wk, hk, i1k, i2k, 11);
  buttonl = new ImageButtons(xl, yl, wl, hl, i1l, i2l, 12);
  
}

void draw()
{
  buttona.update();
  buttona.display();
  buttonb.update();
  buttonb.display();
  buttonc.update();
  buttonc.display();
  buttond.update();
  buttond.display();
  buttone.update();
  buttone.display();
  buttonf.update();
  buttonf.display();
  buttong.update();
  buttong.display();
  buttonh.update();
  buttonh.display();
  buttoni.update();
  buttoni.display();
  buttonj.update();
  buttonj.display();
  buttonk.update();
  buttonk.display();
  buttonl.update();
  buttonl.display();
}

class Button
{
  int x, y;
  int w, h;
  color basecolor, highlightcolor;
  color currentcolor;
  boolean over = false;
  boolean pressed = false;   
  
  
  void pressed() {
    if(over && mousePressed) {
      pressed = true;
      firstpress=true;
    }
    else
    {
      pressed=false;
    }
 
    
  }
  
  boolean overRect(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
  
 
}


 void mouseReleased()
    {
     firstpress=false;
     onetime=0;
    } 

class ImageButtons extends Button 
{
  PImage base;
  PImage roll;
  PImage down;
  PImage currentimage;
  int idimg;

  ImageButtons(int ix, int iy, int iw, int ih, PImage ibase, PImage idown, int id) 
  {
    x = ix;
    y = iy;
    w = iw;
    h = ih;
    base = ibase;
    down = idown;
    currentimage = base;
    idimg=id;
  }
  
  void update() 
  {
    over();
    pressed();
    if(pressed) {
      currentimage = down;
      if (firstpress)
      {
        if (onetime==0)
        {
            try {
              String[] command = new String[2];
              command[0]="C:/IrfanView/i_view32.exe";
              command[1]="C:\\BMP\\"+idimg+".bmp /print";  
              //println("presse "+command[1]);
            
              Process p = exec(command);
              BufferedReader in = new BufferedReader(new InputStreamReader(p.getInputStream()));
              String line = null;
              while ((line = in.readLine()) != null) {
                System.out.println(line);
              }//fin while
            }// fin try
            catch (IOException e) { // gestion exception
              e.printStackTrace();
            } // fin catch 
             onetime++;
        }
      }
    } else {
      currentimage = base;
    }
  }
  
  void over() 
  {
    if( overRect(x, y, w, h) ) {
      over = true;
    } else {
      over = false;
    }
  }
  
  void display() 
  {
    image(currentimage, x, y);
  }
}
