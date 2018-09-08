unit Unit5;

interface
uses
  DUnitX.TestFramework, SubModule;

type

  [TestFixture]
  Unit5Test = class(TObject)
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure Test1;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA','100,2,AAAAAAAAAAAAAAAA')]
    [TestCase('TestB','10,200,BBBBBBBBBBBBBBBB')]
    [TestCase('TestC','10,20,CCCC')]
    procedure Test2(const param1 : Integer;const param2 : Integer;
      const expected: String);
  end;

implementation

procedure Unit5Test.Setup;
begin
end;

procedure Unit5Test.TearDown;
begin
end;

procedure Unit5Test.Test1;
begin
end;

procedure Unit5Test.Test2(const param1 : Integer;const param2 : Integer;
  const expected: String);
var
  actual: String;
begin
  actual := getMessage(param1, param2);
  Assert.AreEqual(expected, actual);
end;

initialization
  TDUnitX.RegisterTestFixture(Unit5Test);
end.
