function binarySearch(array, value, from, to) {
	if (to === null) {
		to = array.length - 1;
	}

  if (from > to) {
    return "Value not found";
  }

	mid = Math.floor((from + to) / 2);

	if (array[mid] > value) {
		return binarySearch(array, value, from, mid - 1);
	} else if (array[mid] < value) {
		return binarySearch(array, value, mid + 1, to);
	} else {
		return mid;
	}
}
