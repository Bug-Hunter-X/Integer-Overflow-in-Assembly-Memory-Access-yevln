mov ecx, [someVariable]

;Check for overflow condition.  Adjust range as needed.
cmp ecx, 10000
jge overflow_handler

mov eax, [ebx+ecx*4]
jmp end

overflow_handler:
;Handle the overflow
;Example - Set ecx to max safe value
mov ecx, 9999
mov eax, [ebx+ecx*4]
end: