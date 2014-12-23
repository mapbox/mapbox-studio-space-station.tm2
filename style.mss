/* Custom metal textures derived from Lost and Taken's free
textures. Originals are available online at:
http://lostandtaken.com/
*/

// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';
@water-text:lighten(#000, 60);

Map {
  background-image:url('img/textures/lightmetal77.jpg');
  font-directory: url("fonts/");
}

// Water Features 
#water {
  ::line {
    [zoom=15]  { 
      line-color:#9A9623; 
      line-width: 5; 
      line-dasharray: 4,3;
    }
    [zoom=16]  { line-pattern-file:url(img/lines/danger-line10.jpg);}
    [zoom>=17] { 
      line-pattern-file: url(img/lines/danger-1.jpg);
      line-width: 6;
      line-color: #000;
    }
    [zoom>=19] { 
      line-pattern-file: url(img/lines/danger-2.jpg);
      line-width: 12;
      line-color: #000;
    }
  }
  ::fill[zoom>=0] {
    polygon-pattern-file: url(img/textures/space.jpg);
    polygon-pattern-alignment: global; 
  }
}

#waterway [type='river'],
#waterway [type='canal'] {
  [zoom>=10] {
    line-color:#0d1d2c;
    line-width: 0.5;
    line-opacity: 0.5;
  }
  [zoom>=13] { line-pattern-file:url('img/lines/space-2px.jpg');}
  [zoom>=16] { line-pattern-file:url('img/lines/space-5px.jpg');}
  [zoom>=18] { line-pattern-file:url('img/lines/space-10px.jpg');}
}
#waterway [type='stream'][zoom>=10] {
  line-color:#0d1d2c;
  line-width: 0.5;
  [zoom>=16] { line-pattern-file:url('img/lines/space-2px.jpg');}
  [zoom>=18] { line-pattern-file:url('img/lines/space-5px.jpg');}
}

// Landuse areas //
#landuse::fill {
  [zoom<=13] { polygon-pattern-opacity: 0.5;}
  [zoom>=18] { 
    polygon-pattern-opacity: 0.5; 
    polygon-pattern-file: url('img/textures/cobble1.jpg');
  }
  [zoom>=19] { polygon-pattern-file: url('img/textures/cobble3.jpg');}
   	polygon-pattern-alignment: global;
  	polygon-pattern-gamma: 0.5;
	polygon-pattern-file:url('img/textures/lightmetal7.jpg');
}

#landuse::shadow {
  line-width: 3;
  line-join: round;
  line-color: #000;
  line-opacity: 0.5;
  line-cap: round;
  [zoom<=9] { line-width:0.5; }
  [zoom<=16] { 
    line-width: 1; 
    line-opacity: 0.3;
  }
  [zoom>=17] { 
    line-pattern-file: url(img/lines/borderline1-2px.jpg);
    line-width: 2; 
    line-geometry-transform: translate(1,1);
  }
  [zoom>=18] { 
    line-geometry-transform: translate(2,2); 
    line-pattern-file: url(img/lines/borderline1-5px.jpg);
  }
  line-clip: false; 
}