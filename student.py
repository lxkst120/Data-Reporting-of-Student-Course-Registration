# defining the properties of a student registration class
class StudentRegistration:
    studentId = str()
    lastName = str()
    firstname = str()
    course1Id = str()
    course1Title = str()
    course2Id = str()
    course2Title = str()
    course3Id = str()
    course3Title = str()
    isUnderGrad = str()
    #helper method to display all the student details in the string format
    def toString(self):  
        return ("Student ID: "+self.studentId+", Last Name: "+self.lastName+", First Name: "+self.firstName+", Course1 ID: "+self.course1Id+", Course1 Title: "+self.course1Title+
                ", Course2 ID: "+self.course2Id+", Course2 Title: "+self.course2Title+", Course3 ID: "+self.course3Id+", Course3 Title: "+self.course3Title+", IsUnderGrad: "+self.isUnderGrad)
    

