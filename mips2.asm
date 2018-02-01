#$16 = i,
#$17 = j
#$18 = k 
#$19 = prod
#$4 = mc 
#$5 = mlr
.text

.globl main

main:
addi $8,$zero,0x1001 #$8 = 1001
sll  $8,$8,16        #$8 = $8 << 16 = 1001000
lw   $17,4($8)       #$17 = Mem[$8+4]  int j;			
lw   $18,8($8)       #$17 = Mem[$8+8]  int k; 	

add  $4,$zero,$17 # mc = j 
add  $5,$zero,$18 # mlr = k 

addi $19,$zero,0    # $19 = prod   = 0;
#addi $sp,$sp,-4     # liberar uma posicao na pilha 
#sw   $19,4($sp)     # colocar prod na posicao liberada 

while:
slt $9, $zero, $5       # mlr < 0 = 1 : 0    
beq  $9,$zero,fim# while(mlr>0)
add  $19,$19,$4 # prod = prod + mc;
addi $5,$5,-1   # mlr  = mlr -1 ;
j while 



fim : 




.data 


i : .word 0
j1 : .word 2
k : .word 3
