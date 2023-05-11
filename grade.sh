CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

# Used to remove past graded submissions, create clean slate
rm -rf student-submission
rm -rf grading-area

# Make directory grading-area
mkdir grading-area

# Clone the student repository
git clone $1 student-submission
echo 'Finished cloning'

# Change from List-Examples-Grader directory to student-submission directory
cd student-submission

# Check if the ListExamples.java file exists
if [ -e ListExamples.java ]
then
    echo 'File exists'
else
    echo 'File not found'
fi

# Change back to parent directory
cd ../

# Copy files from student-submission directory to the grading-area directory
cp -r student-submission/ListExamples.java grading-area
cp -r lib grading-area
cp TestListExamples.java grading-area

# Check to make sure everything is moved into grading-area
ls grading-area

# Change back to grading-area and compile the java files
cd grading-area
javac -cp ".;lib/hamcrest-core-1.3.jar;lib/junit-4.13.2.jar" ListExamples.java TestListExamples.java
java -cp ".;lib/junit-4.13.2.jar;lib/hamcrest-core-1.3.jar" org.junit.runner.JUnitCore TestListExamples

# Check if tests passed or failed, report error code
if [[ $? -eq 0 ]]
then
    echo "Tests passed!"
else
    echo "Test failed!"
fi

# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
