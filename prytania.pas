{$mode objfpc}{$R+}
program Prytania;

uses
  Coliseum in 'coliseum.pas';

var
  Item : Byte;
  Prop : String[16];

begin (* Main *)

  if ParamCount < 1 then Menu;

  for Item := 1 to ParamCount do
  begin
    Prop := ParamStr(Item);

    if length(Prop) < 2 then
    begin
      Menu;
      WriteLn;
      Exit;
    end;

    EADGBE(Prop, Retrieve(Prop));
  end;

  WriteLn;

end. (* Main *)


