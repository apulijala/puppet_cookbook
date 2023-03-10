define breakfast() {
	notify {"Today's breakfast is ${title}": }
}

$breakfast = "cheese:lemon,rice"
$breakfast_items = split($breakfast, ":|,")
breakfast {
    $breakfast_items:
}
