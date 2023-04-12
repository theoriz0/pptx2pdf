@if (@X)==(@Y) @end /* JScript comment
    @echo off

    cscript //E:JScript //nologo "%~f0" %*

    exit /b %errorlevel%
    
@if (@X)==(@Y) @end JScript comment */

var source=WScript.Arguments.Item(0);
var target=WScript.Arguments.Item(1);
PP = new ActiveXObject("PowerPoint.Application");
PRSNT = PP.presentations.Open(source,0,0,0)
//PRSNT.SaveCopyAs(target,32);
//https://msdn.microsoft.com/en-us/vba/powerpoint-vba/articles/ppsaveasfiletype-enumeration-powerpoint
PRSNT.SaveAs(target,32);
PRSNT.Close();
PP.Quit();