# 200 Bash Scripting Tasks for Cloud Engineers

This document outlines 200 Bash scripting tasks, categorized from basic to intermediate to advanced, suitable for individuals aiming to become proficient in Bash for cloud engineering tasks.

> Note: This repository currently contains implemented scripts for Basic-Level tasks 1-60 under `Tasks/Basic-Level/`. The remaining tasks are listed as a roadmap.

## Start Here (Absolute Beginner)

If you are new to Bash, complete tasks in order from 1 onward.

1. Read each task statement first.
2. Run the matching script from `Tasks/Basic-Level/`.
3. Edit the script and experiment with small changes.
4. Move to the next task only after you understand the current one.

This challenge is designed to start from the very beginning and build confidence step by step.

---

## Phase 1: Basic Level (Tasks 1-70)

**[Understanding the Basics : ](https://github.com/vivs-ty/Bash/tree/main/Tasks/Phase_1_Basic-Level)**

1.  [Print "Hello, Cloud!" to the console](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/1st.sh).
2.  [Print the current date and time](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/2nd.sh).
3.  [Display the username of the current user](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/3rd.sh).
4.  [Show the current working directory](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/4th.sh).
5.  [Navigate to the `/tmp` directory](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/5th.sh).
6.  [Go back to the previous directory](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/6th.sh).
7.  [Return to the home directory](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/7th.sh).
8.  [List all files and directories in the current directory](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/8th.sh).
9.  [List files with detailed information (permissions, owner, size)](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/9th.sh).
10. [List hidden files and directories](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/10th.sh).
11. [Create a new directory named `cloud_scripts`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/11th.sh).
12. [Create multiple directories at once: `infra`, `monitoring`, `deployment`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/12th.sh).
13. [Create an empty file named `server.log`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/13th.sh).
14. [Create multiple empty files: `app.config`, `database.config`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/14th.sh).
15. [Copy `server.log` to `server.log.backup`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/15th.sh).
16. [Copy the entire `cloud_scripts` directory to `backup_scripts`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/16th.sh).
17. [Move `app.config` to the `infra` directory](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/17th.sh).
18. [Rename `database.config` to `db.config`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/18th.sh).
19. [Remove the empty file `server.log`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/19th.sh).
20. [Remove the `backup_scripts` directory and its contents](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/20th.sh). (Use with caution!)
21. [Display the content of `app.config`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/21st.sh).
22. [Display the first 10 lines of `server.log`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/22nd.sh).
23. [Display the last 5 lines of `db.config`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/23rd.sh).
24. [Display the content of `server.log` page by page](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/24th.sh).
25. [Search for the word "error" in `server.log`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/25th.sh).
26. [Search for lines containing "INFO" in `app.config` (case-insensitive)](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/26th.sh).
27. [Count the number of lines in `db.config`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/27th.sh).
28. [Count the number of files in the current directory](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/28th.sh).
29. [Create a variable named `REGION` and assign it the value `us-east-1`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/29th.sh).
30. [Print the value of the `REGION` variable](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/30th.sh).
31. [Get user input for a server name and store it in a variable](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/31st.sh).
32. [Print a message using the server name entered by the user](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/32nd.sh).
33. [Check if a file named `data.txt` exists](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/33rd.sh).
34. [Check if a directory named `logs` exists](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/34th.sh).
35. [Check if a file is readable](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/35th.sh).
36. [Check if a file is writable](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/36th.sh).
37. [Check if a file is executable](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/37th.sh).
38. [Use an `if` statement to print "File exists" if `config.ini` exists](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/38th.sh).
39. [Use an `if-else` statement to print whether a given number is positive or non-positive](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/39th.sh).
40. [Use `elif` to check if a status code is 200, 404, or something else](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/40th.sh).
41. [Use the `test` command to check if a string is empty](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/41st.sh).
42. [Use the `test` command to compare two numbers](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/42nd.sh).
43. [Create a `for` loop to print numbers from 1 to 5](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/43rd.sh).
44. [Create a `for` loop to iterate over a list of cloud providers: AWS, Azure, GCP](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/44th.sh).
45. [Create a `for` loop to process all `.log` files in the current directory](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/45th.sh).
46. [Create a `while` loop that counts down from 10 to 1](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/46th.sh).
47. [Create a `while` loop that reads lines from a file until the end is reached](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/47th.sh).
48. [Create an `until` loop that continues until a specific file is created](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/48th.sh).
49. [Define a function named `greet` that prints "Hello!"](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/49th.sh).
50. [Call the `greet` function](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/50th.sh).
51. [Define a function `check_file` that takes a filename as an argument and checks if it exists](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/51st.sh).
52. [Call the `check_file` function with `my_file.txt` as an argument](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/52nd.sh).
53. [Create a script named `my_script.sh` that prints "Script executed!"](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/53rd.sh).
54. [Make `my_script.sh` executable](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/54th.sh).
55. [Run `my_script.sh`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/55th.sh).
56. [Add the shebang line `#!/bin/bash` to `my_script.sh`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/56th.sh).
57. [Execute `my_script.sh` using `./my_script.sh`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/57th.sh).
58. [Create a script that takes a filename as a command-line argument and prints its content](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/58th.sh).
59. [Create a script that takes two numbers as arguments and prints their sum](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/59th.sh).
60. [Redirect the output of the `ls` command to a file named `file_list.txt`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/60th.sh).
61. [Append the output of the `date` command to `file_list.txt`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/61th.sh).
62. [Redirect the error output of a non-existent command to `error.log`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/62nd.sh).
63. [Pipe the output of `cat server.log` to `grep "warning"`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/63rd.sh).
64. [Pipe the output of `ls -l` to `grep "^-"` to list only files](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/64th.sh).
65. [Create a script that prompts the user for confirmation before deleting a file](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/65th.sh).
66. [Create a script that backs up all `.conf` files in a directory to a `backup` subdirectory](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/66th.sh).
67. [Create a script to monitor disk space and print a warning if it's below a certain threshold](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/67th.sh).
68. [Create a script to check the status of a web server using `curl`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/68th.sh).
69. [Create a script to ping a list of IP addresses and report their reachability](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/69th.sh).
70. [Write a script that creates a user account (you might need `sudo` for this, be cautious)](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_1_Basic-Level/70th.sh).

---

## Phase 2: Intermediate Level (Tasks 71-140)

**[Advanced File Operations and Text Processing:](https://github.com/vivs-ty/Bash/tree/main/Tasks/Phase_2_Intermediate-Level)**

71. [Find all files larger than 1MB in the `/var/log` directory](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/71st.sh).
72. [Find all files modified in the last 24 hours](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/72nd.sh).
73. [Find and delete all `.tmp` files recursively](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/73rd.sh). (Use with extreme caution!)
74. [Extract all unique IP addresses from an Apache access log](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/74th.sh).
75. [Count the occurrences of each HTTP status code in an Nginx access log](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/75th.sh).
76. [Replace all occurrences of "localhost" with "127.0.0.1" in a configuration file](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/76th.sh).
77. [Delete all blank lines from a text file](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/77th.sh).
78. [Extract specific columns (e.g., timestamp and request method) from a web server log using `awk`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/78th.sh).
79. [Calculate the total size of all files in a directory using `du` and `awk`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/79th.sh).
80. [Sort the lines of a file alphabetically](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/80th.sh).
81. [Remove duplicate lines from a file](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/81st.sh).
82. [Split a large file into smaller files of a specific size](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/82nd.sh).
83. [Compare two files and output the differences](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/83rd.sh).
84. [Apply a patch file to a configuration file](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/84th.sh).
85. [Create an archive of a directory using `tar`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/85th.sh).
86. [Extract the contents of a `tar.gz` archive](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/86th.sh).
87. [Compress a file using `gzip`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/87th.sh).
88. [Decompress a `.gz` file](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/88th.sh).
89. [Use `sed` to insert a line at the beginning of a file](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/89th.sh).
90. [Use `sed` to append a line at the end of a file](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/90th.sh).

**[Process Management and System Information:](https://github.com/vivs-ty/Bash/tree/main/Tasks/Phase_2_Intermediate-Level)**

91. [List all running processes owned by a specific user](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/91st.sh).
92. [Find the process ID (PID) of a process by its name](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/92nd.sh) (e.g., `nginx`).
93. [Kill a process by its PID](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/93rd.sh).
94. [Kill all processes with a specific name](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/94th.sh). (Use with caution!)
95. [Monitor the CPU and memory usage of the top 5 processes in real-time using `top`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/95th.sh).
96. [Write a script to automatically restart a failed service](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/96th.sh).
97. [Get the hostname and IP address of the current machine](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/97th.sh).
98. [Display the amount of free and used memory](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/98th.sh).
99. [Display the disk space usage for all mounted file systems](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/99th.sh).
100. [Get the system uptime](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/100th.sh).

**[Scheduling with Cron:](https://github.com/vivs-ty/Bash/tree/main/Tasks/Phase_2_Intermediate-Level)**

101. [Schedule a script to run every day at midnight](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/101th.sh).
102. [Schedule a script to run every hour](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/102nd.sh).
103. [Schedule a script to run every Monday at 9 AM](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/103rd.sh).
104. [Schedule a script to run on the 15th of every month](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/104th.sh).
105. [Redirect the output of a cron job to a log file](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/105th.sh).
106. [Prevent email notifications from a cron job](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/106th.sh).
107. [List all cron jobs for the current user](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/107th.sh).
108. [Remove a specific cron job](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/108th.sh).
109. [Create a script that adds a new cron job to back up a directory daily](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/109th.sh).
110. [Create a script that checks if a cron job ran successfully by examining its log file](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/110th.sh).

**[Environment Variables and Profiles:](https://github.com/vivs-ty/Bash/tree/main/Tasks/Phase_2_Intermediate-Level)**

111. [Set an environment variable temporarily in the current shell](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/111st.sh).
112. [Set an environment variable permanently for the current user](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/112nd.sh).
113. [Add a directory to the `PATH` environment variable temporarily](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/113rd.sh).
114. [Add a directory to the `PATH` environment variable permanently](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/114th.sh).
115. [Create an alias for a frequently used command](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/115th.sh).
116. [Define a custom function in your `.bashrc` or `.bash_profile`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/116th.sh).
117. [Understand the order in which Bash profile files are loaded](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/117th.sh).
118. [Create a script that reads environment variables for cloud credentials](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/118th.sh) (e.g., `AWS_ACCESS_KEY_ID`).
119. [Use `.env` files and `source` them in a script](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/119th.sh).
120. [Write a script to switch between different sets of environment variables](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/120th.sh).

**[Basic Cloud CLI Interaction (Simulated or Local)](https://github.com/vivs-ty/Bash/tree/main/Tasks/Phase_2_Intermediate-Level):**

121. [Simulate listing "instances"](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/121st.sh) (e.g., by listing files in a directory).
122. [Simulate starting an "instance"](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/122nd.sh) (e.g., by creating an empty file).
123. [Simulate stopping an "instance"](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/123rd.sh) (e.g., by deleting a file).
124. [Simulate getting the "status" of an "instance"](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/124th.sh) (e.g., by checking if a file exists).
125. [Create a script to simulate deploying a simple "application"](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/125th.sh) (e.g., copying files to a target directory).

**[Error Handling and Script Logic:](https://github.com/vivs-ty/Bash/tree/main/Tasks/Phase_2_Intermediate-Level)**

126. [Use `set -e` to make a script exit immediately on error](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/126th.sh).
127. [Use `set -x` to debug a script by showing executed commands](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/127th.sh).
128. [Implement basic error checking in a script](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/128th.sh) (e.g., checking if a command succeeded).
129. [Use `if` statements to handle different scenarios based on command exit codes](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/129th.sh).
130. [Use the `trap` command to handle script termination signals](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/130th.sh) (e.g., `Ctrl+C`).
131. [Create a script that logs errors to a separate log file](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/131th.sh).
132. [Implement a retry mechanism for a potentially failing command](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/132nd.sh).
133. [Validate user input in a script](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/133rd.sh).
134. [Create a script that checks for dependencies before running](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/134th.sh).
135. [Write a script that uses a configuration file to define settings](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/135th.sh).
136. [Parse command-line options using `getopt` or similar methods](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/136th.sh).
137. [Create a simple menu-driven script](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/137th.sh).
138. [Write a script that uses a loop to perform an action on multiple files or resources](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/138th.sh).
139. [Implement a basic locking mechanism to prevent concurrent execution of a script](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/139th.sh).
140. [Write a script that sends an email notification upon completion or failure](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_2_Intermediate-Level/140th.sh).

---

## Phase 3: Advanced Level (Tasks 141-200)

**[Cloud CLI Integration](https://github.com/vivs-ty/Bash/tree/main/Tasks/Phase_3_Advance-Level) (AWS CLI, Azure CLI, gcloud - Assuming you have access and credentials configured):**

141. [Use AWS CLI to list all EC2 instances in a specific region](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/141th.sh).
142. [Use AWS CLI to start and stop an EC2 instance by its ID](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/142nd.sh).
143. [Use AWS CLI to get details about a specific S3 bucket](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/143rd.sh).
144. [Use AWS CLI to upload a file to an S3 bucket](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/144th.sh).
145. [Use AWS CLI to list all IAM users](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/145th.sh).
146. [Use Azure CLI to list all resource groups](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/146th.sh).
147. [Use Azure CLI to create and delete a virtual machine](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/147th.sh).
148. [Use Azure CLI to list storage accounts](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/148th.sh).
149. [Use Azure CLI to create a blob container](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/149th.sh).
150. [Use gcloud to list all compute instances in a project](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/150th.sh).
151. [Use gcloud to create and delete a firewall rule](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/151st.sh).
152. [Use gcloud to list all Cloud Storage buckets](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/152nd.sh).
153. [Use gcloud to deploy a Cloud Function](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/153rd.sh).
154. [Write a script to automate the backup of EC2 volumes using AWS CLI](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/154th.sh).
155. [Write a script to deploy a static website to S3 using AWS CLI](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/155th.sh).
156. [Write a script to create a new Azure Container Registry using Azure CLI](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/156th.sh).
157. [Write a script to deploy an ARM template using Azure CLI](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/157th.sh).
158. [Write a script to create a new Google Compute Engine instance with specific configurations using `gcloud`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/158th.sh).
159. [Write a script to automate database backups to Google Cloud Storage using `gcloud`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/159th.sh).
160. [Parse JSON output from cloud CLIs using `jq` to extract specific information](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/160th.sh).

**[Automating Infrastructure](https://github.com/vivs-ty/Bash/tree/main/Tasks/Phase_3_Advance-Level) (e.g., Terraform with Bash - Assuming Terraform is installed):**

161. [Write a Bash script to initialize a Terraform project (`terraform init`)](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/161st.sh).
162. [Write a Bash script to run `terraform plan` and save the output](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/162nd.sh).
163. [Write a Bash script to apply the Terraform configuration (`terraform apply --auto-approve`)](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/163rd.sh).
164. [Write a Bash script to destroy the Terraform managed infrastructure (`terraform destroy --auto-approve`)](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/164th.sh).
165. [Create a Bash script that takes environment names (dev, staging, prod) as input and applies the corresponding Terraform configuration](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/165th.sh).
166. [Dynamically generate Terraform variable files (`.tfvars`) using Bash based on environment](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/166th.sh).
167. [Use Bash to loop through a list of regions and deploy infrastructure using Terraform in each region](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/167th.sh).
168. [Extract output values from Terraform and use them in subsequent Bash commands](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/168th.sh).
169. [Implement error handling for Terraform commands within a Bash script](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/169th.sh).
170. [Create a script to automatically update Terraform providers](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/170th.sh).

**[Networking Tools:](https://github.com/vivs-ty/Bash/tree/main/Tasks/Phase_3_Advance-Level)**

171. [Use `ping` to check the latency to multiple hosts and report the average](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/171st.sh).
172. [Use `curl` to download a file and check its HTTP status code](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/172nd.sh).
173. [Use `curl` to send a POST request to an API endpoint with JSON data](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/173rd.sh).
174. [Use `curl` to interact with an API that requires authentication](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/174th.sh) (e.g., Basic Auth, API keys).
175. [Use `netstat` (or `ss`) to list all listening ports on a server](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/175th.sh).
176. [Use `netstat` (or `ss`) to find the process using a specific port](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/176th.sh).
177. [Write a script to check if a list of ports is open on a remote host using `nc` or `nmap`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/177th.sh).
178. [Use `dig` or `nslookup` to query DNS records](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/178th.sh).
179. [Automate network diagnostics by combining `ping`, `traceroute`, and `netstat`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/179th.sh).
180. [Write a script to monitor network interface statistics](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/180th.sh).

**[APIs with curl and jq:](https://github.com/vivs-ty/Bash/tree/main/Tasks/Phase_3_Advance-Level)**

181. [Fetch data from a public REST API using `curl`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/181st.sh).
182. [Parse specific data fields from a JSON API response using `jq`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/182nd.sh).
183. [Send a PUT request to update a resource via an API using `curl` and `jq`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/183rd.sh).
184. [Send a DELETE request to remove a resource via an API](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/184th.sh).
185. [Implement pagination handling when fetching data from APIs](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/185th.sh).
186. [Handle different HTTP response codes in your API interaction scripts](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/186th.sh).
187. [Securely pass API keys or tokens using environment variables or other secure methods with `curl`](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/187th.sh).
188. [Construct complex JSON payloads for API requests using Bash string manipulation or external tools](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/188th.sh).
189. [Write a script to monitor the status of multiple API endpoints](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/189th.sh).
190. [Transform data retrieved from one API and send it to another](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/190th.sh).

**[Error Handling and Debugging](https://github.com/vivs-ty/Bash/tree/main/Tasks/Phase_3_Advance-Level) (Advanced):**

191. [Implement custom error messages and logging with timestamps](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/191st.sh).
192. [Use `trap` to handle specific signals like `SIGINT` and perform cleanup actions](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/192nd.sh).
193. [Create a robust error handling function that takes an error message and exit code](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/193rd.sh).
194. [Use conditional debugging output based on a script argument or environment variable](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/194th.sh).
195. [Implement a rollback mechanism in case of script failure during critical operations](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/195th.sh).
196. [Use `set -o pipefail` to ensure that a script exits if any command in a pipeline fails](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/196th.sh).
197. [Write a script to automatically collect and report error logs](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/197th.sh).
198. [Use `shellcheck` to statically analyze your Bash scripts for potential issues](https://github.com/vivs-ty/Bash/blob/main/Tasks/Phase_3_Advance-Level/198th.sh).

**Creating Reusable Bash Libraries:**

199. Create a library of common functions for string manipulation, file operations, and API interactions in separate `.sh` files and source them in your main scripts.
200. Develop a modular Bash framework for deploying and managing cloud resources, utilizing functions and configuration files for reusability and maintainability.

---
