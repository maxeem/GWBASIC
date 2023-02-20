��
 :��ATTENU - SWR vs. Attenuation loss vs.SWR   6 DEC 2003 � �:� � � � EX$�""� EX$�"EXIT" �( � PROG$�""� GO$�EX$ :� GO$�PROG$ 2 �� EX$,PROG$  < PI����()  :��3.141593 MF TP�������I� :V0�H�Q��� :��ft/sec rP TP��PI:V0�H�Q��� :��ft/sec �Z UL$��(P,�) �d :�� �n :��.....title page �x � �� � ,, �� � " SWR vs. Attenuation"�?)"by Robert DeHoney "; � � ,:� �(P,�); � � ,:�� � :�� c� � "This program proves that line attenuation can be found by measuring"; w� � " the SWR of" �� � "line terminated in a short or open (or reactance). The program "; �� � "first asks for" � � "SWR and line length, then finds the line loss in dB/100 ft." !� � �� :��PRINT " Then, using that value of line loss, it asks for a load Z and solves for the "; �� � "Then, using that value of line loss, it asks for a load Z and "; �� "solves for the" �� "input SWR." �� @"� "The program can also be used to show how loss reduces load SWR." F,� P6� , t@� " To run program... press 1 " �J� " To EXIT.......... press 0 ":� , �TZ$��:� Z$�""� T �^� Z$� "0"� �� GO$ �h� Z$� "1"� | �r� T �|:��.....start �� ,, 7��:� "SWR vs. Attenuatuion - by Robert DeHoney B�� UL$; o�TP�������I� :V0�H�Q��� :��ft/sec ��� "ENTER:frequency (MHz)........................ ";F ��� "ENTER:Feeder Length (in feet).................";L �� "ENTER:Line Velocity Factor (decimal)......... ";K T�� "ENTER:Line Characteristic impedance (ohms)... ";Z0 ��� "ENTER:SWR of the shorted or open line........ ";SWR ��ATT���((SWR�)�(SWR�))��L :��nepers/foot ��ATTDB�ATT�d���k} :��dB/100ft ��� &�U$�" Attenuation calculated from SWR is ##.### dB/100 ft." C� ,:� � U$;ATTDB:� , I� �� "ENTER:Load Resistance (ohms)..............RL= ";R:R�R�Z0 �&� "ENTER:Inductive Reactance (ohms)..........XL= ";X:X�X�Z0 �0BETA�TP�F�V0�K :� � :A�R�HCR�X�HCI�HSR :B�X�HCR�R�HCI�HSI LDC�HCR�R�HSR�X�HSI :D�HCI�X�HSR�R�HSI :� � :RIN�RE :XIN�IM {NRC���(((RIN�)��XIN�)�((RIN�)��XIN�)) �XSWR2�(�RC)�(�RC) �b� �lU$�" SWR calculated from ZL and attenuation is ##.###:1" �v� ,:� � U$;SWR2:� , ��� :� � :�:��        Subroutine to calculate hyperbolic functions w�HS�(��(ATT�L)���(�ATT�L))� :HC�(��(ATT�L)���(�ATT�L))� ��HSR���(BETA�L)�HS :HSI���(BETA�L)�HC ��HCR���(BETA�L)�HC :HCI���(BETA�L)�HS :� �:��        Subroutine to calculate (a+jb)/(c+jd) 7�RE�(A�C�B�D)�(C��D�) :IM�(B�C�A�D)�(C��D�) :� =�� L�:��....end ]� � �:� n  e�:�� u�:��.....PRT ��� �:� >:� ,:� , �� " Send this page to:(1)Printer Queue? (2)Printout? "; �� "(3)Next page? (1/2/3)";:� , Z$��:� Z$�"1"� Z$�"3"�  :� � > ) � Z$�"3"� � _*� I%� � :� J%� � P:� ��(�(I%,J%));:� J%:� I% }4� Z$�"2"� � ��() :� � �>� ,:� �(P, );:�   