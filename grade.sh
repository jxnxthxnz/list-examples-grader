CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
git clone $1 student-submission
echo 'Finished cloning'

cp TestListExamples.java student-submission
cp -r lib student-submission

cd student-submission

if [[-f ListExamples.java]]
then 
    echo "File found"
else 
    echo "need File"
    exit 1
fi

javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java
if [[$? -ne 0]] 
    then echo "Compile Failed"
    exit 1
else 
    echo "Compile Success"
fi