5 REM PRINT HIGH RESOLUTION CGA SCREEN TO EPSON COMPATIBLE PRINTER
10 DEF SEG=0:WIDTH "LPT1:",255
20 LPRINT CHR$(27)+"@";:LPRINT CHR$(27)+"3"+CHR$(24);
30 BVM=47104!:OVM=0:MASK=128:SC=1
40 BC=0:LPRINT CHR$(27)+"L"+CHR$(0)+CHR$(3);:REM 768 BYTES
50 PBYTE=0
60 P=PEEK(BVM+OVM+0):IF (P AND MASK)=MASK THEN PBYTE=PBYTE+128
70 P=PEEK(BVM+OVM+8192):IF (P AND MASK)=MASK THEN PBYTE=PBYTE+64
80 P=PEEK(BVM+OVM+80):IF (P AND MASK)=MASK THEN PBYTE=PBYTE+32
90 P=PEEK(BVM+OVM+8272):IF (P AND MASK)=MASK THEN PBYTE=PBYTE+16
100 P=PEEK(BVM+OVM+160):IF (P AND MASK)=MASK THEN PBYTE=PBYTE+8
110 P=PEEK(BVM+OVM+8352):IF (P AND MASK)=MASK THEN PBYTE=PBYTE+4
120 P=PEEK(BVM+OVM+240):IF (P AND MASK)=MASK THEN PBYTE=PBYTE+2
130 P=PEEK(BVM+OVM+8432):IF (P AND MASK)=MASK THEN PBYTE=PBYTE+1
140 LPRINT CHR$(PBYTE);
150 MASK=MASK/2:IF MASK<>.5 THEN 50
160 MASK=128:OVM=OVM+1:BC=BC+1:IF BC<80 THEN 50
170 FOR A=1 TO 128:LPRINT CHR$(0);:NEXT A:LPRINT CHR$(10);
180 OVM=OVM+240:SC=SC+1:IF SC<25 THEN 40
190 DEF SEG:LPRINT CHR$(27)+"@"

