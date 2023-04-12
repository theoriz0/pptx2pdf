set "ppt_dir=C:\ppt"
for %%a in ("%ppt_dir%\*pptx" "%ppt_dir%\*ppt") do (
  echo %%a
  call pptx2pdf.bat "%%~fa" "%%~dpna.pdf"
)