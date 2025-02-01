#!/bin/sh

# Wait for Redis to start
sleep 3

# Connect to Redis and insert classroom data
redis-cli <<EOF
FLUSHALL

# Subjects
SADD subjects "Math" "Science" "History" "English"

# Courses
HSET course:1 name "Algebra" subject "Math"
HSET course:2 name "Physics" subject "Science"
HSET course:3 name "World History" subject "History"
HSET course:4 name "Literature" subject "English"

# Students
HSET student:101 name "Alice" age "10" grade "5"
HSET student:102 name "Bob" age "11" grade "6"
HSET student:103 name "Charlie" age "12" grade "7"

# Enrollments (using Sets)
SADD student:101:courses "1" "3"
SADD student:102:courses "2" "4"
SADD student:103:courses "1" "2" "4"

EOF
