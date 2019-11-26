Mov ax,@data is way of loading starting address of data segment in ax
Then by using mov ds,ax data segment gets initialized. 
This instruction is used in tasm assembler.

LEA (load effective address) :  lea si, varible name
                                lea dx, variable name  ; Done while printing

lds means Load pointer using DS and 
likewise les means Load pointer using ES. 
In practice, lds SI, ptr_str1 sets ds and si based on the values stored in the memory address ds:ptr_str1 (the syntax is [ds:ptr_str1] in some assemblers).