import pymysql
import xml
from xml.dom.minidom import Document
conn = pymysql.connect(host= "localhost",
                  user="root",
                  passwd="1234",
                  db="mydb")
data = conn.cursor()
data.execute("""SELECT student.stu_name,student.stu_id,subject.sub_name,subject.sub_id,subject.weight,subject.classroom,subject.date,subject.time,teacher.t_name
FROM student
INNER JOIN student_has_subject ON student_has_subject.student_stu_id = student.stu_id
INNER JOIN subject ON student_has_subject.subject_sub_id = subject.sub_id
INNER JOIN teacher_has_subject ON teacher_has_subject.subject_sub_id = subject.sub_id
INNER JOIN teacher ON teacher.t_id = teacher_has_subject.teacher_t_id ORDER BY stu_name
""")
doc = Document()
root = doc.createElement("Register-info")
# root.setAttribute( "name", "SelectedCafe" )
doc.appendChild(root)

for value in data:
  
  # Create Element
  studentinfo = doc.createElement('student-info')
  root.appendChild(studentinfo)

  # Create Element
  tempChild = doc.createElement('Name')
  studentinfo.appendChild(tempChild)

  # Write Text
  nodeText = doc.createTextNode( value[0] )
  tempChild.appendChild(nodeText)

  # Create Element
  tempChild = doc.createElement('student-ID')
  studentinfo.appendChild(tempChild)

  # Write Text
  nodeText = doc.createTextNode( value[1] )
  tempChild.appendChild(nodeText)

  # Create Element
  subjectRegisted = doc.createElement('subject-registed')
  studentinfo.appendChild(subjectRegisted)
 
  # Create Element
  tempChild = doc.createElement('subject-name')
  subjectRegisted.appendChild(tempChild)

  # Write Text
  nodeText = doc.createTextNode( value[2] )
  tempChild.appendChild(nodeText)

  # Create Element
  tempChild = doc.createElement('subject-ID')
  subjectRegisted.appendChild(tempChild)

  # Write Text
  nodeText = doc.createTextNode( value[3] )
  tempChild.appendChild(nodeText)

  
doc.writexml( open('output.xml', 'w'),
              indent="  ",
              addindent=" ",
              newl='\n')
 
doc.unlink()

print 'Write file complete!'
