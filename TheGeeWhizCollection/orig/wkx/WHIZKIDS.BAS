???:??WhizKids  10-05-93                        (C) Copyright ??? V :??begin                           WhizWare, 1993 	?     ? "WhizKids":? :??V I? ? :??GetKeys  kb input into Q2 -- SHELL "WKhelp" on <?> ?? ? :??GetMenu  show PLT file names; select DP number, set IN & FU ?? ?	 :??ReadPLT  read plot file records and set up in H(1000+); set DN $$? 2
 :??NumbPts  plot point numbers; adjust IN & FU if necessary Q.?  :??ShowPts  plot and number points ?8? | :??DrawBox  display (empty) arrow boxes ?B?  :??GetNumb  arrow choices & connect dots ?L? \ :??ShowICN  display icon picture V? C?L,X?Z:? M?W:? A:? ?:? :? :??begin *` ? I? ? 
:? I,"":?:? ?? ej X?:Y?:C?:L?:I?:G?:K?:B?      :??local workers ?t Q2???():QB???(P):GQ?        :??Q2keys:QBuffer:GetQchar ?~ RB???():BR?                      :??ReadBufr:BumpRead $? CP?:HP?                            :??CountPoints:HighPoint b? GX?:GY?:GP?                       :??GetX:GetY:GetPix ?? CX?:CY?:LX?:LY?:HX?:HY?        :??CenterX-Y:LowX-Y:HighX-Y ?? DN?                                 :??DoNumbs (else letters) :? IN?                                 :??IncrNumbs (1,2,3,4,5 from F1-F5) ?? FU?                                 :??FirstUpper (+32 for lower) ?? LN?:CN?                            :??LineName:ColName ?? ? ?C?(??(Q2)?)??(??(Q2)?
)  :??Enter or Ctrl+Enter )? ? ?E?(??(Q2)?)                 :??Esc Q? ? ?F??(";<=>?",??(Q2,))  :??F1-F5 ?? ? ?F8???(Q2,)?"B"            :??F8 (show ICN only) ?? HN?                                 :??HelpNone ?   ? "WKhelp.EXE" AS 1:B???():?:HN???(B) !
  ? HN? ? ?? "WKhelp.EXE"      :??missing .EXE E  ? "WKhelp.DAT" AS 1:B???():? y  ? B? ? ?? "WKhelp.DAT":HN?  :??missing .DAT ?( S1?"ABCDEFGHIJKLMNOPQRSTUVWXYZ" ?2 S2?"abcdefghijklmnopqrstuvwxyz" ?< S3???() ?F  ? I? ? :??(S3,I)???(I):? $P ? ?L1??(S1,??(Q2,))       :??Ltrs (upper) TZ ? ?L2??(S2,??(Q2,))       :??Ltrs (lower) ?d ? ?L3??(S3,??(Q2,))       :??Ltrs (Ctrl) ?n ? ?L??L1??L2??L3               :??Ltrs (any) ?x PF???()                        :??PlotFile (and icon) name +? ? I? ? :??(QB,I)???(??(I?)):?  :??GW vx. QB `? ? ??(??(QB))? ? BS?p :? BS??    :??BoxSize ?? ? H(BS)                            :??Hold icons ?? ? P(#)                            :??Point numbers ?  P()?"D4R4U4L4BR7"                       :??0 7?  P()?"BR2D4R1U4BR4"                      :??1 k?  P()?"R4D2L4D2R4BU4BR3"                  :??2 ??  P()?"R4D2L3R3D2L4R4U4BR3"               :??3 ??  P()?"D2R4L1U2D4U4BR4"                   :??4 ?  P()?"R4L4D2R4D2L4R4BU4BR3"              :??5 ;?  P()?"R1L1D4R4U2L4R4BU2BR3"              :??6 o?  P()?"R4D1G3BR4BU4BR2"                   :??7 ??  P()?"D2R4L4D2R4U4L3R3BR3"               :??8 ?  P()?"D2U2R4D2L4R4D2L1R1U4BR3"           :??9   P(
)?"BD3D2U2E2F2D2U1L3R3BU3BR3"        :??A ?  P()?"D4R3E1H1L3R3E1H1L3R3BR4"          :??B s"  P()?"BD1D2F1R2E1BU2H1L2G1BU1BR7"       :??C ?,  P()?"D4R3E1U2H1L3R3BR4"                :??D ?6  P()?"D4R4L4U2R3L3U2R4BR3"              :??E @  P()?"D4U2R3L3U2R4BR3"                  :??F CJ  P()?"BD1D2F1R3U1BU2H1L2G1BU1BR7"       :??G wT  P()?"D4U2R3L3U2D2R3D2U4BR3"            :??H ?^  P()?"BR1R2L1D4L1R2BU4BR4"              :??I ?h  P()?"BD3F1R1E1U3BR3"                   :??J  r  P()?"D4U4BR3G2F2BU4BR3"                :??K G |  P()?"D4R4BU4BR3"                       :??L { ?  P()?"D4U4F2E2D4U4BR3"                  :??M ? ?  P()?"D4U4F4U4BR3"                      :??N ? ?  P()?"BD1D2F1R2E1U2H1L2G1BU1BR7"        :??O !?  P()?"D4U4R3F1G1L2BU2BR6"               :??P K!?  P()?"BD1D2F1R2E1U2H1L2G1BF2F1R1BU4BR4" :??Q !?  P()?"D4U4R3F1G1L2R1F2BU4BR3"           :??R ?!?  P()?"R4L4D2R4D2L4BU4BR7"               :??S ?!?  P()?"R4L2D4U4R2BR3"                    :??T "?  P()?"D3F1R2E1U3BR4"                    :??U O"?  P()?"D2F2E2U2BR3"                      :??V ?"?  P( )?"D4E2F2U4BR3"                      :??W ?"?  P(!)?"F4BU4G4BU4BR7"                    :??X ?"?  P(")?"F2D2U2E2BR3"                      :??Y #  P(#)?"R4G4R4BR3"                        :??Z T# ? A(B):?                    :??ASCII numbers d#  ? I? ?  ?#&   ? ,:? ??(I);:??(,)??(,),A ?#0   ??(,)??(,),A ?#:   C?I??:? K? ? :A(K?C)?A(K):? ?#D  ? $N?? ?E?      :??--------------------------------------------- mainline L$X ? :? ?E ? ?               :??GetMenu |$b  ? ?F8? ? ?                 :??ReadPLT ?$l  ? ?F8? ? ? $                :??NumbPts ?$v  ? ?F8? ? ? .                :??ShowPts %?  ? ?F8? ? ? 8                :??DrawBox <%?  ? ?F8? ? ? B                :??GetNumb h%?  ? ?E? ? ? L :? ?? Q2?"" :??ShowICN r%??:?  ?%??              :??------------------------------------------------- fini ?%?:??GetKeys ?%? ?? Q2???():?? ??(Q2)?:??(Q2,)??:? &? ? ?("?/",??(Q2,))? ? ? E&?  ? HN ? ?? ,:?? "WKhelp":?? ,:? ? K&?? Z&?:??GetMenu p&? ? ,:?:L?:C? ?&? ? :? " WhizKids (C) Copyright WhizWare, 1993":? , ?& ? "? Move box with <arrow> keys then hit <Enter> ?"; ' ? " <Esc> to Quit ? <?> for Help ?"; ,' ?(,A)??(h,),,B a'  ? "WhizKids.DIR" AS 1 ???:?? , AS RB:B???() o'* ?? B?:? ?'4  ?? "DIR *.PLT>WhizKids.DIR" ?'>  ? "WhizKids.DIR" AS 1 ???:?? , AS RB:B???() ?'H ? ?'R ?? ??(RB)? (\  ?? :I???(RB):? I? ? ?? :??oops = no files ;(f  ?? :? ?("pa",??(I))? ? ?? RB?"" f(p ?:?? ,??()?':? , :??begin names x(z ?? ??(RB)?  ?(?  ? I? ? :??(QB,I)?RB:?? :?:? I?I ? ):?? :? ?(?  ? L,C:? ??(QB,):L?L?:? L? ? C?C?
:L? ?(? ? +)? ?? ?E??F??L??F8? ? ??(Q2)??                            :??pick [)?  Y?LN??:X?CN??:?(X,Y)??(F,),,B ?)?  ? :?(X,Y)??(F,),,B :??GetKeys ?)?  ? ?("HPKM",??(Q2,)) ? 8	,L	,V	,t	 ?)? ?:?? RB???():?? PF?""                                    :??end ,*? C?CN:? I? ? :??(PF,I)???(?(LN,C)):C?C?:?:? S*? ?? ?(PF,RB):??(PF,?(PF,RB))?" ":? r*? ??(PF,?(PF," "))?".PLT":? ?*?  FU?@:IN??F?(?F?)     :??IncrNumbs (F1-F5) ?*?  ? ?L3 ? FU??L3?_  :??Ctrl+letter ?*	  ? ?L2 ? FU??L2??  :??lower case hit "+	  ? ?L1 ? FU??L1??  :??upper case hit J+	  ? ?C?? ? FU?`     :??Ctrl+Enter m+$	  ? ?C?? ? FU?@     :??Enter ?+.	    ? ~	                                                       :??exit ?+8	? ?(LN?,CN)?  ? LN?LN?:? ~	                        :??up $,B	 LN?:?? ?(LN,CN)?!:LN?LN?:?:? ~	 a,L	? ?(LN?,CN)?  ? LN?LN?:? ~	 :? LN?:? ~	    :??down ?,V	? CN? ? ? ?(LN,CN?
)?  ? CN?CN?
:? ~	         :??left ?,`	 CN?H:?? ?(LN,CN)?!:CN?CN?
:?:? ~	 ?,j	 ?  :??GetKeys -t	? CN?< ? ? ?(LN,CN?
) ? CN?CN?
:? ~	 :? CN? :??right %-~	? 4-?	:??ReadPLT e-?	 ? ??(PF,?(PF," ")?) AS 1 ???:?? , AS RB ?-?	 CP?:?? :LX??:LY??:HX?:HY? ?-?	 ?? ??(RB)? ?-?	  I?:?? ??(RB)?
:?? :??(QB,I)?RB:I?I?:? ?-?	   ?? ??(QB)? :?? QB???(QB,):? $.?	  I??(QB," "):GX???(??(QB,I)):?? QB???(QB,I) I.?	   ?? ??(QB)? :?? QB???(QB,):? ?.?	  I??(QB," "):GY???(??(QB,I)):?? QB???(QB,I):GP???(QB) ?.?	   ? GX?LX ? LX?GX :??Low X ?.?	   ? GX?HX ? HX?GX :??High X ?.?	   ? GY?LY ? LY?GY :??Low Y / 
   ? GY?HY ? HY?GY :??High Y ?/

 H(CP??)?GX:H(CP??)?GY:H(CP??)?GP:CP?CP?:??  w/
 ?:?:?:HP?CP?:CX?(HX?LX)?:CY?(HY?LY)?:DN?(HP?) ?/
 ? ?F ? DN? ?/(
? ?/2
:??NumbPts ?/<
 I?FU?@:? I? ? I?I?  ?/F
  ?? I?HP?:I?I?:FU?FU?:? :??adjust FU if range>26 0P
 ? CP? ? HP? =0Z
  ?(H(CP??),H(CP??))?(H(CP??),H(CP??)), o0d
 ?:? IN?HP?c ? IN? :??adjust IN if range>99 ?0n
? CP? ? HP:GX?H(CP??):GY?H(CP??):GQ?CP?IN ?0x
 H(CP??)?:H(CP??)?:I?(GQ?)?:L?:K?(GX?CX):? DN? ? I? 1?
 ? L?K ? Y?GY?:X?GX?:? ?
 :??up/right A1?
 ? L?K ? Y?GY?:X?GX?:? ?
 :??line/right p1?
 ? L?K ? Y?GY?:X?GX?:? ?
 :??down/right ?1?
 ? L ? Y?GY?:X?GX??I:? ?
 :??up/left ?1?
 ? L ? Y?GY?:X?GX??I:? ?
 :??line/left ?1?
 ? L ? Y?GY?:X?GX??I:? ?
 :??down/left #2?
 ? L ? Y?GY?:X?GX?:? ?
 :??up/right P2?
 ? L ? Y?GY?:X?GX?:? ?
 :??line/right }2?
 ? L ? Y?GY?:X?GX?:? ?
 :??down/right ?2?
?:?:?  ?2?
L?(?(X,Y)? ? ?(X??I,Y?)?):? L ?  ?2?
 ? C? ? :H(C)?:?:??(X,Y)??(?I,),H:L? 
3?
 ? C? ? :L?L???(??(H(C))):? E3 ? L? ? ?(X,Y)??(?I,),,BF:H(CP??)?X:H(CP??)?Y K3? Z3:??ShowPts w3" K?FU?@:? K? ? K?K?  ?3, ? CP? ? HP:?(H(CP??),H(CP??)),:G?CP?IN ?36  X?H(CP??):Y?H(CP??):I???(X)???(Y) ?3@  ?? I:I?:?(X,Y),:?? "C14" 4J   ? DN ? ? G? ? ?? P(G?
) C4T   ? DN ? ?? P(G ? 
) :? ?? P(CP??K) K4^  ? R4h ? X4r? g4|:??DrawBox ?4? ? ,@:? "      ???Ŀ" ?4? ? ,@:? "      ?   ?" ?4? ? ,@:? "      ?????" ?4? ? ,@:? "???Ŀ ???ͻ ???Ŀ" 5? ? ,@:? "?   ?Ķ   ?Ĵ   ?" '5? ? ,@:? "????? ???ͼ ?????" E5? ? ,@:? "      ???Ŀ"; c5? ? ,@:? "      ?   ?"; ?5? ? ,@:? "      ?????"; ?5? ? ,::? ??(PF,?(PF,".")?); ?5? ?(,),:?? "E4D8H4"  :??(!,):??(!, ) :??left '6? ?(S,),:?? "U4F4G4U4":??(T,):??(T, ) :??right g6? ?(7,
),:?? "R9H4L1G4":??(9,	):??(=,	) :??top ?6 ?(7,4),:?? "R9G4L1H4":??(9,5):??(=,5) :??bottom ?6? ?6:??GetNumb ?6& CP? ?60 ?? ?E? ? CP?HP? 	7:  ?(-,?)??(,),,BF :??cls top 47D  ?(?,)??(,),,BF :??cls left a7N  ?(.,)??(,),,BF :??cls center ?7X  ?(],)??(,),,BF :??cls right ?7b  ?(-,<)??(,),,BF :??cls bottom ?7l  ?? QB??(P,):? ,H 8v  C?9:L?:CP?CP?:I?CP?IN:G?:? 4:??(QB,)???(CP) :??center Q8?  G????
:? G? ? G? ? ? :? ??(QB,G)???(CP?) z8?   ? HP? ? ??(QB,?(QB,??()))???() ?8?  ?? ?(QB,??())? ?8?   G????d:? G?HP ? (?(QB,??(G))?) ? ? ?8?   ??(QB,?(QB,??()))???(G) ?8?  ?:?  #9?  C?8:L??:G?:? ,H:? *              :??top \9?  C?:L?:G?:? ,B:? *              :??left ?9?  C?h:L?:G?:? ,N:? *              :??right ?9?  C?8:L?C:G?:? ,H:? *:G?:?  :??bottom :?  X?H(CP??):Y?H(CP??):GX?H(CP??):GY?H(CP??):GP?H(CP??) ;:?  ?? ?E? ? ??(??(QB,G))??CP?:? , t:?   ? :G??("HKMP",??(Q2,)):? G? ? G? :??GetKeys ?:   ? ??(??(QB,G))?CP? ? ?(X,Y)?(GX,GY),GP :? ? c, ?:   ?(X,Y),:?(GX,GY), ?:  ? ?:  ?:? R ?:*I???(??(QB,G))?IN ;4? DN? ? ? ??(I?FU);:? R I;>? I? ? C?C?:G?I?
:? H:G?I ? 
:C?C? :? G?I y;HG?G??:? K? ? :A(K)?A(K?G):?:??(C,L),A,? ;R? ?;\:??ShowICN ?;f ?(?,?)?(},X),,BF :??clear boxes ?;p X?H(?):Y?H(?):??(PF,?(PF,"."))?".ICN" <z ? ??(PF,?(PF," ")?) AS 1:B???():?:I???(B) N<? ? I? ? ?? ??(PF,?(PF," ")?) :? ? :??no .ICN v<? ? I ? ? ??(PF,?(PF," ")?),?(H()) ?<? ? ?F8?I ? X?(?H())?:Y?(]?H())? ?<? ? I ? ??(X,Y),H,?:? :?? Q2?"" :??GetKeys ?<??   