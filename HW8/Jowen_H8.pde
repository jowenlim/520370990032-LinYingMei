PFont f;
String typed = "";
int indent = 50;
String target;
int popmax;
float mutationRate;
Population population;
Boolean flag  = false;

void setup() {
  size(800,800);
  f = createFont("Century Gothic Bold", 32, true);
  popmax = 150;
  mutationRate = 0.01;
  background(255);
}

void keyPressed(){
  if (key == '\n'){
    target = typed;
    population = new Population(target, mutationRate, popmax);
    flag  = true;
  } else {
    typed = typed + key;
  }
}

void draw() {
  background(255);
  textFont(f);
  textAlign(LEFT);
  fill(0);
  textSize(18);
  text("Click the screen & type your desired phrase. \nPress ENTER if finish typing.", 50, 100);
  fill(255,0,0);
  textSize(14);
  text("(Pls don't press SHIFT or CAPS LOCK for capital letters, ", 50, 160);
  textSize(14);
  text("because the system can't recognise it.)", 50, 180);
  fill(0);
  textSize(18);
  text("User Input:", 50,220); 
  text("Target Phrase:", 50, 400);
  textSize(18);    
  text(typed,50,250);
    
  if (flag){   
    displayInfo();
    population.naturalSelection();
    population.generate();
    population.calcFitness();
    if (population.finished()) {     // If we found the target phrase, stop
      println(millis()/1000.0);
      noLoop();
    }
  }
}

void displayInfo() {
  textSize(18);
  text(target, 230, 400);
  textSize(24);
  text("Best Phrase:",50,450);
  textSize(40);
  fill(155,230,85);
  String answer = population.getBest();
  text(answer, 50, 530);
  fill(0);
  textSize(18);
  text("Total Generations:", 50, 600);
  text("Average Fitness:", 50, 620);
  text("Total Population:", 50, 640);
  text("Mutation Rate:", 50, 660);
  text(population.getGenerations(), 230, 600);
  text(nf(population.getAverageFitness(), 0, 2), 230, 620);
  text(popmax, 230, 640);
  text(int(mutationRate * 100) + "%", 230, 660); 
  textSize(10);
  text("All phrases:\n" + population.allPhrases(), 600, 10);
}
