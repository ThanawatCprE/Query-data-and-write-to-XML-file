import pymysql
conn = pymysql.connect(host= "localhost",
                  user="root",
                  passwd="20022539",
                  db="mydb")
data = conn.cursor()
data.execute("""SELECT student.stu_name,student.stu_id,subject.sub_name,
subject.sub_id,subject.weight,subject.classroom,subject.date,subject.time,teacher.t_name
FROM student
INNER JOIN student_has_subject ON student_has_subject.student_stu_id = student.stu_id
INNER JOIN subject ON student_has_subject.subject_sub_id = subject.sub_id
INNER JOIN teacher_has_subject ON teacher_has_subject.subject_sub_id = subject.sub_id
INNER JOIN teacher ON teacher.t_id = teacher_has_subject.teacher_t_id ORDER BY stu_name""")

student  = []
check = False
f = open('Students.xml', 'w')
f.write('<Register-info>\n')

for row in data:
    print 'row[0] is',row[0]
    if row[0] not in student :
          print 'row[0] not in'
          student.append(row[0])
          if check == True :
            f.write('\t</student-info>\n')
          f.write('\t<student-info>\n')
          f.write('\t\t<name>')
          f.write(row[0])
          f.write('</name>\n')

          f.write('\t\t<student-ID>')
          f.write(row[1])
          f.write('</Student-ID>\n')

          f.write('\t\t<subject-registed>\n')

          f.write('\t\t\t<subject-name>')
          f.write(row[2])
          f.write('</subject-name>\n')

          f.write('\t\t\t<subject-ID>')
          f.write(row[3])
          f.write('</subject-ID>\n')

          f.write('\t\t\t<weight>')
          f.write(str(row[4]))
          f.write('</weight>\n')

          f.write('\t\t\t<date>')
          f.write(row[5])
          f.write('</date>\n')

          f.write('\t\t\t<classroom>')
          f.write(row[6])
          f.write('</classroom>\n')

          f.write('\t\t\t<time>')
          f.write(row[7])
          f.write('</time>\n')                    

          f.write('\t\t\t<lecturer>')
          f.write(row[8])
          f.write('</lecturer>\n')

          f.write('\t\t</subject-registed>\n')
          check = True
    else:
          print 'row[0] in'
          f.write('\t\t<subject-registed>\n')
          f.write('\t\t\t<subject-name>')
          f.write(row[2])
          f.write('</subject-name>\n')

          f.write('\t\t\t<subject-ID>')
          f.write(row[3])
          f.write('</subject-ID>\n')

          f.write('\t\t\t<weight>')
          f.write(str(row[4]))
          f.write('</weight>\n')

          f.write('\t\t\t<date>')
          f.write(row[5])
          f.write('</date>\n')

          f.write('\t\t\t<classroom>')
          f.write(row[6])
          f.write('</classroom>\n')

          f.write('\t\t\t<time>')
          f.write(row[7])
          f.write('</time>\n')                    

          f.write('\t\t\t<lecturer>')
          f.write(row[8])
          f.write('</lecturer>\n')
          
          f.write('\t\t</subject-registed>\n')
f.write('\t</student-info>\n')
f.write('</Register-info>\n')
data.close()
f.close()
conn.close()
print 'Write file complete!'
