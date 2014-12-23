// =====================================================================
// POI LABELS
// =====================================================================

#poi_label[maki=''] { opacity:1; } // hack for mapnik#1952
#poi_label {
  marker-file: url("img/other/dot-2px.png");
  marker-opacity:1;
  [zoom=14] {
    marker-opacity:1;
    [scalerank=1]{marker-file: url("img/other/targetdot-15.png");}
    [scalerank=2]{marker-file: url("img/other/targetdot-10.png");}
    [scalerank=3]{marker-file: url("img/other/dot-6px.png");}
  }	
  [zoom=15] {
    marker-opacity:0.75;
    marker-file: url("img/other/dot-5px.png");
    [scalerank=1]{marker-file: url("img/other/targetdot.png"); }
    [scalerank=2]{marker-file: url("img/other/targetdot-15.png");  }
    [scalerank=3]{marker-file: url("img/other/targetdot-10.png");  }
  }
  [zoom=16] {
    marker-file: url("img/other/dot-6px.png");
    [scalerank=1]{marker-file: url("img/other/targetdot-40.png");}
    [scalerank=2]{marker-file: url("img/other/targetdot-2.png");}
    [scalerank=3]{marker-file: url("img/other/targetdot.png");}  
  }
  [zoom=17] {
    marker-file: url("img/other/dot-8px.png");
    [scalerank=1]{marker-file: url("img/other/targetdot-50.png");}
    [scalerank=2]{marker-file: url("img/other/targetdot-40.png");}
    [scalerank=3]{marker-file: url("img/other/targetdot-2.png");} 
  }
 [zoom=18] {
    marker-file: url("img/other/targetdot-15.png");
    [scalerank=1]{marker-file: url("img/other/targetdot-50.png");}
    [scalerank=2]{marker-file: url("img/other/targetdot-40.png");}
    [scalerank=3]{marker-file: url("img/other/targetdot-2.png");} 
  }  
  [zoom>=19] {
    marker-file: url("img/other/targetdot.png");
    [scalerank=1]{marker-file: url("img/other/targetdot-50.png");}
    [scalerank=2]{marker-file: url("img/other/targetdot-40.png");}
    [scalerank=3]{marker-file: url("img/other/targetdot-2.png");} 
  }  
}