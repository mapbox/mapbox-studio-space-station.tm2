// Buildings //
#building::fill[zoom>=13][zoom<=22] {
  polygon-pattern-file: url(img/textures/lightmetal4.jpg);
  [zoom>=15] { polygon-pattern-file: url(img/textures/lightmetal11.jpg); }
  polygon-pattern-alignment: global;
  polygon-pattern-clip: false;
  [zoom=15] { 
    line-color: @water-text; 
    line-width: 0.25;  
  }
  [zoom>=16] { 
    line-color: @water-text; 
    line-width: 0.5;
  }
  [zoom=17] { line-pattern-file: url(img/lines/borderline1-2px.jpg);}
  [zoom=18] { line-pattern-file: url(img/lines/borderline1-5px.jpg);}
  [zoom=19] { line-pattern-file: url(img/lines/borderline1-10px.jpg);}
}
#building::shadow[zoom>=17] {
  line-width: 3;
  line-join: round;
  line-color: #000;
  line-opacity: 0.5;
  line-cap: round;
  [zoom=17] { line-pattern-file:url(img/lines/borderline1-2px.jpg);}
  [zoom>=18] { line-pattern-file:url(img/lines/borderline1-5px.jpg);}
  line-pattern-file: url(img/lines/borderline1-10px.jpg);
  line-clip: false;
  [zoom=17] { line-geometry-transform: translate(2,2); }
  [zoom=18] { line-geometry-transform: translate(3,3); }
  [zoom=19] { 
    line-geometry-transform:translate(3,4);
    line-width:5; 
    line-opacity:0.4;
  }
  polygon-pattern-file: url('img/textures/lightmetal11.jpg');
  polygon-geometry-transform: translate(0,2);
  // This is the pattern file for the top of the buildings
  a/polygon-pattern-file: url(img/textures/lightmetal11.jpg);
}
