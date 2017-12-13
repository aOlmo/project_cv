
N=$3
type_img=$2
place=$1

echo $N
echo $type_img
echo $place

c=0
ls *.png |sort -R |tail -$N |while read file; do
	mv $file ../../$place/$type_img/
	if [ "$c" == "$counter" ]
	then
		echo "Breaking execution..."
		echo $c
		break
	fi
	((c++))
done
