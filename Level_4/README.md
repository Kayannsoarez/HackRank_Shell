### Problem_31:
In this challenge, we practice using the sort command to sort input in text or TSV formats. You are given a text file where each line contains a number. The numbers may be either an integer or have decimal places. There will be no extra characters other than the number or the newline at the end of each line. Sort the lines in ascending order - so that the first line holds the numerically smallest number, and the last line holds the numerically largest number.

### Problem_32:
You are given a file of text, where each line contains a number (which may be either an integer or have decimal places). There will be no extra characters other than the number or the newline at the end of each line. Sort the lines in descending order - - such that the first line holds the (numerically) largest number and the last line holds the (numerically) smallest number.

### Problem_33:
You are given a file of text, which contains temperature information about American cities, in TSV (tab-separated) format. The first column is the name of the city and the next four columns are the average temperature in the months of Jan, Feb, March and April (see the sample input). Rearrange the rows of the table in descending order of the values for the average temperature in January.

### Problem_34:
You are given a file of tab separated weather data (TSV). There is no header column in this data file. The first five columns of this data are: (a) the name of the city (b) the average monthly temperature in Jan (in Fahreneit). (c) the average monthly temperature in April (in Fahreneit). (d) the average monthly temperature in July (in Fahreneit). (e) the average monthly temperature in October (in Fahreneit). You need to sort this file in ascending order of the second column (i.e. the average monthly temperature in January).

### Problem_35:
You are given a file of pipe-delimited weather data (TSV). There is no header column in this data file. The first five columns of this data are: (a) the name of the city (b) the average monthly temperature in Jan (in Fahreneit). (c) the average monthly temperature in April (in Fahreneit). (d) the average monthly temperature in July (in Fahreneit). (e) the average monthly temperature in October (in Fahreneit). You need to sort this file in descending order of the second column (i.e. the average monthly temperature in January).

### Problem_36:
In this challenge, we practice using the uniq command to eliminate consecutive repetitions of a line when a text file is piped through it. Given a text file, remove the consecutive repetitions of any line.

### Problem_37:
In this challenge, we practice using the uniq command to eliminate consecutive repetitions of a line when a text file is piped through it. Given a text file, count the number of times each line repeats itself. Only consider consecutive repetitions. Display the space separated count and line, respectively. There shouldn't be any leading or trailing spaces. Please note that the uniq -c command by itself will generate the output in a different format than the one expected here.

### Problem_38:
Given a text file, count the number of times each line repeats itself (only consider consecutive repetions). Display the count and the line, separated by a space. There shouldn't be leading or trailing spaces. Please note that the uniq -c command by itself will generate the output in a different format. This time, compare consecutive lines in a case insensitive manner. So, if a line X is followed by case variants, the output should count all of them as the same (but display only the form X in the second column). So, as you might observe in the case below: aa, AA and Aa are all counted as instances of 'aa'.

### Problem_39:
Given a text file, display only those lines which are not followed or preceded by identical replications.

### Problem_40:
Given a CSV file where each row contains the name of a city and its state separated by a comma, your task is to replace the newlines in the file with tabs as demonstrated in the sample.
