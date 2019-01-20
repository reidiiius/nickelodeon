{$MODE FPC}{$R+}
unit Coliseum;

interface

uses
  DateUtils, SysUtils;

type
  TDzongkha = String[20];
  TSumarian = String[60];

var
  Epoch : Int64;
  Diadem, Head, Tail : TSumarian;

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
    n345, n345y7, n45y2, n5y2, n67x2, n6x2 : TSumarian;
  end;


function Retrieve(const sign: TDzongkha) : TSumarian;

function S_Bj(const qp: TSumarian) : TSumarian;

function S_Fn(const qp: TSumarian) : TSumarian;

function S_Cn(const qp: TSumarian) : TSumarian;

function S_Gn(const qp: TSumarian) : TSumarian;

function S_Dn(const qp: TSumarian) : TSumarian;

function S_An(const qp: TSumarian) : TSumarian;

function S_En(const qp: TSumarian) : TSumarian;

function S_Bn(const qp: TSumarian) : TSumarian;

function S_Fk(const qp: TSumarian) : TSumarian;

function Announce(const qp: TSumarian) : ShortString;

function Sentinel(const qp: TSumarian) : Boolean;


procedure CGDAE(const sign: TDzongkha; const qp: TSumarian);

procedure EADGBE(const sign: TDzongkha; const qp: TSumarian);

procedure Ennead(const sign: TDzongkha; const qp: TSumarian);

procedure Menu;


implementation


function Retrieve(const sign: TDzongkha) : TSumarian;
var
  db : TSumarian = #0;

begin
  with DataBank do
  begin
    Case LowerCase(sign) of
      'j136y7'  : db := j136y7;
      'j167y2'  : db := j167y2;
      'j17'     : db := j17;
      'j17y2'   : db := j17y2;
      'j2'      : db := j2;
      'j23'     : db := j23;
      'j236'    : db := j236;
      'j23k6'   : db := j23k6;
      'j246y3'  : db := j246y3;
      'j25'     : db := j25;
      'j256'    : db := j256;
      'j25y6'   : db := j25y6;
      'j26'     : db := j26;
      'j26y3'   : db := j26y3;
      'j26y34'  : db := j26y34;
      'j2k34'   : db := j2k34;
      'j2k5'    : db := j2k5;
      'j2k56'   : db := j2k56;
      'j2k56x4' : db := j2k56x4;
      'j2k6'    : db := j2k6;
      'j2k6x5'  : db := j2k6x5;
      'j2k6y3'  : db := j2k6y3;
      'j2y3'    : db := j2y3;
      'j3'      : db := j3;
      'j346y5'  : db := j346y5;
      'j34k6'   : db := j34k6;
      'j36'     : db := j36;
      'j3k5'    : db := j3k5;
      'j3k56x4' : db := j3k56x4;
      'j3k5x4'  : db := j3k5x4;
      'j3k6'    : db := j3k6;
      'j5'      : db := j5;
      'j56'     : db := j56;
      'j56y7'   : db := j56y7;
      'j5y6'    : db := j5y6;
      'j6'      : db := j6;
      'k1'      : db := k1;
      'k12'     : db := k12;
      'k125'    : db := k125;
      'k12j5'   : db := k12j5;
      'k135x4'  : db := k135x4;
      'k15'     : db := k15;
      'k157x6'  : db := k157x6;
      'k17j5'   : db := k17j5;
      'k1j5'    : db := k1j5;
      'k1j56y7' : db := k1j56y7;
      'k1j6'    : db := k1j6;
      'k1j6y7'  : db := k1j6y7;
      'k2'      : db := k2;
      'k25'     : db := k25;
      'k256'    : db := k256;
      'k257x1'  : db := k257x1;
      'k25x1'   : db := k25x1;
      'k25x17'  : db := k25x17;
      'k26'     : db := k26;
      'k26x5'   : db := k26x5;
      'k2j17'   : db := k2j17;
      'k2j5'    : db := k2j5;
      'k2j56'   : db := k2j56;
      'k2j56y7' : db := k2j56y7;
      'k2j5x1'  : db := k2j5x1;
      'k2j5y6'  : db := k2j5y6;
      'k2j6'    : db := k2j6;
      'k2x1'    : db := k2x1;
      'k34'     : db := k34;
      'k345x2'  : db := k345x2;
      'k34x2'   : db := k34x2;
      'k5'      : db := k5;
      'k56'     : db := k56;
      'k56x4'   : db := k56x4;
      'k6'      : db := k6;
      'k6x5'    : db := k6x5;
      'n0'      : db := n0;
      'n167'    : db := n167;
      'n167x4'  : db := n167x4;
      'n25x6'   : db := n25x6;
      'n26y5'   : db := n26y5;
      'n345'    : db := n345;
      'n345y7'  : db := n345y7;
      'n345y2'  : db := n45y2;
      'n5y2'    : db := n5y2;
      'n67x2'   : db := n67x2;
      'n6x2'    : db := n6x2;
    else
      db := sign;
    end;
  end;
  Retrieve := db;
end;


function S_Bj(const qp: TSumarian) : TSumarian;
begin
  Head := Copy(qp, 51, 10);
  Tail := Copy(qp,  1, 50);
  S_Bj := Concat(Head, Tail);
end;


function S_Fn(const qp: TSumarian) : TSumarian;
begin
  Head := Copy(qp, 26, 35);
  Tail := Copy(qp,  1, 25);
  S_Fn := Concat(Head, Tail);
end;


function S_Cn(const qp: TSumarian) : TSumarian;
begin
  S_Cn := Copy(qp, 1, 60);
end;


function S_Gn(const qp: TSumarian) : TSumarian;
begin
  Head := Copy(qp, 36, 25);
  Tail := Copy(qp,  1, 35);
  S_Gn := Concat(Head, Tail);
end;


function S_Dn(const qp: TSumarian) : TSumarian;
begin
  Head := Copy(qp, 11, 50);
  Tail := Copy(qp,  1, 10);
  S_Dn := Concat(Head, Tail);
end;


function S_An(const qp: TSumarian) : TSumarian;
begin
  Head := Copy(qp, 46, 15);
  Tail := Copy(qp,  1, 45);
  S_An := Concat(Head, Tail);
end;


function S_En(const qp: TSumarian) : TSumarian;
begin
  Head := Copy(qp, 21, 40);
  Tail := Copy(qp,  1, 20);
  S_En := Concat(Head, Tail);
end;


function S_Bn(const qp: TSumarian) : TSumarian;
begin
  Head := Copy(qp, 56,  5);
  Tail := Copy(qp,  1, 55);
  S_Bn := Concat(Head, Tail);
end;


function S_Fk(const qp: TSumarian) : TSumarian;
begin
  Head := Copy(qp, 31, 30);
  Tail := Copy(qp,  1, 30);
  S_Fk := Concat(Head, Tail);
end;


function Announce(const qp: TSumarian) : ShortString;
var
  temporal : ShortString;

begin
  temporal := Format('%s%s%s', [#10#9, qp, '?']);
  Announce := temporal;
end;


function Sentinel(const qp: TSumarian) : Boolean;
begin
  if (Length(qp) <> 60) then
    Sentinel := True
  else
    Sentinel := False;
end;


procedure CGDAE(const sign: TDzongkha; const qp: TSumarian);
begin
  if Sentinel(qp) then
    begin
      WriteLn(Announce(qp));
      Exit;
    end;

  Diadem := Concat(sign, '-cgdae-m');
  WriteLn;
  WriteLn(#9, UpCase(Diadem), Epoch, #32);
  WriteLn(#9, S_En(qp));
  WriteLn(#9, S_An(qp));
  WriteLn(#9, S_Dn(qp));
  WriteLn(#9, S_Gn(qp));
  WriteLn(#9, S_Cn(qp));
end;


procedure EADGBE(const sign: TDzongkha; const qp: TSumarian);
begin
  if Sentinel(qp) then
    begin
      WriteLn(Announce(qp));
      Exit;
    end;

  Diadem := Concat(sign, '-eadgbe-m');
  WriteLn;
  WriteLn(#9, UpCase(Diadem), Epoch, #32);
  WriteLn(#9, S_En(qp));
  WriteLn(#9, S_Bn(qp));
  WriteLn(#9, S_Gn(qp));
  WriteLn(#9, S_Dn(qp));
  WriteLn(#9, S_An(qp));
  WriteLn(#9, S_En(qp));
end;


procedure Ennead(const sign: TDzongkha; const qp: TSumarian);
begin
  if Sentinel(qp) then
    begin
      WriteLn(Announce(qp));
      Exit;
    end;

  Diadem := Concat(sign, '-ennead-m');
  WriteLn;
  WriteLn(#9, UpCase(Diadem), Epoch, #32);
  WriteLn(#9, S_Bj(qp));
  WriteLn(#9, S_Fn(qp));
  WriteLn(#9, S_Cn(qp));
  WriteLn(#9, S_Gn(qp));
  WriteLn(#9, S_Dn(qp));
  WriteLn(#9, S_An(qp));
  WriteLn(#9, S_En(qp));
  WriteLn(#9, S_Bn(qp));
  WriteLn(#9, S_Fk(qp));
end;


procedure Menu;
var
  itr : Byte = 0;
  fmt : String[24] = #0;

begin
  while itr < 7 do
  begin
    fmt += Concat(#9, '%s');
    Inc(itr);
  end;

  WriteLn;
  Writeln(Format(fmt, ['j136y7','j167y2','j17','j17y2','j2','j23','j236']));
  WriteLn(Format(fmt, ['j23k6','j246y3','j26','j26y3','j26y34','j2k56','j2k56x4']));
  WriteLn(Format(fmt, ['j2k6','j2k6x5','j2k6y3','j2y3','j3','j34k6','j36']));
  WriteLn(Format(fmt, ['j3k56x4','j3k5x4','j3k6','j6','k157x6','k1j6','k256']));
  WriteLn(Format(fmt, ['k26','k26x5','k2j17','k2j6','k56','k56x4','k6']));
  WriteLn(Format(fmt, ['k6x5','n0','n167x4','n26y5','n345','n45y2','n5y2']));
  WriteLn;
  WriteLn(Format(fmt, ['k135x4','k345x2','k34','k34x2','k2','k12','k125']));
  WriteLn(Format(fmt, ['k12j5','k257x1','k25','k25x1','k25x17','k2j56','k2j56y7']));
  WriteLn(Format(fmt, ['k2j5','k2j5y6','k2j5x1','k2x1','k1','k17j5','k15']));
  WriteLn(Format(fmt, ['k1j56y7','k1j6y7','k1j5','k5','j346y5','j3k5','j256']));
  WriteLn(Format(fmt, ['j25','j25y6','j2k34','j2k5','j56','j56y7','j5']));
  WriteLn(Format(fmt, ['j5y6','n0','n345y7','n25x6','n167','n67x2','n6x2']));
end;


initialization


  Epoch := DateTimeToUnix(now);

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


