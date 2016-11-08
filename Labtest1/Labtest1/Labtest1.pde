//Author : Gareth Dunne
//Student No. : C14533333
//Date: 08/11/16
int numHorizontalLines = 10;
int numVerticalLines = 10;

void setup()
{
  size(800,800);
  background(1);
  

String data[] = loadStrings("desktop/HabHYG15ly.csv");
//println("there are " + data.length + " lines");

//Putting Document values into arrays to be used to plot data

for (int i = 0 ; i < data.length   ; i++) 
      {
          String[] list = split(data[i], ',');
          // putting values into temporary list to be distributed into class variables
          
          String hab = list[2];
          String displayname = list[3];
          String distance = list[12];
          String xg = list[13];
          String yg = list[14];
          String zg = list[15];
          String absmag = list[16];
          
      }//end for
}//end setup

    class star{
          String hab ;
          String displayname; 
          String distance; 
          String xg ;
          String yg ;
          String zg ;
          String absmag ;
              }//end class
               
//function to draw the graph to 
  
void drawLineGraph() 
{
  stroke(100,0,100);
  float distanceBetweenHorizontalLines = (float)height/numHorizontalLines;
  float distanceBetweenVerticalLines = (float)width/numVerticalLines  ;

  for(int i = 0; i < numHorizontalLines; i++)
  {
    line(0, i*distanceBetweenHorizontalLines, width -10 , i*distanceBetweenHorizontalLines);

  }

  for(int i = 0; i < numVerticalLines; i++)
  {
    line (i*distanceBetweenVerticalLines,0,i*distanceBetweenVerticalLines, height -10 );
  }

}


void draw(){
  
drawLineGraph();

if (mousePressed == true) {
    stroke(255);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}



  

  