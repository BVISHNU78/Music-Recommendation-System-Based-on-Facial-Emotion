import random
from deepface import DeepFace
from mysql.connector import connect
import cv2
db=connect(host="localhost",user="root",passwd="root")
cursor=db.cursor()
cursor.execute('USE MUSIC')
face_cascade=cv2.CascadeClassifier(r"D:\coding\music_recommand\haarcascade_frontalface_default.xml")   
cap=cv2.VideoCapture(0)
while True:
    ret,frame=cap.read()
    try:
        result=DeepFace.analyze(frame,actions=['emotion'])
    except:
        continue    
    dominant_emotion = result[0]['dominant_emotion']   
    cursor.execute(f"SELECT * FROM Song WHERE Genre_Name='{dominant_emotion}'")
    #print(result['dominant_emotion'])
    print(random.choice(cursor.fetchall()))
    gray=cv2.cvtColor(frame,cv2.COLOR_BGR2GRAY)
    faces=face_cascade.detectMultiScale(gray,1.1,4)
    for(x,y,w,h) in faces:
        cv2.rectangle(frame,(x,y),(x+w,y+h),(255,0,0),2)
    font = cv2.FONT_HERSHEY_SIMPLEX
    cv2.putText(frame, result[0]['dominant_emotion'], (50, 50), font, 3, (0, 0, 255), 2, cv2.LINE_4)
    cv2.imshow('frame',frame)

    if cv2.waitKey(1) & 0xFF == ord('q'):
        break
cap.release()
cv2.destroyAllWindows()