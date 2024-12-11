# Integer Overflow in Assembly Memory Access

This repository demonstrates a potential integer overflow vulnerability in assembly code that results in unexpected memory access. The `bug.asm` file contains the vulnerable code, while `bugSolution.asm` provides a corrected version.

## Vulnerability

The vulnerability lies in the line `mov eax, [ebx+ecx*4]`. If the value of `ecx` is large enough, the calculation `ebx + ecx*4` can overflow, leading to an invalid memory address being accessed. This can cause segmentation faults or other unpredictable behavior.

## Solution

The solution involves adding checks to ensure `ecx` is within a safe range before performing the memory access. This prevents the overflow from occurring.