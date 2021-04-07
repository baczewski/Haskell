import Data.List
main :: IO()
main = do
    print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 2), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 2)]
    print $ hardestSubject [("John", "Maths", 5), ("Kennedy", "English", 5), ("Joe", "Programming", 4), ("Claudia", "Programming", 6), ("Sam", "Maths", 4), ("Jenn", "English", 5)]

type Student = String
type Subject = String
type Note = Double

type Record = (Student, Subject, Note)

hardestSubject :: [Record] -> Subject
hardestSubject xs = foldr1 (\ s1 s2 -> if getAvg s1 < getAvg s2 then s1 else s2) getUniqueSubjects
 where
     getUniqueSubjects :: [Subject]
     getUniqueSubjects = nub [subject | (_, subject, _) <- xs]

     getAvg :: Subject -> Note
     getAvg subject = (sum grades) / (fromIntegral $ length grades)
      where
          grades :: [Note]
          grades = [currentGrade | (_, currentSubject, currentGrade) <- xs, currentSubject == subject]
