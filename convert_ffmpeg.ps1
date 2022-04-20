$foldre=Get-ChildItem -Recurse -Force | Where {$_.Extension -eq '.flac'}

foreach($item in $foldre){


$menoi=$item.Name

$meno=$item.BaseName
$out= -join("$meno", ".", "wav")



ffmpeg -i $menoi $out

Remove-Item $menoi

}