{$MODE FPC}{$R+}
program Prytania;

uses
  Coliseum;

var
  item : Byte;
  prop : TDzongkha;

begin (* Main *)

  if ParamCount < 1 then Menu;

  for item := 1 to ParamCount do
  begin
    prop := ParamStr(item);

    if Length(prop) < 2 then
    begin
      Menu;
      WriteLn;
      Exit;
    end;

    EADGBE(prop, Retrieve(prop));
  end;

  WriteLn;

end. (* Main *)


