

.text

.globl main 

#a = $16
#END. MEM. = $17  
main:

# i --> $18  soma --> $19  base --: $17

addi $17,$zero,0x1001     # $17 = 10001
sll  $17,$17,16           # $17 = 100010000
addi $18,$zero,0          # i = 0
addi $19,$zero,0          # soma = 0

do:
sll $8, $18,1  # 2*i
addi $8, $8,1  # 2i + 1
sw $8, 0($17)  # MEM $17 = 2i+1
addi $17, $17, 4
addi $18, $18, 1 # i++
add $19, $19,$8 # soma = soma + 2i +1
slti $20, $18, 100
bne $20, $zero, do

sw $19, 0($17)  # vetor[101] = soma







