
examplesint.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <sum_list>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
   8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   f:	eb 15                	jmp    26 <sum_list+0x26>
  11:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  15:	8b 00                	mov    (%rax),%eax
  17:	01 45 fc             	add    %eax,-0x4(%rbp)
  1a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  1e:	48 8b 40 08          	mov    0x8(%rax),%rax
  22:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  26:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  2b:	75 e4                	jne    11 <sum_list+0x11>
  2d:	8b 45 fc             	mov    -0x4(%rbp),%eax
  30:	5d                   	pop    %rbp
  31:	c3                   	retq   

0000000000000032 <rsum_list>:
  32:	55                   	push   %rbp
  33:	48 89 e5             	mov    %rsp,%rbp
  36:	48 83 ec 20          	sub    $0x20,%rsp
  3a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  3e:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  43:	75 07                	jne    4c <rsum_list+0x1a>
  45:	b8 00 00 00 00       	mov    $0x0,%eax
  4a:	eb 24                	jmp    70 <rsum_list+0x3e>
  4c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  50:	8b 00                	mov    (%rax),%eax
  52:	89 45 f8             	mov    %eax,-0x8(%rbp)
  55:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  59:	48 8b 40 08          	mov    0x8(%rax),%rax
  5d:	48 89 c7             	mov    %rax,%rdi
  60:	e8 00 00 00 00       	callq  65 <rsum_list+0x33>
  65:	89 45 fc             	mov    %eax,-0x4(%rbp)
  68:	8b 45 fc             	mov    -0x4(%rbp),%eax
  6b:	8b 55 f8             	mov    -0x8(%rbp),%edx
  6e:	01 d0                	add    %edx,%eax
  70:	c9                   	leaveq 
  71:	c3                   	retq   

0000000000000072 <copy_block>:
  72:	55                   	push   %rbp
  73:	48 89 e5             	mov    %rsp,%rbp
  76:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  7a:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  7e:	89 55 dc             	mov    %edx,-0x24(%rbp)
  81:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  88:	eb 2c                	jmp    b6 <copy_block+0x44>
  8a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  8e:	48 8d 50 04          	lea    0x4(%rax),%rdx
  92:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  96:	8b 00                	mov    (%rax),%eax
  98:	89 45 fc             	mov    %eax,-0x4(%rbp)
  9b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  9f:	48 8d 50 04          	lea    0x4(%rax),%rdx
  a3:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
  a7:	8b 55 fc             	mov    -0x4(%rbp),%edx
  aa:	89 10                	mov    %edx,(%rax)
  ac:	8b 45 fc             	mov    -0x4(%rbp),%eax
  af:	31 45 f8             	xor    %eax,-0x8(%rbp)
  b2:	83 6d dc 01          	subl   $0x1,-0x24(%rbp)
  b6:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
  ba:	7f ce                	jg     8a <copy_block+0x18>
  bc:	8b 45 f8             	mov    -0x8(%rbp),%eax
  bf:	5d                   	pop    %rbp
  c0:	c3                   	retq   
