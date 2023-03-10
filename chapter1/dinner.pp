define my_dinner() {
	notify  {"Dinner Included ${title}":}
}

my_dinner {
	"Chicken" : 
}

$dinner_string = "egg and beans and chips."
$dinner_items = split($dinner_string, " and ")
my_dinner {
 $dinner_items: 
}
