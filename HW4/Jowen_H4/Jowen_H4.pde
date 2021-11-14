void setup(){
  size(1500,1500);
  background(255);
  float ww=25;
  String[] lines = loadStrings("Korea_Aegukga.txt");
  for (int i=0; i<lines.length; i++){
    for (int j=0; j<lines[i].length(); j++){
      char c = lines[i].charAt(j);
      switch (c){
        case 'A': fill(219,68,83); break;//100% capacity
        case 'B': fill(233,87,62); break;
        case 'C': fill(246,187,67); break;
        case 'D': fill(140,192,82); break;
        case 'E': fill(59,174,218); break;
        case 'F': fill(75,137,220); break;
        case 'G': fill(150,122,222); break;
        case 'H': fill(219,68,83,191); break;//75% capacity
        case 'I': fill(233,87,62,191); break;
        case 'J': fill(246,187,67,191); break;
        case 'K': fill(140,192,82,191); break;
        case 'L': fill(59,174,218,191); break;
        case 'M': fill(75,137,220,191); break;
        case 'N': fill(150,122,222,191); break;
        case 'O': fill(219,68,83,128); break;//50% capacity
        case 'P': fill(233,87,62,128); break;
        case 'Q': fill(246,187,67,128); break;
        case 'R': fill(140,192,82,128); break;
        case 'S': fill(59,174,218,128); break;
        case 'T': fill(75,137,220,128); break;
        case 'U': fill(150,122,222,128); break;
        case 'V': fill(219,68,83,70); break;//25%capacity
        case 'W': fill(233,87,62,70); break;
        case 'X': fill(246,187,67,70); break;
        case 'Y': fill(140,192,82,70); break;
        case 'Z': fill(59,174,218,70); break;
        case ',': fill(75,137,220,70); break;
        case '.': fill(150,122,222,70); break;
        case ' ': fill(73,207,174,128); break;
        case 'a': fill(237,85,100); break;//100% capacity
        case 'b': fill(251,110,82); break;
        case 'c': fill(255,206,85); break;
        case 'd': fill(160,212,104); break;
        case 'e': fill(80,192,232); break;
        case 'f': fill(93,156,235); break;
        case 'g': fill(172,146,237); break;
        case 'h': fill(237,85,100,191); break;//75% capacity
        case 'i': fill(251,110,82,191); break;
        case 'j': fill(255,206,85,191); break;
        case 'k': fill(160,212,104,191); break;
        case 'l': fill(80,192,232,191); break;
        case 'm': fill(93,156,235,191); break;
        case 'n': fill(172,146,237,191); break;
        case 'o': fill(237,85,100,128); break;//50% capacity
        case 'p': fill(251,110,82,128); break;
        case 'q': fill(255,206,85,128); break;
        case 'r': fill(160,212,104,128); break;
        case 's': fill(80,192,232,128); break;
        case 't': fill(93,156,235,128); break;
        case 'u': fill(172,146,237,128); break;
        case 'v': fill(237,85,100,70); break;//25% capacity
        case 'w': fill(251,110,82,70); break;
        case 'x': fill(255,206,85,70); break;
        case 'y': fill(160,212,104,70); break;
        case 'z': fill(80,192,232,70); break;
        case '!': fill(93,156,235,70); break;
        case ';': fill(172,146,237,70); break;
        case '-': fill(54,188,155,128); break;
      }
      noStroke();
      rect(j*ww, i*ww, 25,25);
    }
  }
}
