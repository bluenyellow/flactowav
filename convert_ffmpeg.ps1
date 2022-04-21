$foldre=Get-ChildItem -Recurse -Force | Where {$_.Extension -eq '.flac'}

foreach($item in $foldre){


$menoi=$item.FullName

$meno=$item.BaseName
$preout=$item.Directory.FullName
$out= -join("$preout","\","$meno", ".", "wav")



C:\Users\adamica\Documents\ffmpeg-master-latest-win64-gpl\ffmpeg-master-latest-win64-gpl\bin\ffmpeg.exe -i $menoi $out

Remove-Item -LiteralPath $menoi

}
