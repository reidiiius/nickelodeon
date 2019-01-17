{$mode objfpc}
unit Coliseum;

interface

uses BaseUnix;


var
  Tb : Char;
  Epoch : TTime;
  Diadem, Head, Tail : String[60];

  DataBank : Record
    j136y7, j167y2, j17, j17y2, j2, j23, j236,
    j23k6, j246y3, j25, j256, j25y6, j26, j26y3,
    j26y34, j2k34, j2k5, j2k56, j2k56x4, j2k6, j2k6x5,
    j2k6y3, j2y3, j3, j346y5, j34k6, j36, j3k5,
    j3k56x4, j3k5x4, j3k6, j5, j56, j56y7, j5y6,
    j6, k1, k12, k125, k12j5, k135x4, k15,
    k157x6, k17j5, k1j5, k1j56y7, k1j6, k1j6y7, k2,
    k25, k256, k257x1, k25x1, k25x17, k26, k26x5,
    k2j17, k2j5, k2j56, k2j56y7, k2j5x1, k2j5y6, k2j6,
    k2x1, k34, k345x2, k34x2, k5, k56, k56x4,
    k6, k6x5, n0, n167, n167x4, n25x6, n26y5,
    n345, n345y7, n45y2, n5y2, n67x2, n6x2 : String[60];
  end;


function Retrieve(const qp : String) : String;

function Bj(const qp : String) : String;

function Fn(const qp : String) : String;

function Cn(const qp : String) : String;

function Gn(const qp : String) : String;

function Dn(const qp : String) : String;

function An(const qp : String) : String;

function En(const qp : String) : String;

function Bn(const qp : String) : String;

function Fk(const qp : String) : String;


procedure CGDAE(const Prop, qp : String);

procedure EADGBE(const Prop, qp : String);

procedure Ennead(const Prop, qp : String);

procedure Menu;


implementation


function Retrieve(const qp : String) : String;
begin
  with DataBank do
  begin
    Case LowerCase(qp) of
      'j136y7'  : Exit(j136y7);
      'j167y2'  : Exit(j167y2);
      'j17'     : Exit(j17);
      'j17y2'   : Exit(j17y2);
      'j2'      : Exit(j2);
      'j23'     : Exit(j23);
      'j236'    : Exit(j236);
      'j23k6'   : Exit(j23k6);
      'j246y3'  : Exit(j246y3);
      'j25'     : Exit(j25);
      'j256'    : Exit(j256);
      'j25y6'   : Exit(j25y6);
      'j26'     : Exit(j26);
      'j26y3'   : Exit(j26y3);
      'j26y34'  : Exit(j26y34);
      'j2k34'   : Exit(j2k34);
      'j2k5'    : Exit(j2k5);
      'j2k56'   : Exit(j2k56);
      'j2k56x4' : Exit(j2k56x4);
      'j2k6'    : Exit(j2k6);
      'j2k6x5'  : Exit(j2k6x5);
      'j2k6y3'  : Exit(j2k6y3);
      'j2y3'    : Exit(j2y3);
      'j3'      : Exit(j3);
      'j346y5'  : Exit(j346y5);
      'j34k6'   : Exit(j34k6);
      'j36'     : Exit(j36);
      'j3k5'    : Exit(j3k5);
      'j3k56x4' : Exit(j3k56x4);
      'j3k5x4'  : Exit(j3k5x4);
      'j3k6'    : Exit(j3k6);
      'j5'      : Exit(j5);
      'j56'     : Exit(j56);
      'j56y7'   : Exit(j56y7);
      'j5y6'    : Exit(j5y6);
      'j6'      : Exit(j6);
      'k1'      : Exit(k1);
      'k12'     : Exit(k12);
      'k125'    : Exit(k125);
      'k12j5'   : Exit(k12j5);
      'k135x4'  : Exit(k135x4);
      'k15'     : Exit(k15);
      'k157x6'  : Exit(k157x6);
      'k17j5'   : Exit(k17j5);
      'k1j5'    : Exit(k1j5);
      'k1j56y7' : Exit(k1j56y7);
      'k1j6'    : Exit(k1j6);
      'k1j6y7'  : Exit(k1j6y7);
      'k2'      : Exit(k2);
      'k25'     : Exit(k25);
      'k256'    : Exit(k256);
      'k257x1'  : Exit(k257x1);
      'k25x1'   : Exit(k25x1);
      'k25x17'  : Exit(k25x17);
      'k26'     : Exit(k26);
      'k26x5'   : Exit(k26x5);
      'k2j17'   : Exit(k2j17);
      'k2j5'    : Exit(k2j5);
      'k2j56'   : Exit(k2j56);
      'k2j56y7' : Exit(k2j56y7);
      'k2j5x1'  : Exit(k2j5x1);
      'k2j5y6'  : Exit(k2j5y6);
      'k2j6'    : Exit(k2j6);
      'k2x1'    : Exit(k2x1);
      'k34'     : Exit(k34);
      'k345x2'  : Exit(k345x2);
      'k34x2'   : Exit(k34x2);
      'k5'      : Exit(k5);
      'k56'     : Exit(k56);
      'k56x4'   : Exit(k56x4);
      'k6'      : Exit(k6);
      'k6x5'    : Exit(k6x5);
      'n0'      : Exit(n0);
      'n167'    : Exit(n167);
      'n167x4'  : Exit(n167x4);
      'n25x6'   : Exit(n25x6);
      'n26y5'   : Exit(n26y5);
      'n345'    : Exit(n345);
      'n345y7'  : Exit(n345y7);
      'n345y2'  : Exit(n45y2);
      'n5y2'    : Exit(n5y2);
      'n67x2'   : Exit(n67x2);
      'n6x2'    : Exit(n6x2);
    else
      Exit(Concat(qp, '?'));
    end;
  end;
end;


function Bj(const qp : String) : String;
begin
  Head := Copy(qp, 51, 10);
  Tail := Copy(qp,  1, 50);
  Result := Concat(Head, Tail);
end;


function Fn(const qp : String) : String;
begin
  Head := Copy(qp, 26, 35);
  Tail := Copy(qp,  1, 25);
  Result := Concat(Head, Tail);
end;


function Cn(const qp : String) : String;
begin
  Result := Copy(qp, 1, 60);
end;


function Gn(const qp : String) : String;
begin
  Head := Copy(qp, 36, 25);
  Tail := Copy(qp,  1, 35);
  Result := Concat(Head, Tail);
end;


function Dn(const qp : String) : String;
begin
  Head := Copy(qp, 11, 50);
  Tail := Copy(qp,  1, 10);
  Result := Concat(Head, Tail);
end;


function An(const qp : String) : String;
begin
  Head := Copy(qp, 46, 15);
  Tail := Copy(qp,  1, 45);
  Result := Concat(Head, Tail);
end;


function En(const qp : String) : String;
begin
  Head := Copy(qp, 21, 40);
  Tail := Copy(qp,  1, 20);
  Result := Concat(Head, Tail);
end;


function Bn(const qp : String) : String;
begin
  Head := Copy(qp, 56,  5);
  Tail := Copy(qp,  1, 55);
  Result := Concat(Head, Tail);
end;


function Fk(const qp : String) : String;
begin
  Head := Copy(qp, 31, 30);
  Tail := Copy(qp,  1, 30);
  Result := Concat(Head, Tail);
end;


procedure CGDAE(const Prop, qp : String);
begin
  Tb := chr(9);
  Diadem := Concat(Prop, '-cgdae-m');

  if (length(qp) <> 60) then
    begin
      WriteLn;
      WriteLn(Tb, qp);
      Exit;
    end;

  WriteLn;
  WriteLn(Tb, UpCase(Diadem), Epoch, ' ');
  WriteLn(Tb, En(qp));
  WriteLn(Tb, An(qp));
  WriteLn(Tb, Dn(qp));
  WriteLn(Tb, Gn(qp));
  WriteLn(Tb, Cn(qp));
end;


procedure EADGBE(const Prop, qp : String);
begin
  Tb := chr(9);
  Diadem := Concat(Prop, '-eadgbe-m');

  if (length(qp) <> 60) then
    begin
      WriteLn;
      WriteLn(Tb, qp);
      Exit;
    end;

  WriteLn;
  WriteLn(Tb, UpCase(Diadem), Epoch, ' ');
  WriteLn(Tb, En(qp));
  WriteLn(Tb, Bn(qp));
  WriteLn(Tb, Gn(qp));
  WriteLn(Tb, Dn(qp));
  WriteLn(Tb, An(qp));
  WriteLn(Tb, En(qp));
end;


procedure Ennead(const Prop, qp : String);
begin
  Tb := chr(9);
  Diadem := Concat(Prop, '-ennead-m');

  if (length(qp) <> 60) then
    begin
      WriteLn;
      WriteLn(Tb, qp);
      Exit;
    end;

  WriteLn;
  WriteLn(Tb, UpCase(Diadem), Epoch, ' ');
  WriteLn(Tb, Bj(qp));
  WriteLn(Tb, Fn(qp));
  WriteLn(Tb, Cn(qp));
  WriteLn(Tb, Gn(qp));
  WriteLn(Tb, Dn(qp));
  WriteLn(Tb, An(qp));
  WriteLn(Tb, En(qp));
  WriteLn(Tb, Bn(qp));
  WriteLn(Tb, Fk(qp));
end;


procedure Menu;
begin
  Tb := Chr(9);
  WriteLn;
  Writeln(Tb,'j136y7',Tb,'j167y2',Tb,'j17',Tb,'j17y2',Tb,'j2',Tb,'j23',Tb,'j236');
  WriteLn(Tb,'j23k6',Tb,'j246y3',Tb,'j26',Tb,'j26y3',Tb,'j26y34',Tb,'j2k56',Tb,'j2k56x4');
  WriteLn(Tb,'j2k6',Tb,'j2k6x5',Tb,'j2k6y3',Tb,'j2y3',Tb,'j3',Tb,'j34k6',Tb,'j36');
  WriteLn(Tb,'j3k56x4',Tb,'j3k5x4',Tb,'j3k6',Tb,'j6',Tb,'k157x6',Tb,'k1j6',Tb,'k256');
  WriteLn(Tb,'k26',Tb,'k26x5',Tb,'k2j17',Tb,'k2j6',Tb,'k56',Tb,'k56x4',Tb,'k6');
  WriteLn(Tb,'k6x5',Tb,'n0',Tb,'n167x4',Tb,'n26y5',Tb,'n345',Tb,'n45y2',Tb,'n5y2');
  WriteLn;
  WriteLn(Tb,'k135x4',Tb,'k345x2',Tb,'k34',Tb,'k34x2',Tb,'k2',Tb,'k12',Tb,'k125');
  WriteLn(Tb,'k12j5',Tb,'k257x1',Tb,'k25',Tb,'k25x1',Tb,'k25x17',Tb,'k2j56',Tb,'k2j56y7');
  WriteLn(Tb,'k2j5',Tb,'k2j5y6',Tb,'k2j5x1',Tb,'k2x1',Tb,'k1',Tb,'k17j5',Tb,'k15');
  WriteLn(Tb,'k1j56y7',Tb,'k1j6y7',Tb,'k1j5',Tb,'k5',Tb,'j346y5',Tb,'j3k5',Tb,'j256');
  WriteLn(Tb,'j25',Tb,'j25y6',Tb,'j2k34',Tb,'j2k5',Tb,'j56',Tb,'j56y7',Tb,'j5');
  WriteLn(Tb,'j5y6',Tb,'n0',Tb,'n345y7',Tb,'n25x6',Tb,'n167',Tb,'n67x2',Tb,'n6x2');
end;


initialization

  Epoch := fpTime;

with DataBank do
begin
       j2 :='V9V9 ZMQ4 ____ ____ R5YL WHU8 ____ U8WH ____ S6XI ____ Q4ZM ';
       j3 :='V9T7 ____ T7V9 XIQ4 ____ WHS6 ____ U8U8 ____ S6WH ____ Q4XI ';
       j5 :='WHR5 ____ U8T7 ____ S6V9 O2Q4 Q4O2 ____ ____ T7U8 ____ R5WH ';
       j6 :='V9U8 ____ T7WH ____ R5XI WHT7 ____ U8V9 YLQ4 ____ ____ Q4YL ';
       k1 :='____ Q4XI V9T7 ____ T7V9 XIQ4 ____ WHS6 ____ U8U8 ____ S6WH ';
       k2 :='YLR5 ____ ____ Q4ZM V9V9 ZMQ4 ____ XIS6 ____ WHU8 ____ U8WH ';
       k5 :='XIR5 ____ WHT7 ____ U8V9 YLQ4 ____ ____ Q4YL V9U8 ____ T7WH ';
       k6 :='V9S6 ____ T7U8 ____ R5WH WHR5 ____ U8T7 ____ ____ O2Q4 Q4O2 ';
       n0 :='V9R5 ____ T7T7 ____ R5V9 WHQ4 ____ U8S6 ____ S6U8 ____ Q4WH ';
      j17 :='____ ____ T7U8 ____ R5WH WHR5 ____ U8T7 ____ S6V9 O2Q4 Q4O2 ';
      j23 :='V9V9 ZMQ4 ____ XIS6 ____ WHU8 ____ U8WH ____ S6XI ____ Q4ZM ';
      j25 :='Q4R5 V9P3 ____ ____ P3V9 R5Q4 WHO2 ____ ____ YLU8 ____ O2WH ';
      j26 :='V9V9 ZMQ4 ____ ____ R5YL WHU8 ____ U8WH YLR5 ____ ____ Q4ZM ';
      j36 :='V9U8 ____ T7WH XIR5 ____ WHT7 ____ U8V9 YLQ4 ____ ____ Q4YL ';
      j56 :='XIR5 ____ WHT7 ____ U8V9 YLQ4 S6O2 ____ Q4YL ____ ____ T7WH ';
      k12 :='____ S6XI ____ Q4ZM V9V9 ZMQ4 ____ XIS6 ____ WHU8 ____ U8WH ';
      k15 :='____ R5XI WHT7 ____ U8V9 YLQ4 ____ ____ Q4YL V9U8 ____ T7WH ';
      k25 :='YLR5 ____ ____ Q4ZM V9V9 ZMQ4 ____ ____ R5YL WHU8 ____ U8WH ';
      k26 :='V9P3 ____ ____ P3V9 R5Q4 WHO2 ____ U8YL ____ ____ O2WH Q4R5 ';
      k34 :='WHR5 ____ U8T7 ____ ____ O2Q4 Q4O2 V9S6 ____ T7U8 ____ R5WH ';
      k56 :='V9U8 ____ T7WH ____ R5XI WHT7 ____ ____ YLQ4 ____ O2S6 Q4YL ';
     j236 :='V9V9 ZMQ4 ____ XIS6 ____ WHU8 ____ U8WH YLR5 ____ ____ Q4ZM ';
     j256 :='Q4R5 V9P3 ____ ____ P3V9 R5Q4 WHO2 ____ U8YL ____ ____ O2WH ';
     j2k5 :='Q4R5 V9P3 ____ ____ P3V9 R5Q4 ____ ____ U8YL YLU8 ____ O2WH ';
     j2k6 :='V9V9 ZMQ4 ____ ____ R5YL WHU8 ____ U8WH ____ ____ O2T7 Q4ZM ';
     j2y3 :='V9V9 ZMQ4 T7O2 ____ ____ WHU8 ____ U8WH ____ S6XI ____ Q4ZM ';
     j3k5 :='YLR5 ____ O2T7 Q4ZM ____ ZMQ4 ____ ____ R5YL WHU8 ____ U8WH ';
     j3k6 :='V9O2 ____ T7YL XZM8 ____ WHWH ____ U8XI ____ ____ O2V9 Q4Q4 ';
     j5y6 :='WHR5 ____ U8T7 ____ S6V9 O2Q4 Q4O2 V9S6 ____ ____ ____ R5WH ';
     k125 :='____ S6XI ____ Q4ZM V9V9 ZMQ4 ____ ____ R5YL WHU8 ____ U8WH ';
     k1j5 :='____ U8XI YLT7 ____ O2V9 Q4Q4 V9O2 ____ ____ XZM8 ____ WHWH ';
     k1j6 :='____ ZMQ4 T7O2 ____ R5YL WHU8 ____ U8WH YLR5 ____ ____ Q4ZM ';
     k256 :='V9P3 ____ ____ P3V9 R5Q4 WHO2 ____ ____ YLU8 ____ O2WH Q4R5 ';
     k2j5 :='YLR5 ____ ____ Q4ZM V9V9 ZMQ4 T7O2 ____ ____ WHU8 ____ U8WH ';
     k2j6 :='V9P3 ____ ____ P3V9 R5Q4 WHO2 ____ U8YL YLU8 ____ ____ Q4R5 ';
     k2x1 :='____ ____ O2T7 Q4ZM V9V9 ZMQ4 ____ XIS6 ____ WHU8 ____ U8WH ';
     k6x5 :='V9S6 ____ T7U8 ____ R5WH WHR5 ____ ____ ____ S6V9 O2Q4 Q4O2 ';
     n167 :='YLR5 ____ ____ Q4ZM ____ ZMQ4 T7O2 ____ R5YL WHU8 ____ U8WH ';
     n345 :='____ ZMQ4 ____ ____ R5YL WHU8 ____ U8WH YLR5 ____ O2T7 Q4ZM ';
     n5y2 :='V9P3 ____ ____ P3V9 R5Q4 ____ ____ U8YL YLU8 ____ O2WH Q4R5 ';
     n6x2 :='Q4R5 V9P3 ____ ____ P3V9 R5Q4 WHO2 ____ U8YL YLU8 ____ ____ ';
    j17y2 :='V9S6 ____ ____ ____ R5WH WHR5 ____ U8T7 ____ S6V9 O2Q4 Q4O2 ';
    j23k6 :='V9V9 ZMQ4 ____ XIS6 ____ WHU8 ____ U8WH ____ ____ O2T7 Q4ZM ';
    j25y6 :='O2R5 Q4P3 ____ ____ T7V9 P3Q4 R5O2 WHS6 ____ ____ ____ S6WH ';
    j26y3 :='V9V9 ZMQ4 T7O2 ____ ____ WHU8 ____ U8WH YLR5 ____ ____ Q4ZM ';
    j2k34 :='O2R5 Q4P3 ____ ____ ____ P3Q4 R5O2 WHS6 ____ U8U8 ____ S6WH ';
    j2k56 :='V9V9 ZMQ4 ____ ____ R5YL WHU8 ____ ____ YLR5 ____ O2T7 Q4ZM ';
    j34k6 :='V9T7 ____ T7V9 P3Q4 R5O2 ____ ____ U8U8 ____ ____ O2R5 Q4P3 ';
    j56y7 :='XIR5 ____ WHT7 ____ U8V9 YLQ4 S6O2 ____ Q4YL V9U8 ____ ____ ';
    k12j5 :='____ S6XI ____ Q4ZM V9V9 ZMQ4 T7O2 ____ ____ WHU8 ____ U8WH ';
    k17j5 :='O2R5 Q4P3 V9T7 ____ T7V9 P3Q4 R5O2 ____ ____ U8U8 ____ ____ ';
    k25x1 :='____ ____ O2T7 Q4ZM V9V9 ZMQ4 ____ ____ R5YL WHU8 ____ U8WH ';
    k26x5 :='V9T7 ____ ____ P3Q4 R5O2 WHS6 ____ ____ ____ S6WH O2R5 Q4P3 ';
    k2j17 :='____ ____ ____ P3Q4 R5O2 WHS6 ____ U8U8 ____ S6WH O2R5 Q4P3 ';
    k2j56 :='YLR5 ____ ____ Q4ZM V9V9 ZMQ4 T7O2 ____ R5YL ____ ____ U8WH ';
    k34x2 :='WHR5 ____ ____ ____ S6V9 O2Q4 Q4O2 V9S6 ____ T7U8 ____ R5WH ';
    k56x4 :='V9U8 ____ T7WH ____ R5XI ____ ____ U8V9 YLQ4 ____ O2S6 Q4YL ';
    n25x6 :='O2R5 Q4P3 V9T7 ____ ____ P3Q4 R5O2 WHS6 ____ ____ ____ S6WH ';
    n26y5 :='____ ____ T7V9 P3Q4 R5O2 WHS6 ____ ____ ____ S6WH O2R5 Q4P3 ';
    n45y2 :='V9O2 ____ ____ XZM8 ____ WHWH ____ U8XI YLT7 ____ O2V9 Q4Q4 ';
    n67x2 :='____ U8XI ____ ____ O2V9 Q4Q4 V9O2 ____ T7YL XZM8 ____ WHWH ';
   j136y7 :='____ ____ T7WH XIR5 ____ WHT7 ____ U8V9 YLQ4 S6O2 ____ Q4YL ';
   j167y2 :='V9U8 ____ ____ ____ R5XI WHT7 ____ U8V9 YLQ4 ____ O2S6 Q4YL ';
   j246y3 :='V9V9 ZMQ4 T7O2 ____ R5YL ____ ____ U8WH YLR5 ____ ____ Q4ZM ';
   j26y34 :='V9V9 ZMQ4 T7O2 XIS6 ____ ____ ____ U8WH YLR5 ____ ____ Q4ZM ';
   j2k6x5 :='V9V9 ZMQ4 ____ ____ R5YL WHU8 ____ ____ ____ S6XI O2T7 Q4ZM ';
   j2k6y3 :='V9V9 ZMQ4 T7O2 ____ ____ WHU8 ____ U8WH ____ ____ O2T7 Q4ZM ';
   j346y5 :='YLR5 ____ O2T7 Q4ZM V9V9 ZMQ4 ____ ____ R5YL ____ ____ U8WH ';
   j3k5x4 :='V9U8 ____ T7WH XIR5 ____ ____ ____ U8V9 YLQ4 S6O2 ____ Q4YL ';
   k135x4 :='____ R5XI WHT7 ____ ____ YLQ4 ____ O2S6 Q4YL V9U8 ____ T7WH ';
   k157x6 :='V9V9 ZMQ4 T7O2 ____ R5YL WHU8 ____ ____ YLR5 ____ ____ Q4ZM ';
   k1j6y7 :='____ R5XI WHT7 ____ U8V9 YLQ4 ____ O2S6 Q4YL V9U8 ____ ____ ';
   k257x1 :='YLR5 ____ O2T7 Q4ZM V9V9 ZMQ4 ____ ____ R5YL WHU8 ____ ____ ';
   k25x17 :='____ S6XI O2T7 Q4ZM V9V9 ZMQ4 ____ ____ R5YL WHU8 ____ ____ ';
   k2j5x1 :='____ ____ O2T7 Q4ZM V9V9 ZMQ4 T7O2 ____ ____ WHU8 ____ U8WH ';
   k2j5y6 :='YLR5 ____ ____ Q4ZM V9V9 ZMQ4 T7O2 XIS6 ____ ____ ____ U8WH ';
   k345x2 :='XIR5 ____ ____ ____ U8V9 YLQ4 S6O2 ____ Q4YL V9U8 ____ T7WH ';
   n167x4 :='V9U8 ____ ____ XIR5 ____ WHT7 ____ U8V9 YLQ4 S6O2 ____ Q4YL ';
   n345y7 :='____ R5XI ____ ____ U8V9 YLQ4 ____ O2S6 Q4YL V9U8 ____ T7WH ';
  j2k56x4 :='V9V9 ZMQ4 ____ ____ R5YL ____ ____ U8WH YLR5 ____ O2T7 Q4ZM ';
  j3k56x4 :='V9O2 ____ T7YL XZM8 ____ ____ ____ U8XI YLT7 ____ O2V9 Q4Q4 ';
  k1j56y7 :='____ U8XI YLT7 ____ O2V9 Q4Q4 V9O2 ____ T7YL XZM8 ____ ____ ';
  k2j56y7 :='YLR5 ____ ____ Q4ZM V9V9 ZMQ4 T7O2 ____ R5YL WHU8 ____ ____ ';
end;


finalization


end.


