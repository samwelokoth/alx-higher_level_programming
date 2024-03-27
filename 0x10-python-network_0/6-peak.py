def find_peaks(list_of_integers):
    peaks = []

    for i in range(len(list_of_integers)):
        if i == 0 and list_of_integers[i] >= list_of_integers[i+1]:
            peaks.append(list_of_integers[i])
        elif i == len(list_of_integers)-1 and list_of_integers[i] >= list_of_integers[i-1]:
            peaks.append(list_of_integers[i])
        else:
            if list_of_integers[i] >= list_of_integers[i-1] and list_of_integers[i] >= list_of_integers[i+1]:
                peaks.append(list_of_integers[i])
                
    return peaks


# Example usage
unsorted_array = [1, 3, 20, 4, 1, 0]
print("Peaks:", find_peaks(unsorted_array))
