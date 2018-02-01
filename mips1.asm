#Considere a seguinte expressao: y = 127x  65z + 1
.text

.globl main

main:

#x =  16
#y = 17
#z = 18

addi $8,$0,0x1001 #$8 =  0x0000 1001
sll  $9,$8,16 # $9 = 0x1001 0000 ($8 << 16 )

lw  $16,0($9)   # x = Men[$9 + 0]
lw  $17,8($9)   # y = Men[$9 + 4]
lw  $18,4($9)   # z = Men[$9 + 8]

sll $14,$16,7   # $14 = x * 128
sub $14,$14,$16 #$14 = 128x - x
addi $14,$14,1  # 127x + 1

sll $15,$18,6   # $15 = z * 64
add $15,$15,$18 #$15 = 64z +  z


sub $17,$14,$15 #y = 127x - 65z + 1
.data
x: .word 5
z: .word 7
y: .word 0
