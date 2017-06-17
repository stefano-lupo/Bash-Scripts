 #!/bin/bash

echo "Enter College Username: "
read user

echo "Enter College Password: "
read -s password

wget https://www.tcd.ie/academicregistry/exams/assets/local/past-papers2016/CS/ -P ../papers/2016/  -np -r --wait=0 -nd -nH  --user=$user --password=$password --reject "robots.txt" -A "*2022*,*3D[1-4]*"

wget https://www.tcd.ie/academicregistry/exams/assets/local/past-papers2015/CS/ -P ../papers/2015/  -np -r --wait=0 -nd -nH  --user=$user --password=$password --reject "robots.txt" -A "*2022*,*3D[1-4]*"

wget https://www.tcd.ie/academicregistry/exams/assets/local/past-papers2014/CS/ -P ../papers/2014/  -np -r --wait=0 -nd -nH  --user=$user --password=$password --reject "robots.txt" -A "*2022*,*3D[1-4]*"

wget https://www.tcd.ie/academicregistry/exams/assets/local/past-papers2013/CS/ -P ../papers/2013/  -np -r --wait=0 -nd -nH  --user=$user --password=$password --reject "robots.txt" -A "*2022*,*3D[1-4]*"


