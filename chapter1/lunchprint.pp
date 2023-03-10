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

$food = "Cheese Tomato Bacon"
$new_items = split($food, " ")
lunchprint {
  $new_items : 
}
