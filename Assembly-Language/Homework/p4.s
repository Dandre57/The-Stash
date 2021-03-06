# Sample MAL program
 				  .data           #Data segment begins here
avg:      .word           #Will store the average
i1:       .word   20      #First integer
i2:       .word   13      #Second integer
i3:       .word   82      #Third integer
prompt:   .asciiz "Value is: "
nl:       .byte   ’\n’
#---------------------------------------------------------------------           
          .text                #Text segment begins here
 _start:  lw      $15,i1       #$15 contains 20
          lw      $16,i2       #$16 contains 13
i10:      add     $15,$15,$16  #Operand field has no identifiers
          lw      $16,i3        #$16 contains 82
          add     $15,$15,$16   #$15 contains the sum (115)
          li      $16,3         #$16 contains 3
          div     $15,$15,$16   #$15 contains the average (38)
i20:      sw      $15,avg       #Store the average
          puts    prompt
          put     avg
          putc    nl
          sw      $15,avg
          la      $16,i1
          sw      $15,0($16)
          add     i3,i3,1
          done                #Similar to halt
#--------------------------------------------------------------------- 
Cross Reference Table

Identifier    Definition  Use
avg           3           17 19 21
i1            4           10 22
i2            5           11
i3            6           13 24
prompt        7           18
nl            8           20
_start        10
i10           12
i20           17
