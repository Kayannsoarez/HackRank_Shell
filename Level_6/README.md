### Problem_51:
There are N integers in an array A. All but one integer occur in pairs. Your task is to find the number that occurs only once.

### Problem_52:
You are provided a file with four space-separated columns containing the scores of students in three subjects. The first column, contains a single character (A-Z) - the identifier of the student. The next three columns have three numbers (each between 0 and 100, both inclusive) which are the scores of the students in English, Mathematics and Science respectively. Your task is to identify the performance grade for each student. If the average of the three scores is 80 or more, the grade is 'A'. If the average is 60 or above, but less than 80, the grade is 'B'. If the average is 50 or above, but less than 60, the grade is 'C'. Otherwise the grade is 'FAIL'.

### Problem_53:
You are provided a file with four space-separated columns containing the scores of students in three subjects. The first column, contains a single character (A-Z) - the identifier of the student. The next three columns have three numbers (each between 0 and 100, both inclusive) which are the scores of the students in English, Mathematics and Science respectively.

### Problem_54:
You are given a text file that will be piped into your command through STDIN. Use grep to display all the lines that contain the word the in them. The search should be sensitive to case. Display only those lines of the input file that contain the word 'the'.

### Problem_55:
You are given a text file that will be piped into your command through STDIN. Use grep to display all those lines that contain the word the in them. The search should NOT be sensitive to case. Display only those lines of the input file that contain the word 'the'.

### Problem_56:
You are given a text file that will be piped into your command through STDIN. Use grep to remove all those lines that contain the word 'that'. The search should NOT be sensitive to case.

### Problem_57:
Given a text file, which will be piped to your command through STDIN, use grep to display all those lines which contain any of the following words in them: (the, that, then, those). The search should not be sensitive to case. Display only those lines of an input file, which contain the required words.

### Problem_58:
Given an input file, with N credit card numbers, each in a new line, your task is to grep out and output only those credit card numbers which have two or more consecutive occurences of the same digit (which may be separated by a space, if they are in different segments). Assume that the credit card numbers will have 4 space separated segments with 4 digits each. If the credit card number is 1434 5678 9101 1234, there are two consecutive instances of 1 (though) as highlighted in box brackets: 1434 5678 910[1] [1]234. Here are some credit card numbers where consecutively repeated digits have been highlighted in box brackets. The last case does not have any repeated digits: 
1234 5678 910[1] [1]234
2[9][9][9] 5178 9101 [2][2]34
[9][9][9][9] 5628 920[1] [1]232
8482 3678 9102 1232

### Problem_59:
For each line in a given input file, transform the first occurrence of the word 'the' with 'this'. The search and transformation should be strictly case sensitive.

### Problem_60:
For each line in a given input file, transform all the occurrences of the word 'thy' with 'your'. The search should be case insensitive, i.e. 'thy', 'Thy', 'tHy' etc. should be transformed to 'your'.
