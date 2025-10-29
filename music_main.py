import cv2
import numpy as np
import matplotlib.pyplot as plt
from deepface import DeepFace
face_cascade=cv2.CascadeClassifier("haarcascade_frontalface_default.xml")
cap = cv2.VideoCapture(0)
while True:
    ret,frame=cap.read()
    gray=cv2.cvtColor(frame,cv2.COLOR_BGR2GRAY)
    result=DeepFace.analyze(frame,actions=['emotion'])
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
