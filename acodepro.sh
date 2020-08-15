export code_source=$1

echo Running Acode...

rm ~/storage/shared/.acode_tmp/*.* -fr

mkdir ~/storage/shared/.acode_tmp/ -p

cp $code_source ~/storage/shared/.acode_tmp/ -f

export code_source=$(basename $code_source)

am start --user 0 -n com.foxdebug.acode/com.foxdebug.acode.MainActivity -a android.intent.action.SEND -t text/plain -d "file:///sdcard/.acode_tmp/"$code_source
