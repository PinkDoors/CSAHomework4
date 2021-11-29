; Disassembly of file: main.o
; Tue Nov 23 17:49:44 2021
; Type: COFF64
; Syntax: NASM
; Instruction set: SSE2, x64

default rel

global InitSymbolsEncryption: function
global InSymbolsEncryption: function
global InRndSymbolsEncryption: function
global OutSymbolsEncryption: function
global InitNumbersEncryption: function
global InNumbersEncryption: function
global InRndNumbersEncryption: function
global OutNumbersEncryption: function
global InCyclicShiftEncryption: function
global InRndCyclicShiftEncryption: function
global OutCyclicShiftEncryption: function
global In: function
global InRnd: function
global QuotientOfDivision: function
global Out: function
global Init: function
global Clear: function
global InContainer: function
global InRndContainer: function
global OutContainer: function
global Heapify: function
global HeapSort: function
global errMessage1: function
global errMessage2: function
global main: function

extern clock                                            
extern fclose                                           
extern atoi                                             
extern fopen                                            
extern strcmp                                          
extern srand                                          
extern time                                          
extern exit                                           
extern printf                                           
extern puts                                            
extern fprintf                                
extern fputc                                    
extern fwrite                                  
extern rand                                           
extern fscanf                                         
extern ___chkstk_ms                              
extern __main                                      


SECTION .text   align=16                        

.text:  

InitSymbolsEncryption:                                  ; Инициализация массива пар
        push    rbp                                
        mov     rbp, rsp                       
        sub     rsp, 16                           
        mov     qword [rbp+10H], rcx               
        mov     dword [rbp-4H], 0                    
        mov     dword [rbp-8H], 0                 
        jmp     ?_002                         

?_001:  mov     eax, dword [rbp-8H]                
        add     eax, 48                            
        mov     ecx, eax                          
        mov     rax, qword [rbp+10H]               
        mov     edx, dword [rbp-4H]               
        movsxd  rdx, edx                          
        add     rdx, 32                                
        mov     byte [rax+rdx*2], cl                 
        mov     eax, dword [rbp-8H]                  
        add     eax, 48                               
        mov     ecx, eax                                
        mov     rax, qword [rbp+10H]                  
        mov     edx, dword [rbp-4H]                  
        movsxd  rdx, edx                               
        add     rdx, 32                                
        mov     byte [rax+rdx*2+1H], cl              
        add     dword [rbp-4H], 1                    
        add     dword [rbp-8H], 1                     
?_002:  cmp     dword [rbp-8H], 9                     
        jle     ?_001                                  
        mov     dword [rbp-0CH], 17                    
        jmp     ?_004                                

?_003:  mov     eax, dword [rbp-0CH]                    
        add     eax, 48                                 
        mov     ecx, eax                               
        mov     rax, qword [rbp+10H]                    
        mov     edx, dword [rbp-4H]                     
        movsxd  rdx, edx                               
        add     rdx, 32                               
        mov     byte [rax+rdx*2], cl                   
        mov     eax, dword [rbp-0CH]                   
        add     eax, 48                                 
        mov     ecx, eax                                
        mov     rax, qword [rbp+10H]                   
        mov     edx, dword [rbp-4H]                     
        movsxd  rdx, edx                                
        add     rdx, 32                                 
        mov     byte [rax+rdx*2+1H], cl                 
        add     dword [rbp-4H], 1                      
        add     dword [rbp-0CH], 1                   
?_004:  cmp     dword [rbp-0CH], 42                     
        jle     ?_003                                
        mov     dword [rbp-10H], 49                     
        jmp     ?_006                                 

?_005:  mov     eax, dword [rbp-10H]                
        add     eax, 48                                
        mov     ecx, eax                           
        mov     rax, qword [rbp+10H]                 
        mov     edx, dword [rbp-4H]                   
        movsxd  rdx, edx                             
        add     rdx, 32                              
        mov     byte [rax+rdx*2], cl                
        mov     eax, dword [rbp-10H]                   
        add     eax, 48                                
        mov     ecx, eax                              
        mov     rax, qword [rbp+10H]                 
        mov     edx, dword [rbp-4H]                  
        movsxd  rdx, edx                             
        add     rdx, 32                              
        mov     byte [rax+rdx*2+1H], cl                
        add     dword [rbp-4H], 1                  
        add     dword [rbp-10H], 1                   
?_006:  cmp     dword [rbp-10H], 74               
        jle     ?_005                                 
        nop                                         
        leave                                         
        ret                                           

InSymbolsEncryption:                                    ; Ввод исходной строки и параметров шифрования из файла
        push    rbp                              
        mov     rbp, rsp                             
        sub     rsp, 64                             
        mov     qword [rbp+10H], rcx                  
        mov     qword [rbp+18H], rdx                   
        mov     dword [rbp+20H], r8d                  
        mov     qword [rbp+28H], r9                  
        mov     rcx, qword [rbp+10H]                  
        call    InitSymbolsEncryption           
        mov     dword [rbp-14H], 0                 
        lea     rdx, [rbp-14H]                       
        mov     rax, qword [rbp+28H]                   
        mov     r8, rdx                                
        lea     rdx, [rel ?_105]                        
        mov     rcx, rax                               
        call    fscanf                             
        mov     dword [rbp-4H], 0                       
        jmp     ?_011                                 

?_007:  lea     rcx, [rbp-16H]                        
        lea     rdx, [rbp-15H]                         
        mov     rax, qword [rbp+28H]                  
        mov     r9, rcx                                
        mov     r8, rdx                                 
        lea     rdx, [rel ?_106]                      
        mov     rcx, rax                             
        call    fscanf                                
        mov     dword [rbp-8H], 0                       
        jmp     ?_010                                 

?_008:  mov     rax, qword [rbp+10H]                   
        mov     edx, dword [rbp-8H]                     
        movsxd  rdx, edx                              
        add     rdx, 32                                 
        movzx   edx, byte [rax+rdx*2]                  
        movzx   eax, byte [rbp-15H]                 
        cmp     dl, al                                
        jnz     ?_009                             
        movzx   edx, byte [rbp-16H]                 
        mov     rax, qword [rbp+10H]                 
        mov     ecx, dword [rbp-8H]                     
        movsxd  rcx, ecx                               
        add     rcx, 32                                
        mov     byte [rax+rcx*2+1H], dl               
?_009:  add     dword [rbp-8H], 1                     
?_010:  cmp     dword [rbp-8H], 61                  
        jle     ?_008                                  
        add     dword [rbp-4H], 1                      
?_011:  mov     eax, dword [rbp-14H]                  
        cmp     dword [rbp-4H], eax                    
        jl      ?_007                                  
        mov     dword [rbp-0CH], 0                    
        jmp     ?_016                                  

?_012:  mov     dword [rbp-10H], 0                      
        jmp     ?_015                                  

?_013:  mov     eax, dword [rbp-0CH]                   
        movsxd  rdx, eax                               
        mov     rax, qword [rbp+18H]                    
        add     rax, rdx                               
        movzx   edx, byte [rax]                     
        mov     rax, qword [rbp+10H]                
        mov     ecx, dword [rbp-10H]                 
        movsxd  rcx, ecx                           
        add     rcx, 32                           
        movzx   eax, byte [rax+rcx*2]                 
        cmp     dl, al                                
        jnz     ?_014                             
        mov     rax, qword [rbp+10H]                    
        mov     edx, dword [rbp-10H]                 
        movsxd  rdx, edx                               
        add     rdx, 32                              
        movzx   ecx, byte [rax+rdx*2+1H]             
        mov     rdx, qword [rbp+10H]               
        mov     eax, dword [rbp-0CH]                
        cdqe                                          
        mov     byte [rdx+rax], cl                   
?_014:  add     dword [rbp-10H], 1                    
?_015:  cmp     dword [rbp-10H], 61                    
        jle     ?_013                             
        add     dword [rbp-0CH], 1                    
?_016:  mov     eax, dword [rbp-0CH]                 
        cmp     eax, dword [rbp+20H]                    
        jl      ?_012                                
        nop                                           
        leave                                        
        ret     
; InSymbolsEncryption End of function

InRndSymbolsEncryption:                                 ; // Случайный ввод строки и параметров шифрования.
        push    rbp                               
        mov     rbp, rsp                             
        sub     rsp, 48                            
        mov     qword [rbp+10H], rcx                    
        mov     qword [rbp+18H], rdx               
        mov     dword [rbp+20H], r8d                  
        mov     rcx, qword [rbp+10H]                   
        call    InitSymbolsEncryption                 
        mov     dword [rbp-4H], 0                   
        jmp     ?_018                              

?_017:  call    rand                                
        mov     ecx, eax                               
        mov     edx, 2216757315                       
        mov     eax, ecx                        
        imul    edx                               
        lea     eax, [rdx+rcx]                        
        sar     eax, 5                                
        mov     edx, eax                              
        mov     eax, ecx                              
        sar     eax, 31                                 
        sub     edx, eax                           
        mov     eax, edx                             
        mov     dword [rbp-10H], eax                  
        mov     eax, dword [rbp-10H]                
        mov     edx, eax                        
        lea     eax, [rdx+rdx]                  
        mov     edx, eax                        
        mov     eax, edx                        
        shl     eax, 5                                
        sub     eax, edx                           
        sub     ecx, eax                              
        mov     eax, ecx                            
        mov     dword [rbp-10H], eax                  
        mov     eax, dword [rbp-10H]             
        movsxd  rdx, eax                        
        lea     rax, [rel alphanum.3946]        
        movzx   edx, byte [rdx+rax]                
        mov     rax, qword [rbp+10H]                 
        mov     ecx, dword [rbp-4H]                   
        movsxd  rcx, ecx                               
        add     rcx, 32                                
        mov     byte [rax+rcx*2+1H], dl                 
        add     dword [rbp-4H], 1                       
?_018:  cmp     dword [rbp-4H], 61                    
        jle     ?_017                                  
        mov     dword [rbp-8H], 0                      
        jmp     ?_023                                 

?_019:  mov     dword [rbp-0CH], 0                      
        jmp     ?_022                                  

?_020:  mov     eax, dword [rbp-8H]                  
        movsxd  rdx, eax                             
        mov     rax, qword [rbp+18H]                
        add     rax, rdx                             
        movzx   edx, byte [rax]                      
        mov     rax, qword [rbp+10H]                  
        mov     ecx, dword [rbp-0CH]                  
        movsxd  rcx, ecx                            
        add     rcx, 32                                
        movzx   eax, byte [rax+rcx*2]                  
        cmp     dl, al                                
        jnz     ?_021                                 
        mov     rax, qword [rbp+10H]                 
        mov     edx, dword [rbp-0CH]                
        movsxd  rdx, edx                         
        add     rdx, 32                                
        movzx   ecx, byte [rax+rdx*2+1H]              
        mov     rdx, qword [rbp+10H]                 
        mov     eax, dword [rbp-8H]                   
        cdqe                                 
        mov     byte [rdx+rax], cl               
?_021:  add     dword [rbp-0CH], 1                   
?_022:  cmp     dword [rbp-0CH], 61                     
        jle     ?_020                           
        add     dword [rbp-8H], 1                    
?_023:  mov     eax, dword [rbp-8H]                 
        cmp     eax, dword [rbp+20H]              
        jl      ?_019                          
        lea     rax, [rel ?_107]                      
        mov     ecx, eax             
        mov     rdx, qword [rbp+10H]                   
        mov     eax, dword [rbp+20H]                
        cdqe                                       
        mov     byte [rdx+rax], cl                    
        nop                                       
        leave                           
        ret   
; InRndSymbolsEncryption End of function

OutSymbolsEncryption:                                   ; Вывод зашифрованной строки
        push    rbp                               
        mov     rbp, rsp                          
        sub     rsp, 48                               
        mov     qword [rbp+10H], rcx               
        mov     dword [rbp+18H], edx              
        mov     qword [rbp+20H], r8                
        mov     rax, qword [rbp+20H]                
        mov     r9, rax                           
        mov     r8d, 26                               
        mov     edx, 1                             
        lea     rcx, [rel ?_108]                      
        call    fwrite                              
        mov     dword [rbp-4H], 0                  
        jmp     ?_025                              

?_024:  mov     rdx, qword [rbp+10H]      
        mov     eax, dword [rbp-4H]                
        cdqe                                       
        movzx   eax, byte [rdx+rax]       
        movsx   eax, al                    
        mov     rdx, qword [rbp+20H]
        mov     ecx, eax                             
        call    fputc                    
        add     dword [rbp-4H], 1                  
?_025:  mov     eax, dword [rbp-4H]                   
        cmp     eax, dword [rbp+18H]                  
        jl      ?_024                           
        mov     rax, qword [rbp+20H]                    
        mov     r9, rax                            
        mov     r8d, 2                            
        mov     edx, 1                           
        lea     rcx, [rel ?_109]                    
        call    fwrite                              
        nop                                   
        leave                                     
        ret                                         
; OutSymbolsEncryption End of function

InitNumbersEncryption:                                  ; Инициализация массива пар [символ, число]
        push    rbp                                   
        mov     rbp, rsp                           
        sub     rsp, 16                               
        mov     qword [rbp+10H], rcx                 
        mov     dword [rbp-4H], 0                       
        mov     dword [rbp-8H], 0         
        jmp     ?_027                                 

?_026:  mov     eax, dword [rbp-8H]             
        add     eax, 48                              
        mov     ecx, eax                           
        mov     rax, qword [rbp+10H]                    
        mov     edx, dword [rbp-4H]         
        movsxd  rdx, edx                             
        add     rdx, 32                            
        mov     byte [rax+rdx*8], cl            
        mov     rax, qword [rbp+10H]                  
        mov     edx, dword [rbp-4H]                   
        movsxd  rdx, edx                             
        add     rdx, 32                              
        mov     dword [rax+rdx*8+4H], 0          
        add     dword [rbp-4H], 1                 
        add     dword [rbp-8H], 1                  
?_027:  cmp     dword [rbp-8H], 9                   
        jle     ?_026                            
        mov     dword [rbp-0CH], 17                  
        jmp     ?_029                               

?_028:  mov     eax, dword [rbp-0CH]                
        add     eax, 48                                 
        mov     ecx, eax                       
        mov     rax, qword [rbp+10H]                   
        mov     edx, dword [rbp-4H]                 
        movsxd  rdx, edx                             
        add     rdx, 32                              
        mov     byte [rax+rdx*8], cl              
        mov     rax, qword [rbp+10H]                   
        mov     edx, dword [rbp-4H]                
        movsxd  rdx, edx                           
        add     rdx, 32                               
        mov     dword [rax+rdx*8+4H], 0                
        add     dword [rbp-4H], 1                       
        add     dword [rbp-0CH], 1                    
?_029:  cmp     dword [rbp-0CH], 42                
        jle     ?_028                            
        mov     dword [rbp-10H], 49                  
        jmp     ?_031                             

?_030:  mov     eax, dword [rbp-10H]                
        add     eax, 48                                
        mov     ecx, eax               
        mov     rax, qword [rbp+10H]                    
        mov     edx, dword [rbp-4H]                  
        movsxd  rdx, edx                          
        add     rdx, 32                             
        mov     byte [rax+rdx*8], cl             
        mov     rax, qword [rbp+10H]                  
        mov     edx, dword [rbp-4H]                 
        movsxd  rdx, edx                              
        add     rdx, 32                             
        mov     dword [rax+rdx*8+4H], 0               
        add     dword [rbp-4H], 1                 
        add     dword [rbp-10H], 1                  
?_031:  cmp     dword [rbp-10H], 74                   
        jle     ?_030                
        nop                                             
        leave                                   
        ret                                       
; InitNumbersEncryption End of function

InNumbersEncryption:                                    ; Ввод исходной строки и параметров шифрования из файла
        push    rbp                                 
        mov     rbp, rsp                             
        sub     rsp, 64                            
        mov     qword [rbp+10H], rcx                
        mov     qword [rbp+18H], rdx                 
        mov     dword [rbp+20H], r8d                 
        mov     qword [rbp+28H], r9                 
        mov     rcx, qword [rbp+10H]               
        call    InitNumbersEncryption             
        lea     rdx, [rbp-14H]                      
        mov     rax, qword [rbp+28H]                
        mov     r8, rdx                          
        lea     rdx, [rel ?_105]                    
        mov     rcx, rax                            
        call    fscanf                               
        mov     dword [rbp-4H], 0                     
        jmp     ?_036                               

?_032:  lea     rcx, [rbp-1CH]                      
        lea     rdx, [rbp-15H]                          
        mov     rax, qword [rbp+28H]                 
        mov     r9, rcx                               
        mov     r8, rdx                            
        lea     rdx, [rel ?_110]               
        mov     rcx, rax                  
        call    fscanf                            
        mov     dword [rbp-8H], 0                       
        jmp     ?_035                          

?_033:  mov     rax, qword [rbp+10H]                 
        mov     edx, dword [rbp-8H]             
        movsxd  rdx, edx                         
        add     rdx, 32                            
        movzx   edx, byte [rax+rdx*8]           
        movzx   eax, byte [rbp-15H]                
        cmp     dl, al                           
        jnz     ?_034                          
        mov     edx, dword [rbp-1CH]               
        mov     rax, qword [rbp+10H]                
        mov     ecx, dword [rbp-8H]                
        movsxd  rcx, ecx                        
        add     rcx, 32                                 
        mov     dword [rax+rcx*8+4H], edx            
?_034:  add     dword [rbp-8H], 1                      
?_035:  cmp     dword [rbp-8H], 61                  
        jle     ?_033                                   
        add     dword [rbp-4H], 1                       
?_036:  mov     eax, dword [rbp-14H]               
        cmp     dword [rbp-4H], eax                    
        jl      ?_032                             
        mov     dword [rbp-0CH], 0                     
        jmp     ?_041                              

?_037:  mov     dword [rbp-10H], 0                  
        jmp     ?_040                        

?_038:  mov     eax, dword [rbp-0CH]              
        movsxd  rdx, eax                            
        mov     rax, qword [rbp+18H]               
        add     rax, rdx                           
        movzx   edx, byte [rax]              
        mov     rax, qword [rbp+10H]             
        mov     ecx, dword [rbp-10H]           
        movsxd  rcx, ecx                       
        add     rcx, 32                                 
        movzx   eax, byte [rax+rcx*8]            
        cmp     dl, al                             
        jnz     ?_039                          
        mov     rax, qword [rbp+10H]                    
        mov     edx, dword [rbp-10H]              
        movsxd  rdx, edx                            
        add     rdx, 32                   
        mov     ecx, dword [rax+rdx*8+4H]               
        mov     rax, qword [rbp+10H]             
        mov     edx, dword [rbp-0CH]                  
        movsxd  rdx, edx                             
        mov     dword [rax+rdx*4], ecx           
?_039:  add     dword [rbp-10H], 1                    
?_040:  cmp     dword [rbp-10H], 61                
        jle     ?_038                            
        add     dword [rbp-0CH], 1                
?_041:  mov     eax, dword [rbp-0CH]              
        cmp     eax, dword [rbp+20H]                
        jl      ?_037                     
        nop                                        
        leave                                    
        ret                                       
; InNumbersEncryption End of function

InRndNumbersEncryption:                                 ; Случайный ввод строки и параметров шифрования.
        push    rbp                                
        mov     rbp, rsp                               
        sub     rsp, 48                            
        mov     qword [rbp+10H], rcx                
        mov     qword [rbp+18H], rdx            
        mov     dword [rbp+20H], r8d                  
        mov     rcx, qword [rbp+10H]                 
        call    InitNumbersEncryption             
        mov     dword [rbp-4H], 0                     
        jmp     ?_043                          

?_042:  call    rand                               
        mov     ecx, eax                            
        mov     edx, 274877907                         
        mov     eax, ecx                              
        imul    edx                               
        sar     edx, 6                                
        mov     eax, ecx                         
        sar     eax, 31                               
        sub     edx, eax                         
        mov     eax, edx                          
        mov     dword [rbp-10H], eax               
        mov     eax, dword [rbp-10H]                  
        imul    eax, eax, 1000              
        sub     ecx, eax                           
        mov     eax, ecx                           
        mov     dword [rbp-10H], eax                 
        mov     rax, qword [rbp+10H]      
        mov     edx, dword [rbp-4H]                    
        movsxd  rdx, edx                            
        lea     rcx, [rdx+20H]                        
        mov     edx, dword [rbp-10H]                
        mov     dword [rax+rcx*8+4H], edx              
        add     dword [rbp-4H], 1               
?_043:  cmp     dword [rbp-4H], 61            
        jle     ?_042                                
        mov     dword [rbp-8H], 0                     
        jmp     ?_048                            

?_044:  mov     dword [rbp-0CH], 0                 
        jmp     ?_047                     
?_045:  mov     eax, dword [rbp-8H]                 
        movsxd  rdx, eax                         
        mov     rax, qword [rbp+18H]                
        add     rax, rdx                  
        movzx   edx, byte [rax]                     
        mov     rax, qword [rbp+10H]                    
        mov     ecx, dword [rbp-0CH]                   
        movsxd  rcx, ecx                          
        add     rcx, 32                             
        movzx   eax, byte [rax+rcx*8]                   
        cmp     dl, al                              
        jnz     ?_046                               
        mov     rax, qword [rbp+10H]                  
        mov     edx, dword [rbp-0CH]                 
        movsxd  rdx, edx                          
        add     rdx, 32                           
        mov     ecx, dword [rax+rdx*8+4H]            
        mov     rax, qword [rbp+10H]                  
        mov     edx, dword [rbp-8H]                 
        movsxd  rdx, edx                            
        mov     dword [rax+rdx*4], ecx                
?_046:  add     dword [rbp-0CH], 1              
?_047:  cmp     dword [rbp-0CH], 61                     
        jle     ?_045                               
        add     dword [rbp-8H], 1          
?_048:  mov     eax, dword [rbp-8H]                    
        cmp     eax, dword [rbp+20H]               
        jl      ?_044                               
        nop                                       
        leave                          
        ret                                    
; InRndNumbersEncryption End of function

OutNumbersEncryption:                                   ; Вывод зашифрованной строки
        push    rbp                                  
        mov     rbp, rsp                            
        sub     rsp, 48                              
        mov     qword [rbp+10H], rcx                 
        mov     dword [rbp+18H], edx               
        mov     qword [rbp+20H], r8                   
        mov     rax, qword [rbp+20H]                  
        mov     r9, rax                         
        mov     r8d, 26                                
        mov     edx, 1                           
        lea     rcx, [rel ?_108]                      
        call    fwrite                              
        mov     dword [rbp-4H], 0                    
        jmp     ?_050                              

?_049:  mov     rax, qword [rbp+10H]               
        mov     edx, dword [rbp-4H]               
        movsxd  rdx, edx                            
        mov     edx, dword [rax+rdx*4]              
        mov     rax, qword [rbp+20H]                   
        mov     r8d, edx                          
        lea     rdx, [rel ?_111]          
        mov     rcx, rax                            
        call    fprintf                                 
        add     dword [rbp-4H], 1                  
?_050:  mov     eax, dword [rbp-4H]                  
        cmp     eax, dword [rbp+18H]                 
        jl      ?_049                                 
        mov     rax, qword [rbp+20H]                 
        mov     r9, rax                            
        mov     r8d, 2                           
        mov     edx, 1                           
        lea     rcx, [rel ?_109]              
        call    fwrite                     
        nop                                      
        leave                                     
        ret                                        
; OutNumbersEncryption End of function

InCyclicShiftEncryption:                                ; Ввод исходной строки и параметров шифрования из файла
        push    rbp                                   
        mov     rbp, rsp                            
        sub     rsp, 48                             
        mov     qword [rbp+10H], rcx               
        mov     qword [rbp+18H], rdx              
        mov     dword [rbp+20H], r8d                  
        mov     qword [rbp+28H], r9                
        mov     rax, qword [rbp+10H]                
        lea     rdx, [rax+40H]                        
        mov     rax, qword [rbp+28H]                   
        mov     r8, rdx                              
        lea     rdx, [rel ?_111]                       
        mov     rcx, rax                    
        call    fscanf                               
        mov     dword [rbp-4H], 0                
        jmp     ?_052                               

?_051:  mov     eax, dword [rbp-4H]               
        movsxd  rdx, eax                          
        mov     rax, qword [rbp+18H]                  
        add     rax, rdx                           
        movzx   eax, byte [rax]                   
        mov     edx, eax                     
        mov     rax, qword [rbp+10H]                
        movzx   eax, word [rax+40H]               
        add     eax, edx                      
        mov     ecx, eax                           
        mov     rdx, qword [rbp+10H]              
        mov     eax, dword [rbp-4H]                
        cdqe                                  
        mov     byte [rdx+rax], cl                    
        add     dword [rbp-4H], 1                    
?_052:  mov     eax, dword [rbp-4H]           
        cmp     eax, dword [rbp+20H]               
        jl      ?_051                                 
        nop                                         
        leave                                    
        ret                                             
; InCyclicShiftEncryption End of function

InRndCyclicShiftEncryption:                             ; Случайный ввод строки и параметров шифрования.
        push    rbp                                
        mov     rbp, rsp                              
        sub     rsp, 48                            
        mov     qword [rbp+10H], rcx              
        mov     qword [rbp+18H], rdx                    
        mov     dword [rbp+20H], r8d                
        call    rand                                 
        mov     ecx, eax                       
        mov     edx, 274877907                  
        mov     eax, ecx                          
        imul    edx                                 
        sar     edx, 6                               
        mov     eax, ecx                        
        sar     eax, 31                             
        sub     edx, eax                         
        mov     eax, edx                       
        imul    eax, eax, 1000                     
        sub     ecx, eax                            
        mov     eax, ecx                           
        mov     edx, eax                           
        mov     rax, qword [rbp+10H]              
        mov     word [rax+40H], dx                 
        mov     dword [rbp-4H], 0                     
        jmp     ?_054                           

?_053:  mov     eax, dword [rbp-4H]                  
        movsxd  rdx, eax                         
        mov     rax, qword [rbp+18H]                
        add     rax, rdx                           
        movzx   eax, byte [rax]             
        mov     edx, eax                          
        mov     rax, qword [rbp+10H]              
        movzx   eax, word [rax+40H]                   
        add     eax, edx                         
        mov     ecx, eax                        
        mov     rdx, qword [rbp+10H]               
        mov     eax, dword [rbp-4H]                 
        cdqe                                   
        mov     byte [rdx+rax], cl               
        add     dword [rbp-4H], 1                   
?_054:  mov     eax, dword [rbp-4H]                   
        cmp     eax, dword [rbp+20H]                   
        jl      ?_053                           
        nop                                           
        leave                                       
        ret                                        
; InRndCyclicShiftEncryption End of function

OutCyclicShiftEncryption:                               ; Вывод зашифрованной строки
        push    rbp                                   
        mov     rbp, rsp                           
        sub     rsp, 48                        
        mov     qword [rbp+10H], rcx               
        mov     dword [rbp+18H], edx            
        mov     qword [rbp+20H], r8               
        mov     rax, qword [rbp+20H]                
        mov     r9, rax                            
        mov     r8d, 26                               
        mov     edx, 1                            
        lea     rcx, [rel ?_108]                      
        call    fwrite                               
        mov     dword [rbp-4H], 0                   
        jmp     ?_056                           

?_055:  mov     rdx, qword [rbp+10H]             
        mov     eax, dword [rbp-4H]               
        cdqe                                  
        movzx   eax, byte [rdx+rax]                 
        movsx   eax, al                        
        mov     rdx, qword [rbp+20H]                 
        mov     ecx, eax                      
        call    fputc                                
        add     dword [rbp-4H], 1             
?_056:  mov     eax, dword [rbp-4H]               
        cmp     eax, dword [rbp+18H]                   
        jl      ?_055                               
        mov     rax, qword [rbp+20H]                    
        mov     r9, rax                                 
        mov     r8d, 2                               
        mov     edx, 1                               
        lea     rcx, [rel ?_109]                   
        call    fwrite                                 
        nop                                      
        leave                                       
        ret                                        
; OutCyclicShiftEncryption End of function

In:                                                     ; Ввод обобщенной фигуры
        push    rbp                                    
        mov     rbp, rsp                            
        push    rdi                            
        push    rsi                               
        sub     rsp, 880                             
        mov     qword [rbp+10H], rcx               
        mov     qword [rbp+18H], rdx               
        lea     rcx, [rbp-358H]                      
        lea     rdx, [rbp-354H]                    
        mov     rax, qword [rbp+18H]             
        mov     r9, rcx                    
        mov     r8, rdx                            
        lea     rdx, [rel ?_112]                   
        mov     rcx, rax                     
        call    fscanf                           
        mov     eax, dword [rbp-358H]              
        cmp     eax, 256                          
        jg      ?_057                       
        mov     eax, dword [rbp-358H]                   
        test    eax, eax                        
        jns     ?_058                                  
?_057:  lea     rcx, [rel ?_113]              
        call    puts                                   
        mov     dword [rbp-358H], 0               
        mov     rax, qword [rbp+10H]                    
        mov     rdx, rax                           
        lea     rax, [rbp-350H]                         
        mov     ecx, 824                             
        mov     r8, qword [rax]                   
        mov     qword [rdx], r8                
        mov     r8d, ecx                            
        add     r8, rdx                         
        lea     r9, [r8+8H]                        
        mov     r8d, ecx                             
        add     r8, rax                  
        add     r8, 8                             
        mov     r8, qword [r8-10H]                
        mov     qword [r9-10H], r8               
        lea     r8, [rdx+8H]                       
        and     r8, 0FFFFFFFFFFFFFFF8H                 
        sub     rdx, r8                             
        sub     rax, rdx                        
        add     ecx, edx                         
        and     ecx, 0FFFFFFF8H                     
        shr     ecx, 3                         
        mov     edx, ecx                        
        mov     edx, edx                          
        mov     rdi, r8                           
        mov     rsi, rax                          
        mov     rcx, rdx                          
        rep movsq                                 
        jmp     ?_063                                   

?_058:  mov     eax, dword [rbp-358H]                 
        mov     dword [rbp-1CH], eax                 
        mov     eax, dword [rbp-358H]     
        test    eax, eax                             
        jz      ?_059                                 
        lea     rax, [rbp-350H]                         
        lea     rdx, [rax+2F4H]                         
        mov     rax, qword [rbp+18H]                  
        mov     r8, rdx                               
        lea     rdx, [rel ?_114]                      
        mov     rcx, rax                              
        call    fscanf                              
?_059:  mov     eax, dword [rbp-354H]                 
        cmp     eax, 2                          
        je      ?_060                            
        cmp     eax, 3                             
        je      ?_061                              
        cmp     eax, 1                             
        jne     ?_062                              
        mov     dword [rbp-350H], 0               
        mov     ecx, dword [rbp-358H]                 
        mov     r8, qword [rbp+18H]                
        lea     rax, [rbp-350H]                       
        lea     rdx, [rax+2F4H]                      
        lea     rax, [rbp-350H]                     
        add     rax, 4                             
        mov     r9, r8                       
        mov     r8d, ecx                  
        mov     rcx, rax                         
        call    InCyclicShiftEncryption             
        lea     rcx, [rel ?_115]                       
        call    printf                                
        lea     rax, [rbp-350H]                   
        add     rax, 756                           
        mov     rcx, rax                 
        call    printf                               
        lea     rcx, [rel ?_116]                  
        call    puts                            
        mov     rax, qword [rbp+10H]                
        mov     rdx, rax                            
        lea     rax, [rbp-350H]             
        mov     ecx, 824                              
        mov     r8, qword [rax]              
        mov     qword [rdx], r8                        
        mov     r8d, ecx                        
        add     r8, rdx                            
        lea     r9, [r8+8H]                         
        mov     r8d, ecx                     
        add     r8, rax                       
        add     r8, 8                              
        mov     r8, qword [r8-10H]               
        mov     qword [r9-10H], r8     
        lea     r8, [rdx+8H]                   
        and     r8, 0FFFFFFFFFFFFFFF8H            
        sub     rdx, r8                               
        sub     rax, rdx                          
        add     ecx, edx                      
        and     ecx, 0FFFFFFF8H                      
        mov     edx, ecx                         
        shr     edx, 3                                  
        mov     edx, edx                             
        mov     rdi, r8                        
        mov     rsi, rax                          
        mov     rcx, rdx                            
        rep movsq                                   
        jmp     ?_063                        

?_060:  mov     dword [rbp-350H], 1                   
        mov     ecx, dword [rbp-358H]                 
        mov     r8, qword [rbp+18H]         
        lea     rax, [rbp-350H]                        
        lea     rdx, [rax+2F4H]                 
        lea     rax, [rbp-350H]                     
        add     rax, 4                                
        mov     r9, r8                                 
        mov     r8d, ecx                              
        mov     rcx, rax                               
        call    InNumbersEncryption                   
        lea     rcx, [rel ?_115]                        
        call    printf                                
        lea     rax, [rbp-350H]                        
        add     rax, 756                                
        mov     rcx, rax                                
        call    printf                                  
        lea     rcx, [rel ?_116]                        
        call    puts                                  
        mov     rax, qword [rbp+10H]                
        mov     rdx, rax                         
        lea     rax, [rbp-350H]                        
        mov     ecx, 824                          
        mov     r8, qword [rax]                   
        mov     qword [rdx], r8                
        mov     r8d, ecx                           
        add     r8, rdx                         
        lea     r9, [r8+8H]                           
        mov     r8d, ecx                             
        add     r8, rax                           
        add     r8, 8                              
        mov     r8, qword [r8-10H]                 
        mov     qword [r9-10H], r8                   
        lea     r8, [rdx+8H]                         
        and     r8, 0FFFFFFFFFFFFFFF8H           
        sub     rdx, r8                            
        sub     rax, rdx                            
        add     ecx, edx                         
        and     ecx, 0FFFFFFF8H                  
        shr     ecx, 3                             
        mov     edx, ecx                          
        mov     edx, edx                      
        mov     rdi, r8                           
        mov     rsi, rax                           
        mov     rcx, rdx                              
        rep movsq                                
        jmp     ?_063                                  

?_061:  mov     dword [rbp-350H], 2                     
        mov     ecx, dword [rbp-358H]              
        mov     r8, qword [rbp+18H]                
        lea     rax, [rbp-350H]                      
        lea     rdx, [rax+2F4H]                       
        lea     rax, [rbp-350H]                       
        add     rax, 4                            
        mov     r9, r8                               
        mov     r8d, ecx                            
        mov     rcx, rax                        
        call    InSymbolsEncryption                
        lea     rcx, [rel ?_115]                
        call    printf                               
        lea     rax, [rbp-350H]                      
        add     rax, 756                             
        mov     rcx, rax                            
        call    printf                           
        lea     rcx, [rel ?_116]                       
        call    puts                             
        mov     rax, qword [rbp+10H]                
        mov     rdx, rax                          
        lea     rax, [rbp-350H]                        
        mov     ecx, 824                             
        mov     r8, qword [rax]                 
        mov     qword [rdx], r8                 
        mov     r8d, ecx                           
        add     r8, rdx                           
        lea     r9, [r8+8H]                            
        mov     r8d, ecx                             
        add     r8, rax                           
        add     r8, 8                                 
        mov     r8, qword [r8-10H]                   
        mov     qword [r9-10H], r8                  
        lea     r8, [rdx+8H]                        
        and     r8, 0FFFFFFFFFFFFFFF8H                 
        sub     rdx, r8                                
        sub     rax, rdx                             
        add     ecx, edx                           
        and     ecx, 0FFFFFFF8H                
        mov     edx, ecx                        
        shr     edx, 3                               
        mov     edx, edx                           
        mov     rdi, r8                             
        mov     rsi, rax                            
        mov     rcx, rdx                            
        rep movsq                                     
        jmp     ?_063                                 

?_062:  lea     rcx, [rel ?_117]                    
        call    puts                                 
        mov     ecx, 4294967295                
        call    exit                                 
?_063:  mov     rax, qword [rbp+10H]             
        add     rsp, 880                    
        pop     rsi                              
        pop     rdi                                
        pop     rbp                                 
        ret                             
; In End of function

InRnd:                                                  ; Случайный ввод обобщенной фигуры
        push    rbp                                    
        mov     rbp, rsp                           
        push    rdi                            
        push    rsi                          
        sub     rsp, 880                              
        mov     qword [rbp+10H], rcx                   
        mov     qword [rbp+18H], rdx                
        call    rand                                   
        mov     ecx, eax                      
        mov     edx, 2181570691                      
        mov     eax, ecx                         
        imul    edx                             
        lea     eax, [rdx+rcx]                      
        sar     eax, 5                                
        mov     edx, eax                              
        mov     eax, ecx                            
        sar     eax, 31                             
        sub     edx, eax                        
        mov     eax, edx                 
        mov     edx, eax                         
        shl     edx, 6                             
        sub     edx, eax                           
        mov     eax, ecx                             
        sub     eax, edx                                
        mov     dword [rbp-2CH], eax                
        mov     dword [rbp-14H], 0                      
        jmp     ?_065                               

?_064:  call    rand                                 
        mov     ecx, eax                     
        mov     edx, 2216757315                         
        mov     eax, ecx                            
        imul    edx                                    
        lea     eax, [rdx+rcx]    
        sar     eax, 5                               
        mov     edx, eax                         
        mov     eax, ecx                          
        sar     eax, 31                              
        sub     edx, eax                            
        mov     eax, edx                          
        mov     dword [rbp-18H], eax               
        mov     eax, dword [rbp-18H]       
        mov     edx, eax                            
        lea     eax, [rdx+rdx]                        
        mov     edx, eax                          
        mov     eax, edx                           
        shl     eax, 5                                 
        sub     eax, edx                         
        sub     ecx, eax                           
        mov     eax, ecx                          
        mov     dword [rbp-18H], eax                    
        mov     eax, dword [rbp-18H]                    
        movsxd  rdx, eax                              
        lea     rax, [rel alphanum.4102]           
        movzx   edx, byte [rdx+rax]           
        mov     eax, dword [rbp-14H]              
        cdqe                                    
        mov     byte [rbp+rax-6CH], dl             
        add     dword [rbp-14H], 1                 
?_065:  mov     eax, dword [rbp-2CH]              
        cmp     eax, dword [rbp-14H]                 
        jg      ?_064                           
        call    rand                                  
        mov     ecx, eax                         
        mov     edx, 1431655766                  
        mov     eax, ecx                        
        imul    edx                          
        mov     eax, ecx                            
        sar     eax, 31                              
        sub     edx, eax                            
        mov     eax, edx                            
        add     eax, eax                            
        add     eax, edx                               
        sub     ecx, eax                              
        mov     edx, ecx                         
        lea     eax, [rdx+1H]                      
        mov     dword [rbp-1CH], eax           
        mov     eax, dword [rbp-1CH]    
        cmp     eax, 2                                 
        je      ?_067                                  
        cmp     eax, 3                                 
        je      ?_068                                   
        cmp     eax, 1                        
        jz      ?_066                              
        jmp     ?_069                             

?_066:  mov     dword [rbp-360H], 0                  
        mov     ecx, dword [rbp-2CH]             
        lea     rax, [rbp-360H]                    
        lea     rdx, [rax+2F4H]                         
        lea     rax, [rbp-360H]                      
        add     rax, 4                                  
        mov     r8d, ecx                         
        mov     rcx, rax                             
        call    InRndCyclicShiftEncryption         
        mov     rax, qword [rbp+10H]                    
        mov     rdx, rax                             
        lea     rax, [rbp-360H]                        
        mov     ecx, 824                              
        mov     r8, qword [rax]                   
        mov     qword [rdx], r8                   
        mov     r8d, ecx                         
        add     r8, rdx                             
        lea     r9, [r8+8H]                           
        mov     r8d, ecx                          
        add     r8, rax                            
        add     r8, 8                            
        mov     r8, qword [r8-10H]               
        mov     qword [r9-10H], r8                 
        lea     r8, [rdx+8H]                    
        and     r8, 0FFFFFFFFFFFFFFF8H                 
        sub     rdx, r8                         
        sub     rax, rdx                        
        add     ecx, edx                      
        and     ecx, 0FFFFFFF8H                   
        shr     ecx, 3                               
        mov     edx, ecx                         
        mov     edx, edx                         
        mov     rdi, r8                           
        mov     rsi, rax                         
        mov     rcx, rdx                             
        rep movsq                                    
        jmp     ?_069                                

?_067:  mov     dword [rbp-360H], 1                     
        mov     ecx, dword [rbp-2CH]                  
        lea     rax, [rbp-360H]                         
        lea     rdx, [rax+2F4H]                  
        lea     rax, [rbp-360H]                      
        add     rax, 4                             
        mov     r8d, ecx                        
        mov     rcx, rax                         
        call    InRndNumbersEncryption           
        mov     rax, qword [rbp+10H]                
        mov     rdx, rax                         
        lea     rax, [rbp-360H]                       
        mov     ecx, 824                             
        mov     r8, qword [rax]                         
        mov     qword [rdx], r8              
        mov     r8d, ecx                              
        add     r8, rdx                             
        lea     r9, [r8+8H]                          
        mov     r8d, ecx                              
        add     r8, rax                             
        add     r8, 8                               
        mov     r8, qword [r8-10H]                  
        mov     qword [r9-10H], r8                  
        lea     r8, [rdx+8H]                           
        and     r8, 0FFFFFFFFFFFFFFF8H             
        sub     rdx, r8                                
        sub     rax, rdx                            
        add     ecx, edx                            
        and     ecx, 0FFFFFFF8H                       
        shr     ecx, 3                                
        mov     edx, ecx                           
        mov     edx, edx                                
        mov     rdi, r8                              
        mov     rsi, rax                                
        mov     rcx, rdx                             
        rep movsq                                   
        jmp     ?_069                            

?_068:  mov     dword [rbp-360H], 2                   
        mov     ecx, dword [rbp-2CH]              
        lea     rax, [rbp-360H]                     
        lea     rdx, [rax+2F4H]                       
        lea     rax, [rbp-360H]                         
        add     rax, 4                                 
        mov     r8d, ecx                             
        mov     rcx, rax                             
        call    InRndSymbolsEncryption           
        mov     rax, qword [rbp+10H]                  
        mov     rdx, rax                            
        lea     rax, [rbp-360H]                         
        mov     ecx, 824                          
        mov     r8, qword [rax]                      
        mov     qword [rdx], r8                    
        mov     r8d, ecx                             
        add     r8, rdx                            
        lea     r9, [r8+8H]                           
        mov     r8d, ecx                                
        add     r8, rax                               
        add     r8, 8                                
        mov     r8, qword [r8-10H]                    
        mov     qword [r9-10H], r8                      
        lea     r8, [rdx+8H]                            
        and     r8, 0FFFFFFFFFFFFFFF8H               
        sub     rdx, r8                             
        sub     rax, rdx                            
        add     ecx, edx                        
        and     ecx, 0FFFFFFF8H                    
        shr     ecx, 3                                
        mov     edx, ecx                       
        mov     edx, edx                        
        mov     rdi, r8                            
        mov     rsi, rax                    
        mov     rcx, rdx                        
        rep movsq                              
?_069:  mov     rax, qword [rbp+10H]                
        add     rsp, 880                                
        pop     rsi                            
        pop     rdi                                   
        pop     rbp                              
        ret                                          
; InRnd End of function

QuotientOfDivision:                                     ; Частное от деления суммы кодов незашифрованной строки на число символов в этой строке
        push    rbp                                  
        mov     rbp, rsp                             
        sub     rsp, 16                                 
        mov     qword [rbp+10H], rcx                   
        pxor    xmm0, xmm0                           
        movsd   qword [rbp-8H], xmm0                    
        mov     dword [rbp-0CH], 0                    
        jmp     ?_071                             

?_070:  mov     rdx, qword [rbp+10H]                
        mov     eax, dword [rbp-0CH]                
        cdqe                                   
        movzx   eax, byte [rdx+rax+2F4H]              
        movsx   eax, al                           
        pxor    xmm0, xmm0                           
        cvtsi2sd xmm0, eax                          
        movsd   xmm1, qword [rbp-8H]                    
        addsd   xmm0, xmm1                         
        movsd   qword [rbp-8H], xmm0                  
        add     dword [rbp-0CH], 1                   
?_071:  mov     rax, qword [rbp+10H]                 
        mov     eax, dword [rax+334H]                
        cmp     eax, dword [rbp-0CH]                 
        jg      ?_070                              
        mov     rax, qword [rbp+10H]                   
        mov     eax, dword [rax+334H]                   
        test    eax, eax                       
        jnz     ?_072                           
        pxor    xmm0, xmm0                           
        jmp     ?_073                           

?_072:  mov     rax, qword [rbp+10H]             
        mov     eax, dword [rax+334H]           
        pxor    xmm0, xmm0                     
        cvtsi2sd xmm0, eax                       
        movsd   xmm1, qword [rbp-8H]               
        divsd   xmm1, xmm0                         
        movapd  xmm0, xmm1                            
?_073:  leave                                    
        ret                                      
; QuotientOfDivision End of function

Out:                                                    ; Вывод обобщенной фигуры
        push    rbp                                
        mov     rbp, rsp                          
        sub     rsp, 64                              
        mov     qword [rbp+10H], rcx              
        mov     qword [rbp+18H], rdx             
        mov     rax, qword [rbp+18H]                  
        mov     r9, rax                         
        mov     r8d, 15                              
        mov     edx, 1                            
        lea     rcx, [rel ?_118]                       
        call    fwrite                             
        mov     dword [rbp-4H], 0                      
        jmp     ?_075                               

?_074:  mov     rdx, qword [rbp+10H]                  
        mov     eax, dword [rbp-4H]                
        cdqe                                    
        movzx   eax, byte [rdx+rax+2F4H]
        movsx   eax, al                                
        mov     rdx, qword [rbp+18H]               
        mov     ecx, eax                         
        call    fputc                               
        add     dword [rbp-4H], 1                    
?_075:  mov     rax, qword [rbp+10H]                 
        mov     eax, dword [rax+334H]                  
        cmp     eax, dword [rbp-4H]                 
        jg      ?_074                           
        mov     rax, qword [rbp+18H]                    
        mov     r9, rax                                
        mov     r8d, 2                                 
        mov     edx, 1                             
        lea     rcx, [rel ?_109]                       
        call    fwrite                               
        mov     rcx, qword [rbp+10H]                
        call    QuotientOfDivision                
        movq    rax, xmm0                            
        mov     rdx, rax                          
        mov     qword [rbp-18H], rdx               
        movsd   xmm1, qword [rbp-18H]                  
        mov     qword [rbp-18H], rax              
        movsd   xmm0, qword [rbp-18H]              
        mov     rax, qword [rbp+18H]              
        movapd  xmm2, xmm1                       
        movq    r8, xmm0                  
        lea     rdx, [rel ?_119]                    
        mov     rcx, rax                             
        call    fprintf                                 
        mov     rcx, qword [rbp+10H] 
        call    QuotientOfDivision                   
        movapd  xmm1, xmm0                         
        pxor    xmm0, xmm0                          
        ucomisd xmm0, xmm1                         
        jbe     ?_076                       
        mov     rcx, qword [rbp+10H]                
        call    QuotientOfDivision                  
?_076:  mov     rax, qword [rbp+10H]         
        mov     eax, dword [rax]                    
        cmp     eax, 1                               
        jz      ?_078                            
        cmp     eax, 1                              
        jc      ?_077                              
        cmp     eax, 2                                  
        jz      ?_079                                  
        jmp     ?_080                                

?_077:  mov     rax, qword [rbp+10H]           
        mov     eax, dword [rax+334H]           
        mov     rdx, qword [rbp+10H]                    
        lea     rcx, [rdx+4H]                       
        mov     rdx, qword [rbp+18H]              
        mov     r8, rdx                         
        mov     edx, eax                          
        call    OutCyclicShiftEncryption             
        jmp     ?_081                          

?_078:  mov     rax, qword [rbp+10H]               
        mov     eax, dword [rax+334H]                 
        mov     rdx, qword [rbp+10H]               
        lea     rcx, [rdx+4H]                    
        mov     rdx, qword [rbp+18H]                  
        mov     r8, rdx                             
        mov     edx, eax                          
        call    OutNumbersEncryption                
        jmp     ?_081                            

?_079:  mov     rax, qword [rbp+10H]               
        mov     eax, dword [rax+334H]                 
        mov     rdx, qword [rbp+10H]            
        lea     rcx, [rdx+4H]                        
        mov     rdx, qword [rbp+18H]              
        mov     r8, rdx                              
        mov     edx, eax                          
        call    OutSymbolsEncryption                    
        jmp     ?_081                              

?_080:  mov     rax, qword [rbp+18H]                
        mov     r9, rax                              
        mov     r8d, 21                               
        mov     edx, 1                              
        lea     rcx, [rel ?_120]                        
        call    fwrite                                
?_081:  nop                                      
        leave                                      
        ret                                         
; Out End of function

Init:                                                   ; Инициализация контейнера
        push    rbp                                
        mov     rbp, rsp                     
        mov     qword [rbp+10H], rcx                  
        mov     rax, qword [rbp+10H]                  
        mov     dword [rax], 0                         
        nop                                      
        pop     rbp                               
        ret                                          
; Init End of function

Clear:                                                  ; Очистка контейнера от элементов
        push    rbp                                
        mov     rbp, rsp                            
        mov     qword [rbp+10H], rcx                   
        mov     rax, qword [rbp+10H]                  
        mov     dword [rax], 0                          
        nop                                      
        pop     rbp                                  
        ret                                   
; Clear End of function

InContainer:                                            ; Ввод содержимого контейнера из указанного потока
        push    rbp                             
        mov     rbp, rsp                            
        push    rdi                              
        push    rsi                               
        push    rbx                            
        sub     rsp, 888                               
        mov     qword [rbp+10H], rcx                 
        mov     qword [rbp+18H], rdx                 
        lea     rdx, [rbp-28H]                     
        mov     rax, qword [rbp+18H]                 
        mov     r8, rdx                           
        lea     rdx, [rel ?_111]                      
        mov     rcx, rax                        
        call    fscanf                                
        mov     eax, dword [rbp-28H]                 
        cmp     eax, 1000                              
        jg      ?_082                            
        mov     eax, dword [rbp-28H]                   
        test    eax, eax                              
        jns     ?_083                              
?_082:  lea     rcx, [rel ?_121]                     
        call    puts                                
        mov     eax, dword [rbp-28H]                    
        cdqe                                         
        mov     rcx, rax                               
        call    printf                                
        jmp     ?_086                               

?_083:  mov     dword [rbp-24H], 0                     
        jmp     ?_085                          

?_084:  mov     rax, qword [rbp+10H]                 
        mov     eax, dword [rax]                 
        mov     rdx, qword [rbp+10H]                    
        cdqe                                       
        imul    rax, rax, 824                           
        lea     rbx, [rdx+rax]                          
        lea     rax, [rbp-370H]                         
        mov     rdx, qword [rbp+18H]                
        mov     rcx, rax                              
        call    In                                    
        lea     rax, [rbx+4H]                      
        lea     rdx, [rbp-370H]                      
        mov     ecx, 824                             
        mov     r8, qword [rdx]                    
        mov     qword [rax], r8                      
        mov     r8d, ecx                                
        add     r8, rax                         
        lea     r9, [r8+8H]                             
        mov     r8d, ecx                           
        add     r8, rdx                              
        add     r8, 8                                 
        mov     r8, qword [r8-10H]                   
        mov     qword [r9-10H], r8                      
        lea     r8, [rax+8H]                           
        and     r8, 0FFFFFFFFFFFFFFF8H                
        sub     rax, r8                                
        sub     rdx, rax                             
        add     ecx, eax                          
        and     ecx, 0FFFFFFF8H                      
        mov     eax, ecx                          
        shr     eax, 3                               
        mov     eax, eax                         
        mov     rdi, r8                                 
        mov     rsi, rdx                               
        mov     rcx, rax                              
        rep movsq                                       
        mov     rax, qword [rbp+10H]                    
        mov     eax, dword [rax]                 
        lea     edx, [rax+1H]                       
        mov     rax, qword [rbp+10H]                  
        mov     dword [rax], edx             
        add     dword [rbp-24H], 1                   
?_085:  mov     eax, dword [rbp-28H]             
        cmp     dword [rbp-24H], eax               
        jl      ?_084                                  
?_086:  add     rsp, 888                                
        pop     rbx                              
        pop     rsi                               
        pop     rdi                                   
        pop     rbp                                
        ret                                          
; InContainer End of function

InRndContainer:                                         ; Случайный ввод содержимого контейнера
        push    rbp                               
        mov     rbp, rsp                           
        push    rdi                             
        push    rsi                                
        push    rbx                            
        sub     rsp, 888                            
        mov     qword [rbp+10H], rcx              
        mov     dword [rbp+18H], edx            
        mov     dword [rbp-24H], 0                  
        jmp     ?_088                            

?_087:  mov     rax, qword [rbp+10H]               
        mov     eax, dword [rax]                    
        mov     rdx, qword [rbp+10H]                    
        cdqe                                     
        imul    rax, rax, 824                      
        lea     rbx, [rdx+rax]                       
        lea     rax, [rbp-370H]                    
        mov     rdx, qword [rbp+10H]                 
        mov     rcx, rax                           
        call    InRnd                                  
        lea     rax, [rbx+4H]                           
        lea     rdx, [rbp-370H]                        
        mov     ecx, 824                              
        mov     r8, qword [rdx]                    
        mov     qword [rax], r8                      
        mov     r8d, ecx                               
        add     r8, rax                                
        lea     r9, [r8+8H]                            
        mov     r8d, ecx                             
        add     r8, rdx                          
        add     r8, 8                              
        mov     r8, qword [r8-10H]                 
        mov     qword [r9-10H], r8                  
        lea     r8, [rax+8H]                       
        and     r8, 0FFFFFFFFFFFFFFF8H                 
        sub     rax, r8                            
        sub     rdx, rax                                
        add     ecx, eax                            
        and     ecx, 0FFFFFFF8H                        
        mov     eax, ecx                          
        shr     eax, 3                            
        mov     eax, eax                       
        mov     rdi, r8                               
        mov     rsi, rdx                             
        mov     rcx, rax                            
        rep movsq                                   
        mov     rax, qword [rbp+10H]           
        mov     eax, dword [rax]                      
        lea     edx, [rax+1H]             
        mov     rax, qword [rbp+10H]                 
        mov     dword [rax], edx                    
        add     dword [rbp-24H], 1             
?_088:  mov     eax, dword [rbp-24H]                    
        cmp     eax, dword [rbp+18H]                   
        jl      ?_087                           
        nop                                 
        add     rsp, 888                       
        pop     rbx                                
        pop     rsi                               
        pop     rdi                                   
        pop     rbp                                    
        ret                                       
; InRndContainer End of function

OutContainer:                                           ; Вывод содержимого контейнера в указанный поток
        push    rbp                                
        mov     rbp, rsp                            
        sub     rsp, 48                             
        mov     qword [rbp+10H], rcx                  
        mov     qword [rbp+18H], rdx                
        mov     rax, qword [rbp+10H]                 
        mov     edx, dword [rax]                 
        mov     rax, qword [rbp+18H]                    
        lea     r9, [rel ?_122]                    
        mov     r8d, edx                              
        lea     rdx, [rel ?_123]                       
        mov     rcx, rax                             
        call    fprintf                                 
        mov     dword [rbp-4H], 0                    
        jmp     ?_090                                 

?_089:  mov     rax, qword [rbp+18H]                   
        mov     r9, rax                            
        mov     r8d, 53                                
        mov     edx, 1                              
        lea     rcx, [rel ?_124]                
        call    fwrite                         
        mov     edx, dword [rbp-4H]          
        mov     rax, qword [rbp+18H]                 
        mov     r8d, edx                          
        lea     rdx, [rel ?_125]                      
        mov     rcx, rax                              
        call    fprintf                                
        mov     eax, dword [rbp-4H]        
        cdqe                                         
        imul    rdx, rax, 824                         
        mov     rax, qword [rbp+10H]               
        add     rax, rdx                          
        lea     rcx, [rax+4H]                         
        mov     rax, qword [rbp+18H]               
        mov     rdx, rax                         
        call    Out                              
        add     dword [rbp-4H], 1                     
?_090:  mov     rax, qword [rbp+10H]               
        mov     eax, dword [rax]                 
        cmp     eax, dword [rbp-4H]                    
        jg      ?_089                   
        nop                             
        leave                                     
        ret                                         
; OutContainer End of function

Heapify:                                                ; Рекурсивная функция для сортировки контейнера
        push    rbp                                
        mov     rbp, rsp                            
        push    rdi                             
        push    rsi                           
        sub     rsp, 896                            
        movaps  oword [rbp-20H], xmm6          
        mov     qword [rbp+10H], rcx                
        mov     dword [rbp+18H], edx                
        mov     dword [rbp+20H], r8d                  
        mov     eax, dword [rbp+20H]                   
        mov     dword [rbp-24H], eax      
        mov     eax, dword [rbp+20H]                   
        add     eax, eax                        
        add     eax, 1                                 
        mov     dword [rbp-28H], eax           
        mov     eax, dword [rbp+20H]          
        add     eax, 1                       
        add     eax, eax                         
        mov     dword [rbp-2CH], eax         
        mov     eax, dword [rbp-28H]               
        cmp     eax, dword [rbp+18H]         
        jge     ?_091                                 
        mov     eax, dword [rbp-28H]                   
        cdqe                                    
        imul    rdx, rax, 824                        
        mov     rax, qword [rbp+10H]                   
        add     rax, rdx                          
        mov     rcx, rax                          
        call    QuotientOfDivision                  
        movapd  xmm6, xmm0                          
        mov     eax, dword [rbp-24H]               
        cdqe                                      
        imul    rdx, rax, 824                           
        mov     rax, qword [rbp+10H]                 
        add     rax, rdx                         
        mov     rcx, rax                          
        call    QuotientOfDivision               
        ucomisd xmm0, xmm6                           
        jbe     ?_091                           
        mov     eax, dword [rbp-28H]                 
        mov     dword [rbp-24H], eax              
?_091:  mov     eax, dword [rbp-2CH]              
        cmp     eax, dword [rbp+18H]                   
        jge     ?_092                           
        mov     eax, dword [rbp-2CH]               
        cdqe                                     
        imul    rdx, rax, 824                           
        mov     rax, qword [rbp+10H]                   
        add     rax, rdx                             
        mov     rcx, rax                              
        call    QuotientOfDivision                      
        movapd  xmm6, xmm0                             
        mov     eax, dword [rbp-24H]                    
        cdqe                                     
        imul    rdx, rax, 824                           
        mov     rax, qword [rbp+10H]                   
        add     rax, rdx                             
        mov     rcx, rax                              
        call    QuotientOfDivision                   
        ucomisd xmm0, xmm6                            
        jbe     ?_092                                
        mov     eax, dword [rbp-2CH]                 
        mov     dword [rbp-24H], eax               
?_092:  mov     eax, dword [rbp-24H]                    
        cmp     eax, dword [rbp+20H]                  
        je      ?_093                         
        mov     eax, dword [rbp+20H]       
        cdqe                                    
        imul    rdx, rax, 824                      
        mov     rax, qword [rbp+10H]                 
        add     rdx, rax                         
        lea     rax, [rbp-370H]                         
        mov     r8, rdx                              
        mov     edx, 103                          
        mov     rdi, rax                           
        mov     rsi, r8                             
        mov     rcx, rdx                            
        rep movsq                                   
        mov     eax, dword [rbp+20H]                 
        cdqe                                       
        imul    rdx, rax, 824                       
        mov     rax, qword [rbp+10H]                    
        lea     rcx, [rdx+rax]              
        mov     eax, dword [rbp-24H]                    
        cdqe                                           
        imul    rdx, rax, 824                          
        mov     rax, qword [rbp+10H]                 
        add     rdx, rax                               
        mov     rax, rcx                              
        mov     ecx, 824                              
        mov     r8, qword [rdx]                    
        mov     qword [rax], r8                    
        mov     r8d, ecx                            
        add     r8, rax                          
        lea     r9, [r8+8H]                          
        mov     r8d, ecx                            
        add     r8, rdx                                
        add     r8, 8                               
        mov     r8, qword [r8-10H]                  
        mov     qword [r9-10H], r8                  
        lea     r8, [rax+8H]                            
        and     r8, 0FFFFFFFFFFFFFFF8H                
        sub     rax, r8                               
        sub     rdx, rax                            
        add     ecx, eax                           
        and     ecx, 0FFFFFFF8H                         
        mov     eax, ecx                            
        shr     eax, 3                                  
        mov     eax, eax                            
        mov     rdi, r8                               
        mov     rsi, rdx                            
        mov     rcx, rax                     
        rep movsq                                   
        mov     eax, dword [rbp-24H]                  
        cdqe                                 
        imul    rdx, rax, 824                         
        mov     rax, qword [rbp+10H]                    
        add     rax, rdx                              
        mov     rdx, rax                              
        lea     rax, [rbp-370H]                   
        mov     ecx, 824                          
        mov     r8, qword [rax]                   
        mov     qword [rdx], r8                   
        mov     r8d, ecx                          
        add     r8, rdx                           
        lea     r9, [r8+8H]                       
        mov     r8d, ecx                          
        add     r8, rax                           
        add     r8, 8                             
        mov     r8, qword [r8-10H]                
        mov     qword [r9-10H], r8                
        lea     r8, [rdx+8H]                      
        and     r8, 0FFFFFFFFFFFFFFF8H            
        sub     rdx, r8                           
        sub     rax, rdx                          
        add     ecx, edx                          
        and     ecx, 0FFFFFFF8H                   
        shr     ecx, 3                            
        mov     edx, ecx                          
        mov     edx, edx                          
        mov     rdi, r8                           
        mov     rsi, rax                          
        mov     rcx, rdx                          
        rep movsq                                 
        mov     edx, dword [rbp-24H]              
        mov     eax, dword [rbp+18H]              
        mov     r8d, edx                          
        mov     edx, eax                          
        mov     rcx, qword [rbp+10H]              
        call    Heapify                           
?_093:  nop                                       
        movaps  xmm6, oword [rbp-20H]             
        add     rsp, 896                          
        pop     rsi                               
        pop     rdi                               
        pop     rbp                               
        ret                                       
; Heapify End of function

HeapSort:                                               ; Сортировка элементов контейнера по убыванию с помощью "дерева"
        push    rbp                               
        mov     rbp, rsp                          
        push    rdi                               
        push    rsi                               
        sub     rsp, 864                          
        mov     qword [rbp+10H], rcx              
        mov     rax, qword [rbp+10H]              
        mov     eax, dword [rax]                  
        mov     edx, eax                          
        shr     edx, 31                           
        add     eax, edx                          
        sar     eax, 1                            
        sub     eax, 1                            
        mov     dword [rbp-14H], eax              
        jmp     ?_095                             

?_094:  mov     rax, qword [rbp+10H]              
        mov     eax, dword [rax]                  
        mov     rdx, qword [rbp+10H]              
        lea     rcx, [rdx+4H]                     
        mov     edx, dword [rbp-14H]              
        mov     r8d, edx                          
        mov     edx, eax                          
        call    Heapify                           
        sub     dword [rbp-14H], 1                
?_095:  cmp     dword [rbp-14H], 0                
        jns     ?_094                             
        mov     rax, qword [rbp+10H]              
        mov     eax, dword [rax]                  
        sub     eax, 1                            
        mov     dword [rbp-18H], eax              
        jmp     ?_097                             

?_096:  mov     rdx, qword [rbp+10H]              
        lea     rax, [rbp-350H]                   
        add     rdx, 4                            
        mov     ecx, 103                          
        mov     rdi, rax                          
        mov     rsi, rdx                          
        rep movsq                                 
        mov     rax, qword [rbp+10H]              
        mov     rcx, qword [rbp+10H]              
        mov     edx, dword [rbp-18H]              
        movsxd  rdx, edx                          
        imul    rdx, rdx, 824                     
        add     rdx, rcx                          
        add     rax, 4                            
        add     rdx, 4                            
        mov     ecx, 824                          
        mov     r8, qword [rdx]                   
        mov     qword [rax], r8                   
        mov     r8d, ecx                           
        add     r8, rax                            
        lea     r9, [r8+8H]                        
        mov     r8d, ecx                           
        add     r8, rdx                            
        add     r8, 8                              
        mov     r8, qword [r8-10H]                 
        mov     qword [r9-10H], r8                 
        lea     r8, [rax+8H]                       
        and     r8, 0FFFFFFFFFFFFFFF8H             
        sub     rax, r8                            
        sub     rdx, rax                           
        add     ecx, eax                           
        and     ecx, 0FFFFFFF8H                    
        mov     eax, ecx                           
        shr     eax, 3                             
        mov     eax, eax                           
        mov     rdi, r8                            
        mov     rsi, rdx                           
        mov     rcx, rax                           
        rep movsq                                  
        mov     rdx, qword [rbp+10H]               
        mov     eax, dword [rbp-18H]               
        cdqe                                       
        imul    rax, rax, 824                      
        add     rax, rdx                            
        add     rax, 4                              
        lea     rdx, [rbp-350H]                     
        mov     ecx, 824                            
        mov     r8, qword [rdx]                     
        mov     qword [rax], r8                     
        mov     r8d, ecx                            
        add     r8, rax                             
        lea     r9, [r8+8H]                         
        mov     r8d, ecx                            
        add     r8, rdx                             
        add     r8, 8                               
        mov     r8, qword [r8-10H]                  
        mov     qword [r9-10H], r8                  
        lea     r8, [rax+8H]                        
        and     r8, 0FFFFFFFFFFFFFFF8H              
        sub     rax, r8                             
        sub     rdx, rax                            
        add     ecx, eax                            
        and     ecx, 0FFFFFFF8H                     
        mov     eax, ecx                            
        shr     eax, 3                              
        mov     eax, eax                            
        mov     rdi, r8                             
        mov     rsi, rdx                            
        mov     rcx, rax                            
        rep movsq                                   
        mov     rax, qword [rbp+10H]                
        lea     rcx, [rax+4H]                       
        mov     eax, dword [rbp-18H]                
        mov     r8d, 0                              
        mov     edx, eax                            
        call    Heapify                             
        sub     dword [rbp-18H], 1                  
?_097:  cmp     dword [rbp-18H], 0                  
        jns     ?_096                               
        nop                                         
        add     rsp, 864                            
        pop     rsi                                 
        pop     rdi                                 
        pop     rbp                                 
        ret                                         
; HeapSort End of function

errMessage1:  
        push    rbp                                 
        mov     rbp, rsp                            
        sub     rsp, 32                             
        lea     rcx, [rel ?_126]                    
        call    puts                                
        nop                                         
        leave                                       
        ret                                         
; errMessage1 End of function

errMessage2:
        push    rbp                                 
        mov     rbp, rsp                            
        sub     rsp, 32                             
        lea     rcx, [rel ?_127]                    
        call    puts                                
        nop                                         
        leave                                       
        ret                                         
; errMessage2 End of function

main:                                             
        push    rbp                                 
        mov     rbp, rsp                            
        mov     eax, 824096                         
        call    ___chkstk_ms                        
        sub     rsp, rax                            
        mov     dword [rbp+10H], ecx                
        mov     qword [rbp+18H], rdx                
        call    __main                              
        cmp     dword [rbp+10H], 5                  
        jz      ?_098                               
        call    errMessage1                         
        mov     eax, 1                              
        jmp     ?_104                               

?_098:  lea     rcx, [rel ?_128]                    
        call    puts                                
        mov     ecx, 0                              
        call    time                                
        mov     ecx, eax                            
        call    srand                               
        lea     rax, [rbp-0C92F0H]                  
        mov     rcx, rax                            
        call    Init                                
        mov     rax, qword [rbp+18H]                
        add     rax, 8                              
        mov     rax, qword [rax]                    
        lea     rdx, [rel ?_129]                    
        mov     rcx, rax                            
        call    strcmp                              
        test    eax, eax                            
        jnz     ?_099                               
        mov     rax, qword [rbp+18H]                
        add     rax, 16                             
        mov     rax, qword [rax]                    
        lea     rdx, [rel ?_130]                    
        mov     rcx, rax                            
        call    fopen                               
        mov     qword [rbp-10H], rax                
        mov     rdx, qword [rbp-10H]                
        lea     rax, [rbp-0C92F0H]                  
        mov     rcx, rax                            
        call    InContainer                         
        jmp     ?_103                               

?_099:  mov     rax, qword [rbp+18H]           
        add     rax, 8                         
        mov     rax, qword [rax]               
        lea     rdx, [rel ?_131]               
        mov     rcx, rax                       
        call    strcmp                         
        test    eax, eax                       
        jnz     ?_102                          
        mov     rax, qword [rbp+18H]           
        add     rax, 16                        
        mov     rax, qword [rax]               
        mov     rcx, rax                       
        call    atoi                           
        mov     dword [rbp-4H], eax            
        cmp     dword [rbp-4H], 0              
        jle     ?_100                          
        cmp     dword [rbp-4H], 1000           
        jle     ?_101                          
?_100:  lea     rcx, [rel ?_132]               
        call    printf                         
        mov     eax, dword [rbp-4H]            
        mov     edx, eax                       
        lea     rcx, [rel ?_111]               
        call    printf                         
        lea     rcx, [rel ?_133]               
        call    puts                           
        mov     eax, 3                         
        jmp     ?_104                          

?_101:  mov     edx, dword [rbp-4H]            
        lea     rax, [rbp-0C92F0H]             
        mov     rcx, rax                       
        call    InRndContainer                 
        jmp     ?_103                          

?_102:  call    errMessage2                    
        mov     eax, 2                         
        jmp     ?_104                          

?_103:  mov     rax, qword [rbp+18H]           
        add     rax, 24                        
        mov     rax, qword [rax]               
        lea     rdx, [rel ?_134]               
        mov     rcx, rax                       
        call    fopen                          
        mov     qword [rbp-18H], rax           
        mov     rax, qword [rbp-18H]           
        mov     r9, rax                        
        mov     r8d, 18                        
        mov     edx, 1                         
        lea     rcx, [rel ?_135]               
        call    fwrite                         
        mov     rdx, qword [rbp-18H]           
        lea     rax, [rbp-0C92F0H]             
        mov     rcx, rax                       
        call    OutContainer                   
        mov     rax, qword [rbp+18H]           
        add     rax, 24                        
        mov     rax, qword [rax]               
        mov     rdx, rax                       
        lea     rcx, [rel ?_136]               
        call    printf                         
        lea     rax, [rbp-0C92F0H]             
        mov     rcx, rax                       
        call    HeapSort                       
        mov     rax, qword [rbp+18H]           
        add     rax, 32                        
        mov     rax, qword [rax]               
        lea     rdx, [rel ?_134]               
        mov     rcx, rax                       
        call    fopen                          
        mov     qword [rbp-20H], rax           
        mov     rax, qword [rbp-20H]           
        mov     r9, rax                        
        mov     r8d, 18                        
        mov     edx, 1                         
        lea     rcx, [rel ?_137]               
        call    fwrite                         
        mov     rdx, qword [rbp-20H]           
        lea     rax, [rbp-0C92F0H]             
        mov     rcx, rax                       
        call    OutContainer                   
        mov     rax, qword [rbp-20H]           
        mov     rcx, rax                       
        call    fclose                         
        mov     rax, qword [rbp+18H]           
        add     rax, 32                        
        mov     rax, qword [rax]               
        mov     rdx, rax                       
        lea     rcx, [rel ?_136]               
        call    printf                         
        lea     rcx, [rel ?_138]               
        call    puts                           
        call    clock                          
        pxor    xmm0, xmm0                     
        cvtsi2sd xmm0, eax                     
        movsd   xmm1, qword [rel ?_140]        
        divsd   xmm0, xmm1                     
        movq    rax, xmm0                      
        mov     rdx, rax                       
        mov     qword [rbp-0C92F8H], rdx       
        movsd   xmm0, qword [rbp-0C92F8H]      
        movapd  xmm1, xmm0                     
        mov     rdx, rax                       
        lea     rcx, [rel ?_139]               
        call    printf                         
        mov     eax, 0                         
?_104:  leave                                  
        ret                                    
; main End of function

        nop                                  
        nop                                  
        nop                                  
        nop                                  


SECTION .data   align=16                     


SECTION .bss    align=16                     


SECTION .rdata  align=32                     

?_105:                                       
        db 25H, 64H, 0AH, 00H                       

?_106:                                              
        db 25H, 63H, 20H, 25H, 63H, 0AH, 00H        

?_107:                                              
        db 00H, 00H                                 

?_108:                                                  ; "Result of the encryption"                                  
        db 52H, 65H, 73H, 75H, 6CH, 74H, 20H, 6FH     
        db 66H, 20H, 74H, 68H, 65H, 20H, 65H, 6EH      
        db 63H, 72H, 79H, 70H, 74H, 69H, 6FH, 6EH      
        db 3AH, 20H, 00H                               

?_109:                                                  
        db 2EH, 0AH, 00H                               

?_110:                                                 
        db 25H, 63H, 20H, 25H, 64H, 0AH, 00H           

?_111:                                                 
        db 25H, 64H, 00H                               

?_112:                                                 
        db 25H, 64H, 20H, 25H, 64H, 00H, 00H, 00H      
        db 00H, 00H, 00H                               

?_113:                                                  ; "Incorrect size of the input srting, the size is set to 0"
        db 49H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H      
        db 74H, 20H, 73H, 69H, 7AH, 65H, 20H, 6FH      
        db 66H, 20H, 74H, 68H, 65H, 20H, 69H, 6EH      
        db 70H, 75H, 74H, 20H, 73H, 74H, 72H, 69H      
        db 6EH, 67H, 2CH, 20H, 74H, 68H, 65H, 20H      
        db 73H, 69H, 7AH, 65H, 20H, 69H, 73H, 20H      
        db 73H, 65H, 74H, 20H, 74H, 6FH, 20H, 30H      
        db 00H                                         

?_114:                                                  
        db 25H, 73H, 00H                               

?_115:                                                  ; "String"
        db 53H, 74H, 72H, 69H, 6EH, 67H, 20H, 22H      
        db 00H                                         

?_116:                                                  ; "was encrypted"
        db 22H, 20H, 77H, 61H, 73H, 20H, 65H, 6EH      
        db 63H, 72H, 79H, 70H, 74H, 65H, 64H, 00H      
        db 00H, 00H, 00H                               

?_117:                                                  ; "Invalid input encryption type"
        db 49H, 6EH, 76H, 61H, 6CH, 69H, 64H, 20H      
        db 69H, 6EH, 70H, 75H, 74H, 20H, 65H, 6EH      
        db 63H, 72H, 79H, 70H, 74H, 69H, 6FH, 6EH      
        db 20H, 74H, 79H, 70H, 65H, 2EH, 00H           

?_118:                                                  ; "Input string = "
        db 49H, 6EH, 70H, 75H, 74H, 20H, 73H, 74H      
        db 72H, 69H, 6EH, 67H, 20H, 3DH, 20H, 00H      
        db 00H                                         

?_119:                                                  ; "The quotient of dividing the sum of "
        db 54H, 68H, 65H, 20H, 71H, 75H, 6FH, 74H       ; "the codes of an unencrypted "
        db 69H, 65H, 6EH, 74H, 20H, 6FH, 66H, 20H       ; "string by the number of characters in "
        db 64H, 69H, 76H, 69H, 64H, 69H, 6EH, 67H       ; "this string ="
        db 20H, 74H, 68H, 65H, 20H, 73H, 75H, 6DH      
        db 20H, 6FH, 66H, 20H, 74H, 68H, 65H, 20H      
        db 63H, 6FH, 64H, 65H, 73H, 20H, 6FH, 66H      
        db 20H, 61H, 6EH, 20H, 75H, 6EH, 65H, 6EH      
        db 63H, 72H, 79H, 70H, 74H, 65H, 64H, 20H      
        db 73H, 74H, 72H, 69H, 6EH, 67H, 20H, 62H      
        db 79H, 20H, 74H, 68H, 65H, 20H, 6EH, 75H      
        db 6DH, 62H, 65H, 72H, 20H, 6FH, 66H, 20H      
        db 63H, 68H, 61H, 72H, 61H, 63H, 74H, 65H      
        db 72H, 73H, 20H, 69H, 6EH, 20H, 74H, 68H      
        db 69H, 73H, 20H, 73H, 74H, 72H, 69H, 6EH      
        db 67H, 20H, 3DH, 20H, 25H, 66H, 2EH, 0AH      
        db 0AH, 00H                                    

?_120:                                                  ; "Incoorect Encryption"
        db 49H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H      
        db 74H, 20H, 45H, 6EH, 63H, 72H, 79H, 70H      
        db 74H, 69H, 6FH, 6EH, 21H, 00H                

?_121:                                                  ; "Incorrect number of strings"
        db 49H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H      
        db 74H, 20H, 6EH, 75H, 6DH, 62H, 65H, 72H      
        db 20H, 6FH, 66H, 20H, 73H, 74H, 72H, 69H      
        db 6EH, 67H, 73H, 00H                          

?_122:                                                 
        db 20H, 65H, 6CH, 65H, 6DH, 65H, 6EH, 74H      
        db 73H, 2EH, 0AH, 00H                          

?_123:                                                 
        db 43H, 6FH, 6EH, 74H, 61H, 69H, 6EH, 65H      
        db 72H, 20H, 63H, 6FH, 6EH, 74H, 61H, 69H      
        db 6EH, 73H, 20H, 25H, 64H, 20H, 25H, 73H      
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H      

?_124:                                                 
        db 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH      
        db 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH      
        db 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH      
        db 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH      
        db 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH      
        db 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH      
        db 2DH, 2DH, 2DH, 2DH, 0AH, 00H                

?_125:                                                 
        db 25H, 64H, 3AH, 20H, 00H, 00H, 00H, 00H      
        db 00H, 00H                                    

?_126:                                                  ; errMessage1
        db 69H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H      
        db 74H, 20H, 63H, 6FH, 6DH, 6DH, 61H, 6EH      
        db 64H, 20H, 6CH, 69H, 6EH, 65H, 21H, 0AH      
        db 20H, 20H, 57H, 61H, 69H, 74H, 65H, 64H      
        db 3AH, 0AH, 20H, 20H, 20H, 20H, 20H, 63H      
        db 6FH, 6DH, 6DH, 61H, 6EH, 64H, 20H, 2DH      
        db 66H, 20H, 69H, 6EH, 66H, 69H, 6CH, 65H      
        db 20H, 6FH, 75H, 74H, 66H, 69H, 6CH, 65H      
        db 30H, 31H, 20H, 6FH, 75H, 74H, 66H, 69H      
        db 6CH, 65H, 30H, 32H, 0AH, 20H, 20H, 4FH      
        db 72H, 3AH, 0AH, 20H, 20H, 20H, 20H, 20H      
        db 63H, 6FH, 6DH, 6DH, 61H, 6EH, 64H, 20H      
        db 2DH, 6EH, 20H, 6EH, 75H, 6DH, 62H, 65H      
        db 72H, 20H, 6FH, 75H, 74H, 66H, 69H, 6CH      
        db 65H, 30H, 31H, 20H, 6FH, 75H, 74H, 66H      
        db 69H, 6CH, 65H, 30H, 32H, 00H, 00H, 00H      

?_127:                                                  ; errMessage2
        db 69H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H      
        db 74H, 20H, 71H, 75H, 61H, 6CH, 69H, 66H      
        db 69H, 65H, 72H, 20H, 76H, 61H, 6CH, 75H      
        db 65H, 21H, 0AH, 20H, 20H, 57H, 61H, 69H      
        db 74H, 65H, 64H, 3AH, 0AH, 20H, 20H, 20H      
        db 20H, 20H, 63H, 6FH, 6DH, 6DH, 61H, 6EH      
        db 64H, 20H, 2DH, 66H, 20H, 69H, 6EH, 66H      
        db 69H, 6CH, 65H, 20H, 6FH, 75H, 74H, 66H      
        db 69H, 6CH, 65H, 30H, 31H, 20H, 6FH, 75H      
        db 74H, 66H, 69H, 6CH, 65H, 30H, 32H, 0AH      
        db 20H, 20H, 4FH, 72H, 3AH, 0AH, 20H, 20H      
        db 20H, 20H, 20H, 63H, 6FH, 6DH, 6DH, 61H      
        db 6EH, 64H, 20H, 2DH, 6EH, 20H, 6EH, 75H      
        db 6DH, 62H, 65H, 72H, 20H, 6FH, 75H, 74H      
        db 66H, 69H, 6CH, 65H, 30H, 31H, 20H, 6FH      
        db 75H, 74H, 66H, 69H, 6CH, 65H, 30H, 32H      
        db 00H                                         

?_128:                                                  ; "start of the program"
        db 53H, 74H, 61H, 72H, 74H, 20H, 6FH, 66H      
        db 20H, 74H, 68H, 65H, 20H, 70H, 72H, 6FH      
        db 67H, 72H, 61H, 6DH, 00H                     

?_129:                                                 
        db 2DH, 66H, 00H                               

?_130:                                                 
        db 72H, 00H                                    

?_131:                                                 
        db 2DH, 6EH, 00H, 00H, 00H                     

?_132:                                                  ; "Incorrect number of figures"
        db 69H, 6EH, 63H, 6FH, 72H, 72H, 65H, 63H      
        db 74H, 20H, 6EH, 75H, 6DH, 62H, 65H, 72H      
        db 20H, 6FH, 66H, 20H, 66H, 69H, 67H, 75H      
        db 72H, 65H, 73H, 20H, 3DH, 20H, 00H           

?_133:                                                  
        db 2EH, 20H, 53H, 65H, 74H, 20H, 30H, 20H      
        db 3CH, 20H, 6EH, 75H, 6DH, 62H, 65H, 72H      
        db 20H, 3CH, 3DH, 20H, 31H, 30H, 30H, 30H      
        db 30H, 00H                                    

?_134:                                                 
        db 77H, 00H                                    

?_135:                                                  ; "Filled container"
        db 46H, 69H, 6CH, 6CH, 65H, 64H, 20H, 63H      
        db 6FH, 6EH, 74H, 61H, 69H, 6EH, 65H, 72H      
        db 3AH, 0AH, 00H, 00H, 00H                     

?_136:                                                  ; "The container is saved to a file"
        db 54H, 68H, 65H, 20H, 63H, 6FH, 6EH, 74H      
        db 61H, 69H, 6EH, 65H, 72H, 20H, 69H, 73H      
        db 20H, 73H, 61H, 76H, 65H, 64H, 20H, 74H      
        db 6FH, 20H, 61H, 20H, 66H, 69H, 6CH, 65H      
        db 20H, 25H, 73H, 22H, 0AH, 00H                

?_137:                                                  ; "Sorted container"
        db 53H, 6FH, 72H, 74H, 65H, 64H, 20H, 63H      
        db 6FH, 6EH, 74H, 61H, 69H, 6EH, 65H, 72H      
        db 3AH, 0AH, 00H, 00H, 00H, 00H, 00H, 00H      
        db 00H, 00H                                    

?_138:                                                  ; "The program ended successfully"
        db 54H, 68H, 65H, 20H, 70H, 72H, 6FH, 67H      
        db 72H, 61H, 6DH, 20H, 65H, 6EH, 64H, 65H      
        db 64H, 20H, 73H, 75H, 63H, 63H, 65H, 73H      
        db 73H, 66H, 75H, 6CH, 6CH, 79H, 00H           

?_139:                                                 
        db 54H, 69H, 6DH, 65H, 3AH, 20H, 25H, 66H      
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H      
        db 00H                                         

alphanum.3946:                                         
        db 30H, 31H, 32H, 33H, 34H, 35H, 36H, 37H      
        db 38H, 39H, 41H, 42H, 43H, 44H, 45H, 46H      
        db 47H, 48H, 49H, 4AH, 4BH, 4CH, 4DH, 4EH      
        db 4FH, 50H, 51H, 52H, 53H, 54H, 55H, 56H      
        db 57H, 58H, 59H, 5AH, 61H, 62H, 63H, 64H      
        db 65H, 66H, 67H, 68H, 69H, 6AH, 6BH, 6CH      
        db 6DH, 6EH, 6FH, 70H, 71H, 72H, 73H, 74H      
        db 75H, 76H, 77H, 78H, 79H, 7AH, 00H, 00H      

alphanum.4102:                                         
        db 30H, 31H, 32H, 33H, 34H, 35H, 36H, 37H      
        db 38H, 39H, 41H, 42H, 43H, 44H, 45H, 46H      
        db 47H, 48H, 49H, 4AH, 4BH, 4CH, 4DH, 4EH      
        db 4FH, 50H, 51H, 52H, 53H, 54H, 55H, 56H      
        db 57H, 58H, 59H, 5AH, 61H, 62H, 63H, 64H      
        db 65H, 66H, 67H, 68H, 69H, 6AH, 6BH, 6CH      
        db 6DH, 6EH, 6FH, 70H, 71H, 72H, 73H, 74H      
        db 75H, 76H, 77H, 78H, 79H, 7AH, 00H, 00H      

?_140:  dq 408F400000000000H                           
        dq 0000000000000000H                           
        dq 0000000000000000H                           
        dq 0000000000000000H                           


SECTION .rdata$zzz align=16                    

        db 47H, 43H, 43H, 3AH, 20H, 28H, 74H, 64H      
        db 6DH, 36H, 34H, 2DH, 31H, 29H, 20H, 35H      
        db 2EH, 31H, 2EH, 30H, 00H, 00H, 00H, 00H      
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H      


