# e-valuate
Evaluation portal for programming assessments, lab evaluations and MCQ quizzes. Supports C,C++ and Java.
Orgiginally made for the purpose of conducting lab assessments and tutorial tests in institutes.
![alt text](https://github.com/robovirmani/e-valuate/blob/master/ss/home.JPG)

# REQUIREMENTS
- Apache server
- MySQL Server
- CodeBlocks IDE
- JDK

# INSTALLATION
- Clone the repository
- Create databases : `evaluate1` , `evaluate2` & `mcq`
- Import `evaluate1.sql`, `evaluate2.sql` & `mcq.sql` from `db` folder into the respective databases
- Adjust MySQL connection settings in `config.php` , `connection.php` and `MCQ-in-PHP/dbconnection.php`
- For Admin : username - 'new' password - '1111' and For MCQ Admin : username - 'abcd@gmail.com' password - '1234567'
- Portal is now ready !

# FEATURES
- Basic Compiler page (custom input)<br/>
![alt text](https://github.com/robovirmani/e-valuate/blob/master/ss/compiler.JPG)
- Profile page (different for user and admin)<br/>
![alt text](https://github.com/robovirmani/e-valuate/blob/master/ss/profile.JPG)
- Admin can create new batches (name, date, start time, end time) and can add questions (name, description, test cases, expected output) from his dashboard<br/>
![alt text](https://github.com/robovirmani/e-valuate/blob/master/ss/newlab.JPG)
- User can only attempt the questions that are currently active
![alt text](https://github.com/robovirmani/e-valuate/blob/master/ss/contest.JPG)
- Submissions page and Rankings page for each batch (with graphs)
![alt text](https://github.com/robovirmani/e-valuate/blob/master/ss/standings.JPG)
![alt text](https://github.com/robovirmani/e-valuate/blob/master/ss/submissions.JPG)
- Practice page where questions are not marked, and are only for preparation.
- MCQ type quizzes can also be conducted from the Tutorial Tests section.
![alt text](https://github.com/robovirmani/e-valuate/blob/master/ss/quiz1.JPG)
- Number of questions, marks awarded, negative marks, time limit can be adjusted for each quiz.
![alt text](https://github.com/robovirmani/e-valuate/blob/master/ss/quiz3.JPG)
![alt text](https://github.com/robovirmani/e-valuate/blob/master/ss/quiz4.JPG)
- A user can only attempt a quiz once. No such boundation for admin.
- Submissions and Rankings page (with graphs)
![alt text](https://github.com/robovirmani/e-valuate/blob/master/ss/quiz2.JPG)

# INSTRUCTIONS
- Date format used : YYYY-MM-DD
- Time format used : HH:MM:SS
- LabID : integer only

# CONTRIBUTORS
* **Raghav Virmani** - [robovirmani](https://github.com/robovirmani)
* **Apoorv Lathey** - [CodinMaster](https://github.com/codinmaster)
* **Mayank Nagpal** - [mayankn05](https://github.com/mayankn05)
