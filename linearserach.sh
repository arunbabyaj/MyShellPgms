read -p "Enter number of items: " count
i=0
while [ $i -lt $count ]
do
    read -e -p "Enter number `expr $i + 1 ` : " numbers[$i]
    i=`expr $i + 1`
done

read -p "Enter item to be searched: " search_item
i=0
flag=0
while [ $i -lt $count ]
do
    if [ ${numbers[$i]} -eq $search_item ]
    then
        echo "Iterm found at position `expr $i + 1 ` in the array"
        flag=1
        break
    fi
    i=`expr $i + 1`
done

if [ $flag -eq 0 ]
then
    echo "Search item not found !"
fi