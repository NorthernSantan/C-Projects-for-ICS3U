//{$mode DelphiUnicode}
Uses math, sysutils, classes;

  const
    STARTPOINT = 1;
    ENDPOINT = 2;
    NUMCOORDS = 2;

  Type
    IntArray = Array [ 1..4] Of Integer;
    Type
      Coordinate = Record
        x: integer;
        y: integer;
      end;
      
    Type
      CoordinatePair = Array[1..NUMCOORDS] of Coordinate;

  // Returns a single x,y value based upon user input
  Function GetCoordinatePairInput: CoordinatePair;
     Const
     cototal = 2;
     Var
      points : CoordinatePair;
      counter : integer;
      
      Begin
      For counter := 1 to cototal do begin
        Writeln('For coordinate ',counter,' please enter the x value');
        Readln(points[counter].x);
        Writeln('For coordinate ',counter,' please enter the y value');
        Readln(points[counter].y);
        end;
      GetCoordinatePairInput := points;
    end;

  Function CoordinateToString(coordToWrite: Coordinate): String;
    Var
     returnValue: String;
    Begin
      returnValue := '(';
      returnValue := returnValue + IntToStr(coordToWrite.x);
      returnValue := returnValue + ', ';
      returnValue := returnValue + IntToStr(coordToWrite.y);
      returnValue := returnValue + ')';
      CoordinateToString := returnValue;
  end;

  Function CoordinatePairToString(pairToWrite: CoordinatePair): String;    // [ {1,1} , {2,2} ]
    var counter: integer;
    printreturn : array [1..3] of string;
    
    Begin
    
      for counter := 1 TO NUMCOORDS do begin
          printreturn[counter] := (CoordinateToString(pairToWrite[counter]));
          printreturn[counter] := printreturn[counter] + (' ');
      end;
      
      printreturn[3] := printreturn[1] + printreturn[2];
      CoordinatePairToString := printreturn[3];
      
  end;

  Const
  cototal = 2;

  Var
   counter : integer;
    rise, run : Real;
    coordsFromUser : CoordinatePair;

  Begin
    Writeln('This program will calculate the slope of a line');
    Writeln('This function will get 2 coordinates');
    coordsFromUser := GetCoordinatePairInput; 
    // This is the function that gets the input
    // This is the procedure that organizes the coordinates individuly}
    Write (CoordinatePairToString(coordsFromUser)); 
    // This procedure will output double the first procedure[ {1,1}, {2,2} ]
    Writeln;
    Writeln('This is the slope between the two lines');
    rise := coordsFromUser[2].y - coordsFromUser[1].y;
    run := coordsFromUser[2].x - coordsFromUser[1].x;
    Floattostr(rise);
    Floattostr(run);
    Writeln('  ',rise:0:0);
    Writeln('-----');
    Writeln('  ',run:0:0);
    Writeln;
    Writeln('Press enter to continue');
    Readln;
end.
