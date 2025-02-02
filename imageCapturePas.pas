unit imageCapturePas;

interface
procedure fx_imageCapture(Sender: TObject; FormName: string);


implementation
  //IniFiles is for Tinifiles initialization...........

  uses MMSystem, IniFiles,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Imaging.jpeg,
  ShellAPI, Vcl.ExtCtrls, empPas, dmPas;


procedure fx_imageCapture(Sender: TObject; FormName: string);
var
  ExePath, Params, Path, FrameFilePath, mess: string;
  Settings: TIniFile;
  CAMDELAY, CDelay, cWid, cHei: Integer;

begin
  // Initialize default values
  CAMDELAY:= 1000;
  Path := ExtractFilePath(Application.ExeName);
  Settings := TIniFile.Create(Path + 'camera/app.ini');
  try
    mess := Settings.ReadString('CAMERA', 'message', '');
    // Read settings from ini file
    CDelay := Settings.ReadInteger('CAMERA', 'display', 1000);
    cWid := Settings.ReadInteger('CAMERA', 'width', 0);
    cHei := Settings.ReadInteger('CAMERA', 'height', 0);
    cDelay := Settings.ReadInteger('CAMERA', 'delay', 500);
  finally
    Settings.Free;
  end;


      // Prepare parameters for GetShot.exe
      if (cWid > 0) and (cHei > 0) then
        Params := Format('/delay %d /width %d /height %d /preview /bmp', [CDelay, cWid, cHei])
        //Params := Format('/delay %d /width %d /height %d /bmp', [CDelay, cWid, cHei])
      else
        Params := Format('/delay %d /preview /bmp', [CDelay]);
        //Params := Format('/delay %d /bmp', [CDelay]);
      ExePath := ExtractFilePath(ParamStr(0)) +'camera/GetShot.exe';

      // Play camera sound
      PlaySound(PChar(Path + 'Audio\camera.wav'), 0, SND_FILENAME or SND_ASYNC);

      // Execute GetShot.exe
      ShellExecute(0, 'open', PChar(ExePath), PChar(Params), PChar(Path), SW_SHOWNORMAL);

      Sleep(CAMDELAY + 1000); // Add a small additional delay to ensure file availability
      // Determine the path of the latest captured frame
      FrameFilePath := Path + 'frame.bmp';

      // Load the captured image
      if FileExists(FrameFilePath) then
      begin
        if FormName = 'Employee' then
        begin
          frmEmp.fldPhoto.Picture.LoadFromFile(FrameFilePath);
          frmEmp.fldPhoto.Repaint;
        end;

        // Indicate that the image has changed
        frmEmp.fldPhoto.Tag := 0; // Using Tag to indicate change, or create a custom property if necessary
      end
      else
      begin
        ShowMessage('Failed to load captured image: ' + FrameFilePath);
        // Optionally handle failure to load image
      end;

end;

end.
