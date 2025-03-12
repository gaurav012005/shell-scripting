
function is_loyal(){

read -p "$1 ne mud ke kise dekha:  " bandi
read -p "$2 ka pyaar % " pyaar

if [[ $band == " bhabhi " ]];
then
echo "$1 is loyal "
elif [[ $pyaar -ge 100 ]];
then
	echo "$1 is loyal "
else
	echo " $2 is not loyal "
fi
}

is_loyal "tom"
