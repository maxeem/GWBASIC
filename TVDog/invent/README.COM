?8TXT2COM Conversion utility. Vers 1.1
Copyright 1987 by Keith P. Graham
This file cannot be distributed for SALE without
express written permission from Keith P. Graham
238 Germonds Road, W. Nyack, NY 10994, (914) 623-4161
To view the contents of this file
enter the name of the file from the DOS prompt.
?s  ?>~u?6??H?M?????'???? ?P ?w?ֲ QR??  ??<tE<
tA<~u)?<~t#?<0|?<f?<9~?<A|?<F~?<a|???ˬ?	? ? ???ZY?????ZYÃ.u?>u }	?u  ???u??d??u?>u?|??u????u  ?s  ???u  ?{- ?s??:?? ?s?? ?-??>s t?.s?? ???>s u???.s?@?s???>}?1?w ??????{= ???- 9s|????s???s?????>}?1?w ????????? "^4??? ? ??  ????	?!?n?
?!?>o?z??o? Ƈp ??p? <?  ?!s?p??=?!s?Q??ش@?y??!?>?!?<??>s }?s  á{= ~- 9s~?s???s  ù ?s?w QC9{Y?KS???>}?1?>u t?u?<t	<
t?????[CY?w??ô ??č>?
 ???u???
?ً?K??ô? ? ?O?>???  ??  ??6#?P ?  Q??	? ? ???մ?  ?EY??ù
 ?s@?  ????0???  ????0???  ????0???  ????0???  ?
 ?u@?  ????0??  ????0? ?  ????0???  ? ??  ??6??P ? Q??	? ? ???մ?  ?EY??ô?? ?O?>??ô?? ?O?>??À<0|[?<fV?<9~?<A|L?<F~?<a|B?|0|<?|f6?|9~?|A|*?|F~?|a|?<9~,$????ج<9~,$؈??  If you want to write to a file enter the file name.
  If you want to print the file enter LPT1 or LPT2

  ENTER: $@                                                                   Esc=Quit, T=write text, Keys=,,,,PgUp,PgDn,Home,End   Line=0000  Column=000                      KMGOIQPH                                                                                       ?? ?                               INVENTORY MANAGER

       This program was written on a Tandy 1000 in GW BASIC 2.11
       It is fairly straght forward sence it is MENU driven.
       At the main menu you can

                  ADD RECORDS     LIST RECORDS TO SCREEN

          EDIT RECORDS   LIST RECORDS TO PRINTER    EXIT TO DOS

       INVENTORY MANAGER is designed to keep track of small inventory
       items like office supplys. You can sort by DESC or ITEM #.

       INVENTORY MANAGER has 4 fields.

          DESC you may enter up to 20 char.
          ITEM# enter up to 5 char including numbers.
          QTY enter up to 3 numbers.
          RETAIL$ enter up to 6 numbers example (3000.00) DO NOT ADD ($)

       1) ADD RECORDS
          Remember when entering DESC you only have 20 char. So use
          key words or short descriptions to make searching easier.

       2) LIST TO SCREEN
          When you enter this routine you will get a list of screen options

          LIST ALL This does just what it says it will list all records.

          TEXT SEARCH You are prompted for a string to search for this
          can be in DESC or ITEM#. Example a ITEM# can be (A123) or (123)
          ALL ITEM# are saved as a string value. (MUST USE UPPER CASE)

          INVENTORY VALUE You can check the value of all your stock
          with out listing them.

       3) EDIT EXISTING DATA You have the option to update any of the
          4 fields or delete a record all together.

       4) LIST TO PRINTER
          You will get a list of options like LIST TO SCREEN offers.

          This program was written using a tandy DMP 105 printer
          the printer codes CHR$(27);CHR$(54) are used to set
          the line feed at 1/2 so to save paper. If these codes
          don't work for you they are located in lines 1422,1602
          just DELETE them.


                         ANY TIPS OR QUESTIONS
                            DROP ME A LINE.





                             TONY GERVASI
                         6424 STOCKDALE HWY #D
                       BAKERSFIELD, CALIF 93309



???3TV????	_	a	?	?	?	?	
_
a
x
?
km??L?????F{}???"a??5bdfhjl??????