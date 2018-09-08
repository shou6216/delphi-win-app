unit SubModule;

interface

  function getMessage(param1: Integer; param2: Integer): String;

implementation

  function getMessage(param1: Integer; param2: Integer): String;
  begin
    if param1 >= 100 then
      Result := 'AAAAAAAAAAAAAAAA'

    else if param2 >= 200 then
      Result := 'BBBBBBBBBBBBBBBB'

    else
      Result := 'CCCC';
  end;

end.
