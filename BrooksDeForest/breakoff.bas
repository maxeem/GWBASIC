1 REM BREAKOFF - TANDY 1000
2 REM COPYRIGHT 1989 BROOKS DEFOREST
5 SCREEN 2:SCREEN 3:KEY OFF:VIEW PRINT 1 TO 25:CLS
6 SOUND ON:PLAY "MBO2"
7 FOR P=0 TO 15:PALETTE P,0:NEXT
10 DIM A(50):DIM B(50):DIM C(1100):DIM D(100)
11 LOCATE 1,1:COLOR 15:PRINT "BREAKOFF":FOR A=0 TO 7:FOR B=0 TO 63
12 IF POINT(B,A)=15 THEN PSET(B,A),A+1
13 NEXT:NEXT:GET(0,0)-(63,7),D
15 CLS:CIRCLE(10,10),3:PAINT(10,10),15:CIRCLE(10,10),3,7:PSET(9,7),0:PSET(11,7),0:PSET(9,13),0:PSET(11,13),0:GET(7,7)-(13,13),A
20 CLS
25 LINE(10,10)-(20,15),14,BF:PSET(10,14),0:PSET(20,14),0:GET(5,10)-(25,14),B
30 ON ERROR GOTO 40
35 GOTO 100
40 RESUME 400
100 CLS:FOR P=1 TO 15:PALETTE P,P:NEXT
105 S=0:L=3
110 LINE(0,199)-(159,10),14,B:LINE(1,198)-(158,11),14,B:LINE(0,190)-(159,199),0,BF
111 LINE(2,189)-(2,10),14:LINE(156,189)-(157,10),14,BF:LINE(0,9)-(159,9),14:LINE(0,12)-(159,12),14:LINE(0,8)-(159,8),14
115 Q=0:M=0
120 FOR A=32 TO 81 STEP 9:Q=Q+1:FOR B=8 TO 148 STEP 8
125 M=M+1:IF M>2 THEN M=1
130 IF M=1 AND Q=1 THEN C=4 ELSE IF M=2 AND Q=1 THEN C=12
135 IF M=1 AND Q=2 THEN C=5 ELSE IF M=2 AND Q=2 THEN C=13
140 IF M=1 AND Q=4 THEN C=2 ELSE IF M=2 AND Q=4 THEN C=10
145 IF M=1 AND Q=5 THEN C=3 ELSE IF M=2 AND Q=5 THEN C=11
146 IF M=1 AND Q=6 THEN C=7 ELSE IF M=2 AND Q=6 THEN C=15
150 IF M=1 AND Q=3 THEN C=1 ELSE IF M=2 AND Q=3 THEN C=9
155 LINE(B,A)-(B+6,A+6),C,BF:SOUND 18*Q*Q,1,15,0
160 NEXT:M=M-1
165 NEXT
170 IF FLG=0 THEN GET(8,32)-(150,83),C:FLG=1
175 REM TITLES
180 FOR A=150 TO 0 STEP -10:PUT(45,A),D:SOUND RND*2000,.2,1+(RND*13),0:SOUND RND*2000,.2,10,1:NEXT
185 FOR A=150 TO 10 STEP -10:PUT(45,A),D:NEXT
189 A1=4:A2=5:A3=1:A4=2:A5=3:A6=7:B1=12:B2=13:B3=9:B4=10:B5=11:B6=15
190 Q=Q+1:IF Q>6 THEN Q=1
191 G1=A1:A1=A2:A2=A3:A3=A4:A4=A5:A5=A6:A6=G1
192 G1=B1:B1=B2:B2=B3:B3=B4:B4=B5:B5=B6:B6=G1
195 PALETTE 4,A1:PALETTE 12,B1:PALETTE 5,A2:PALETTE 13,B2:PALETTE 1,A3:PALETTE 9,B3:PALETTE 2,A4:PALETTE 10,B4:PALETTE 3,A5:PALETTE 11,B5:PALETTE 7,A6:PALETTE 15,B6
197 IF STRIG(1)=-1 THEN TM=0:DEMO=0:GOTO 200 ELSE TM=TM+1:IF TM>100 THEN TM=0:DEMO=1:GOTO 200
198 IF INKEY$=CHR$(27) THEN SCREEN 2:SCREEN 0:CHDIR "..":RUN "menu" ELSE 190
200 FOR P=1 TO 15:PALETTE P,P:NEXT:LINE(8,32)-(150,83),0,BF:NOISE 4,15,1
201 FOR A=150 TO 0 STEP -10:PUT(45,A),D:SOUND RND*2000,.2,1+(RND*13),0:SOUND RND*2000,.2,10,1:NEXT
202 FOR A=150 TO 10 STEP -10:PUT(45,A),D:SOUND RND*2000,.2,1+(RND*13),0:SOUND RND*2000,.2,10,1:NEXT:PALETTE 8,0
203 SC1=1:SCTOT=1829:LV=4:FOR A=1 TO 83:PSET(10+RND*140,20+RND*170),1:PSET(10+RND*140,20+RND*170),9:SOUND RND*999,.5,RND*15,2:NEXT
204 PUT(8,32),C,PSET:FOR V=15 TO 0 STEP -1:SOUND V*19,1,V,0:SOUND V*15,1,V,2:NOISE 5,V,1:COLOR ,V:NEXT:PALETTE 8,9
205 S=0:L=3:XX=70:FOR A=190 TO 194:LINE(XX+5,A)-(XX+15,A),14,,RND*30000:SOUND RND*2000,1,15,0:NEXT:PUT(XX,190),B,PSET
210 X=80:Y=100:D2=1:D1=FIX(RND*2):IF D1>1 THEN D1=1
211 RANDOMIZE TIMER
215 PUT(X,Y),A
216 COLOR 9:LOCATE 1,18:PRINT STRING$(L,1):COLOR 15
217 S$=STR$(S):S$=RIGHT$(S$,LEN(S$)-1):S1$=STRING$(4-LEN(S$),"0"):LOCATE 1,1:PRINT S1$+S$
218 IF DEMO=1 THEN 1000
220 REM * MAIN GAME *
225 REM -------------
230 XL=POINT(X-1,Y+5):XR=POINT(X+7,Y+5):UP=POINT(X+3,Y-1):DN=POINT(X+3,Y+10)
231 IF XL+XR+UP+DN=0 THEN 250
232 IF DN=14 THEN GOSUB 350:GOTO 250
235 IF XL=14 THEN D1=1:GOSUB 330:GOTO 250 ELSE IF XR=14 THEN D1=0:GOSUB 340:GOTO 240
239 IF UP=14 THEN D2=1:GOSUB 330:GOTO 250
240 IF DN=14 THEN D2=0:GOSUB 350:GOTO 250
245 IF UP=0 AND DN=0 THEN 250
246 IF Y<13 THEN D2=1:GOTO 250 ELSE PUT(X,Y),A
247 IF UP>0 THEN PAINT(X+3,Y-1),0:D2=1:NOISE 4,15,1 ELSE IF DN>0 THEN PAINT(X+3,Y+10),0:D2=0:NOISE 5,15,1
248 IF XL>0 THEN PAINT(X-1,Y+5),0:D1=1:NOISE 6,15,1 ELSE IF XR>0 THEN PAINT(X+9,Y+5),0:D1=0:NOISE 4,15,.5:NOISE 5,15,.5
249 GOSUB 305:GOTO 255
250 PUT(X,Y),A:IF Y>189 THEN 400
255 IF D1=0 THEN X=X-3 ELSE X=X+3
260 IF D2=0 THEN Y=Y-5 ELSE Y=Y+5
265 PUT(X,Y),A
270 IF STICK(0)<10 AND XX>4 THEN XX=XX-5:GOTO 275 ELSE IF STICK(0)>100 AND XX<134 THEN XX=XX+5:GOTO 275 ELSE 230
275 PUT(XX,190),B,PSET:GOTO 230
276 LINE(XX,190)-(XX+20,194),0,BF:LINE(XX+5,190)-(XX+15,194),14,BF:GOTO 230
300 GOTO 230
301 REM ** SCORING **
305 FOR D=1 TO 4
306 IF D=1 THEN PP=XL
307 IF D=2 THEN PP=XR
308 IF D=3 THEN PP=UP
309 IF D=4 THEN PP=DN
310 IF PP=0 OR PP=14 THEN 315
311 IF PP=7 OR PP=15 THEN S=S+2 ELSE IF PP=3 OR PP=11 THEN S=S+6 ELSE IF PP=2 OR PP=10 THEN S=S+12 ELSE IF PP=1 OR PP=9 THEN S=S+15 ELSE IF PP=5 OR PP=13 THEN S=S+20 ELSE IF PP=4 OR PP=12 THEN S=S+30
313 TOT=S-SC1:IF TOT=SCTOT THEN FOR A=700 TO 4000 STEP 600:FOR B=A+600 TO A STEP -131:SOUND B,.3,15,0:SOUND B/3,.4,15,1:SOUND B/8,.4,15,2:NEXT:NEXT:FOR V=15 TO 3 STEP -2:FOR A=4000 TO 900 STEP -190:SOUND A,.3,V,0:SOUND A/2,.3,V,1:NEXT:NEXT:GOTO 600
315 NEXT
320 S$=STR$(S):S$=RIGHT$(S$,LEN(S$)-1):S1$=STRING$(4-LEN(S$),"0"):LOCATE 1,1:PRINT S1$+S$
325 RETURN
330 FOR V=15 TO 8 STEP -2:SOUND 19*(19-V),1,V,1:NEXT:RETURN
340 FOR V=15 TO 8 STEP -2:SOUND 19*V,1,V,1:NEXT:RETURN
350 PLAY "C40":P1=POINT(X-2,Y+10):P2=POINT(X+6,Y+10):IF P1=14 AND P2=0 THEN D1=1 ELSE IF P2=14 AND P1=0 THEN D1=0
351 D2=0
355 FOR V=15 TO 8 STEP -2:SOUND 29*V,.4,V,0:SOUND 9*V,.4,V,1:NEXT:RETURN
400 REM ** LIFE GONE **
404 FOR V=10 TO 15 STEP .5:SOUND RND*2000,.5,V,0:SOUND RND*2000,.5,V,1:SOUND V*V,.5,V,2:NEXT
405 FOR V=15 TO 0 STEP -1:SOUND 900+(V*V),.5,V,0:SOUND 100+(V*19),.5,V,1:NOISE 4,V,.5:NEXT
406 FOR V=15 TO 5 STEP -1:SOUND 1200,.2,V,0:SOUND 1100,.2,V,1:NEXT
407 FOR V=15 TO 5 STEP -1:SOUND 700,.2,V,0:SOUND 600,.2,V,1:NEXT
408 FOR V=15 TO 5 STEP -1:SOUND 300,.2,V,0:SOUND 200,.2,V,1:NEXT
409 LINE(0,190)-(159,199),0,BF:XX=80:PUT(XX,190),B,PSET
410 L=L-1:IF L=0 THEN 500
415 COLOR 9:LOCATE 1,18:PRINT STRING$(L,1)" "
416 COLOR 15
420 X=40+RND*100:X=FIX(X):Y=100:D2=1:D1=FIX(RND*2):IF D1=2 THEN D1=1
421 PUT(X,Y),A
425 GOTO 230
500 PALETTE 8,0:COLOR 8:LOCATE 18,7:PRINT "GAME OVER":COLOR 15
501 A=1700:FOR P=15 TO 1 STEP -1:FOR P2=15 TO 0 STEP -2:A=A-10:SOUND A,.4,P,0:PALETTE P,P2:SOUND A/2,.6,P,1:SOUND A/4,.5,15,2:NEXT:PALETTE 8,P:PALETTE P,0:NEXT
504 CLS:FOR P=0 TO 15:PALETTE P,P:NEXT
505 S=0:L=3
510 LINE(0,199)-(159,10),14,B:LINE(1,198)-(158,11),14,B:LINE(0,190)-(159,199),0,BF
511 LINE(2,189)-(2,10),14:LINE(157,189)-(157,10),14:LINE(0,9)-(159,9),14:LINE(0,12)-(159,12),14:LINE(0,8)-(159,8),14
515 PUT(8,32),C
520 GOTO 175
600 REM ** SCREEN COMPLETED **
605 LV=LV+1
610 CLS
611 COLOR 9:LOCATE 1,18:PRINT STRING$(L,2):COLOR 15
612 S$=STR$(S):S$=RIGHT$(S$,LEN(S$)-1):S1$=STRING$(4-LEN(S$),"0"):LOCATE 1,1:PRINT S1$+S$
613 LINE(0,199)-(159,10),14,B:LINE(1,198)-(158,11),14,B:LINE(0,190)-(159,199),0,BF
614 LINE(2,189)-(2,10),14:LINE(157,189)-(157,10),14:LINE(0,9)-(159,9),14:LINE(0,12)-(159,12),14:LINE(0,8)-(159,8),14
615 IF LV=1 THEN RESTORE 700:SCTOT=2174
616 IF LV=2 THEN RESTORE 710:SCTOT=1324
617 IF LV=3 THEN RESTORE 720:SCTOT=930
645 REM ** DISPLAY **
646 SC1=S:TOT=0
650 Y=23:FOR A=1 TO 8:Y=Y+9:READ A$:X=0:FOR B=1 TO 18:X=X+8
655 B$=LEFT$(A$,B):C$=(RIGHT$(B$,1)):C=VAL(C$):IF C$="0" THEN 665
656 IF C=2 THEN C=9 ELSE IF C=3 THEN C=2 ELSE IF C=4 THEN C=10 ELSE IF C=5 THEN C=4 ELSE IF C=6 THEN C=12 ELSE IF C=7 THEN C=5 ELSE IF C=8 THEN C=13 ELSE IF C=9 THEN C=7 ELSE IF C$="A" THEN C=15 ELSE IF C$="B" THEN C=3 ELSE IF C$="C" THEN C=11
657 IF C$="D" THEN C=14
660 LINE(X,Y)-(X+6,Y+6),C,BF:SOUND RND*(39*C),.5,15,1
665 SOUND RND*2000,.2,12,0:NEXT:NEXT
670 XX=70:PUT(XX,190),B,PSET:GOTO 210
695 END
699 REM ** EXTRA SCREENS **
700 DATA 556677880088776655
701 DATA 56677880BB08877665
702 DATA 667788000000887766
703 DATA 677880222222088776
704 DATA 778801111111108877
705 DATA 788000000000000887
706 DATA 880444444444444088
707 DATA 803333333333333308
710 DATA 000A0000CC000A0000
711 DATA 0A00009BBCCC000A00
712 DATA 00000999BBBCC00000
713 DATA 00066666666666600A
714 DATA A05646464646464500
715 DATA 000555555555555000
716 DATA 000087000000780000
717 DATA 008880000000088800
720 DATA 000D5554334555D000
721 DATA 000000000000000000
722 DATA 0D08800000000880D0
723 DATA 008668003300866800
724 DATA 0008800DDDD0088000
725 DATA 330000000000000033
726 DATA DDDD0000000000DDDD
727 DATA 121212121212121212
900 REM ** TOTAL POINTS CALCULATOR **
905 T=0
910 SCREEN 3
950 Y=23:FOR A=1 TO 8:Y=Y+9:READ A$:X=0:FOR B=1 TO 18:X=X+8
955 B$=LEFT$(A$,B):C$=(RIGHT$(B$,1)):C=VAL(C$):IF C$="0" THEN 965
956 IF C=2 THEN C=9 ELSE IF C=3 THEN C=2 ELSE IF C=4 THEN C=10 ELSE IF C=5 THEN C=4 ELSE IF C=6 THEN C=12 ELSE IF C=7 THEN C=5 ELSE IF C=8 THEN C=13 ELSE IF C=9 THEN C=7 ELSE IF C$="A" THEN C=15 ELSE IF C$="B" THEN C=3 ELSE IF C$="C" THEN C=11
960 LINE(X,Y)-(X+6,Y+6),C,BF
961 PP=C
962 IF PP=7 OR PP=15 THEN T=T+2 ELSE IF PP=3 OR PP=11 THEN T=T+6 ELSE IF PP=2 OR PP=10 THEN T=T+12 ELSE IF PP=1 OR PP=9 THEN T=T+15 ELSE IF PP=5 OR PP=13 THEN T=T+20 ELSE IF PP=4 OR PP=12 THEN T=T+30
965 NEXT:NEXT
970 TOT=T
975 COLOR 14:LOCATE 16,6:PRINT TOT
1000 REM ** DEMONSTRATION **
1005 COLOR 8:LOCATE 19,6:PRINT "NO CREDITS":COLOR 15:PL=0
1230 XL=POINT(X-1,Y+5):XR=POINT(X+9,Y+5):UP=POINT(X+3,Y-1):DN=POINT(X+3,Y+10):GOSUB 1305
1231 IF XL+XR+UP+DN=0 THEN 1250
1232 IF DN=14 THEN GOSUB 350:GOTO 1250
1235 IF XL=14 THEN D1=1:GOSUB 330:GOTO 1250 ELSE IF XR=14 THEN D1=0:GOSUB 340:GOTO 1240
1239 IF UP=14 THEN D2=1:GOSUB 330:GOTO 1250
1240 IF DN=14 THEN D2=0:GOSUB 350:GOTO 1250
1245 IF UP=0 AND DN=0 THEN 1250
1246 PUT(X,Y),A
1247 IF UP>0 THEN PAINT(X+3,Y-1),0:D2=1:NOISE 4,15,1 ELSE IF DN>0 THEN PAINT(X+3,Y+10),0:D2=0:NOISE 5,15,1
1248 IF XL>0 THEN PAINT(X-1,Y+5),0:D1=1:NOISE 6,15,1 ELSE IF XR>0 THEN PAINT(X+9,Y+5),0:D1=0:NOISE 4,15,.5:NOISE 5,15,.5
1249 GOSUB 305:GOTO 1255
1250 PUT(X,Y),A:PL=PL+1:IF PL>15 THEN PL=0
1251 PALETTE 8,PL
1255 IF Y>189 THEN 2000
1256 IF D1=0 THEN X=X-3 ELSE X=X+3
1260 IF D2=0 THEN Y=Y-5 ELSE Y=Y+5
1265 PUT(X,Y),A:IF STRIG(1)=-1 THEN DEMO=0:S=0:L=3:SC1=0:GOTO 200
1270 IF Y<70+RND*30 THEN 1230
1271 IF XX+7>X AND XX>4 THEN XX=XX-4 ELSE IF XX+7<X AND XX<138 THEN XX=XX+4
1272 PUT(XX,190),B,PSET
1300 GOTO 1230
1305 IF UP=8 THEN UP=0
1310 IF DN=8 THEN DN=0
1315 IF XL=8 THEN XL=0
1320 IF XR=8 THEN XR=0
1325 RETURN
2000 FOR V=15 TO 0 STEP -2:FOR A=2000 TO 900 STEP -120:SOUND A,.1,V,0:SOUND 2*A,.1,V,1:NEXT:NEXT
2005 GOTO 500
