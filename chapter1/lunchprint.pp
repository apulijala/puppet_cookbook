define lunchprint() {
	notify {"Lunch inlcuded ${title}" : }
}

lunchprint {
	"Eggs" : 
}

$items = [ "eggs", "Beans", "Chips"]
lunchprint {
   $items: 
}
