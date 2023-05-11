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

# Copy files from student-submission directory to the grading-area directory
cp -r student-submission grading-area


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
