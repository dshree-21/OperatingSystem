
_cal:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
			printf(1,"\n " );
	}
}

int main(int argc, char * argv[])
{
   0:	f3 0f 1e fb          	endbr32 
   4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   8:	83 e4 f0             	and    $0xfffffff0,%esp
   b:	ff 71 fc             	pushl  -0x4(%ecx)
   e:	55                   	push   %ebp
   f:	89 e5                	mov    %esp,%ebp
  11:	57                   	push   %edi
  12:	56                   	push   %esi
  13:	53                   	push   %ebx
  14:	51                   	push   %ecx
  15:	83 ec 18             	sub    $0x18,%esp
  18:	8b 01                	mov    (%ecx),%eax
  1a:	8b 59 04             	mov    0x4(%ecx),%ebx
	int year, daycode;
	int month;

	if(argc == 1)
  1d:	83 f8 01             	cmp    $0x1,%eax
  20:	74 2e                	je     50 <main+0x50>
	    printf(1,"\nCALENDAR %d\n", year);
	    daycode = find_day(year);
	    leapyear(year);
		cal2(year, daycode,month);
	}
	else if(argc == 2)
  22:	83 f8 02             	cmp    $0x2,%eax
  25:	0f 84 38 01 00 00    	je     163 <main+0x163>
	    printf(1,"\nCALENDAR %d\n", year);
	    daycode = find_day(year);
	    leapyear(year);
	    cal1(year, daycode);
	}
	else if(argc == 3)
  2b:	83 f8 03             	cmp    $0x3,%eax
  2e:	74 63                	je     93 <main+0x93>
	    leapyear(year);
	    cal2(year, daycode, month);
	}
	else
	{
		printf(1,"Invalid Format\n");
  30:	83 ec 08             	sub    $0x8,%esp
  33:	68 23 0d 00 00       	push   $0xd23
  38:	6a 01                	push   $0x1
  3a:	e8 61 09 00 00       	call   9a0 <printf>
		return 1;
	}
	printf(1,"\n");
	exit();
}
  3f:	8d 65 f0             	lea    -0x10(%ebp),%esp
  42:	b8 01 00 00 00       	mov    $0x1,%eax
  47:	59                   	pop    %ecx
  48:	5b                   	pop    %ebx
  49:	5e                   	pop    %esi
  4a:	5f                   	pop    %edi
  4b:	5d                   	pop    %ebp
  4c:	8d 61 fc             	lea    -0x4(%ecx),%esp
  4f:	c3                   	ret    
	    printf(1,"\nCALENDAR %d\n", year);
  50:	57                   	push   %edi
  51:	68 e6 07 00 00       	push   $0x7e6
  56:	68 15 0d 00 00       	push   $0xd15
  5b:	6a 01                	push   $0x1
  5d:	e8 3e 09 00 00       	call   9a0 <printf>
		cal2(year, daycode,month);
  62:	83 c4 0c             	add    $0xc,%esp
		d_month[2] = 28;
  65:	c7 05 a8 11 00 00 1c 	movl   $0x1c,0x11a8
  6c:	00 00 00 
		cal2(year, daycode,month);
  6f:	6a 01                	push   $0x1
  71:	6a 06                	push   $0x6
  73:	68 e6 07 00 00       	push   $0x7e6
  78:	e8 03 04 00 00       	call   480 <cal2>
  7d:	83 c4 10             	add    $0x10,%esp
	printf(1,"\n");
  80:	50                   	push   %eax
  81:	50                   	push   %eax
  82:	68 21 0d 00 00       	push   $0xd21
  87:	6a 01                	push   $0x1
  89:	e8 12 09 00 00       	call   9a0 <printf>
	exit();
  8e:	e8 a0 07 00 00       	call   833 <exit>
		month = atoi(argv[1]);
  93:	83 ec 0c             	sub    $0xc,%esp
  96:	ff 73 04             	pushl  0x4(%ebx)
	day = (y + n1 - n2 + n3) %7;
  99:	bf 07 00 00 00       	mov    $0x7,%edi
		month = atoi(argv[1]);
  9e:	e8 1d 07 00 00       	call   7c0 <atoi>
		year = atoi(argv[2]);
  a3:	59                   	pop    %ecx
  a4:	ff 73 08             	pushl  0x8(%ebx)
		month = atoi(argv[1]);
  a7:	89 c6                	mov    %eax,%esi
		year = atoi(argv[2]);
  a9:	e8 12 07 00 00       	call   7c0 <atoi>
		printf(1,"\nCALENDAR %d\n", year);
  ae:	83 c4 0c             	add    $0xc,%esp
  b1:	50                   	push   %eax
		year = atoi(argv[2]);
  b2:	89 c3                	mov    %eax,%ebx
		printf(1,"\nCALENDAR %d\n", year);
  b4:	68 15 0d 00 00       	push   $0xd15
  b9:	6a 01                	push   $0x1
  bb:	e8 e0 08 00 00       	call   9a0 <printf>
	n1 = (y - 1.)/ 4.0;
  c0:	89 5d e0             	mov    %ebx,-0x20(%ebp)
  c3:	db 45 e0             	fildl  -0x20(%ebp)
	if((y% 4 == FALSE && y%100 != FALSE) || y%400 == FALSE)
  c6:	83 c4 10             	add    $0x10,%esp
	n1 = (y - 1.)/ 4.0;
  c9:	d9 7d e6             	fnstcw -0x1a(%ebp)
  cc:	d8 25 c0 0d 00 00    	fsubs  0xdc0
  d2:	0f b7 45 e6          	movzwl -0x1a(%ebp),%eax
  d6:	80 cc 0c             	or     $0xc,%ah
  d9:	66 89 45 e4          	mov    %ax,-0x1c(%ebp)
  dd:	d9 c0                	fld    %st(0)
  df:	d8 0d c4 0d 00 00    	fmuls  0xdc4
  e5:	d9 6d e4             	fldcw  -0x1c(%ebp)
  e8:	db 5d e0             	fistpl -0x20(%ebp)
  eb:	d9 6d e6             	fldcw  -0x1a(%ebp)
  ee:	8b 45 e0             	mov    -0x20(%ebp),%eax
	day = (y + n1 - n2 + n3) %7;
  f1:	01 d8                	add    %ebx,%eax
	n2 = (y - 1.)/ 100.;
  f3:	d9 c0                	fld    %st(0)
  f5:	d8 35 c8 0d 00 00    	fdivs  0xdc8
  fb:	d9 6d e4             	fldcw  -0x1c(%ebp)
  fe:	db 5d e0             	fistpl -0x20(%ebp)
 101:	d9 6d e6             	fldcw  -0x1a(%ebp)
	n3 = (y - 1.)/ 400.;
 104:	d8 35 cc 0d 00 00    	fdivs  0xdcc
	n2 = (y - 1.)/ 100.;
 10a:	8b 55 e0             	mov    -0x20(%ebp),%edx
	day = (y + n1 - n2 + n3) %7;
 10d:	29 d0                	sub    %edx,%eax
	n3 = (y - 1.)/ 400.;
 10f:	d9 6d e4             	fldcw  -0x1c(%ebp)
 112:	db 5d e0             	fistpl -0x20(%ebp)
 115:	d9 6d e6             	fldcw  -0x1a(%ebp)
 118:	8b 55 e0             	mov    -0x20(%ebp),%edx
	day = (y + n1 - n2 + n3) %7;
 11b:	01 d0                	add    %edx,%eax
 11d:	99                   	cltd   
 11e:	f7 ff                	idiv   %edi
 120:	89 d1                	mov    %edx,%ecx
	if((y% 4 == FALSE && y%100 != FALSE) || y%400 == FALSE)
 122:	f6 c3 03             	test   $0x3,%bl
 125:	75 12                	jne    139 <main+0x139>
 127:	89 d8                	mov    %ebx,%eax
 129:	bf 64 00 00 00       	mov    $0x64,%edi
 12e:	99                   	cltd   
 12f:	f7 ff                	idiv   %edi
 131:	85 d2                	test   %edx,%edx
 133:	0f 85 eb 00 00 00    	jne    224 <main+0x224>
 139:	89 d8                	mov    %ebx,%eax
 13b:	bf 90 01 00 00       	mov    $0x190,%edi
 140:	99                   	cltd   
 141:	f7 ff                	idiv   %edi
		d_month[2] = 28;
 143:	83 fa 01             	cmp    $0x1,%edx
 146:	19 c0                	sbb    %eax,%eax
 148:	f7 d0                	not    %eax
 14a:	83 c0 1d             	add    $0x1d,%eax
	    cal2(year, daycode, month);
 14d:	52                   	push   %edx
 14e:	56                   	push   %esi
 14f:	51                   	push   %ecx
 150:	53                   	push   %ebx
 151:	a3 a8 11 00 00       	mov    %eax,0x11a8
 156:	e8 25 03 00 00       	call   480 <cal2>
 15b:	83 c4 10             	add    $0x10,%esp
 15e:	e9 1d ff ff ff       	jmp    80 <main+0x80>
		year = atoi(argv[1]);
 163:	83 ec 0c             	sub    $0xc,%esp
 166:	ff 73 04             	pushl  0x4(%ebx)
	day = (y + n1 - n2 + n3) %7;
 169:	bf 07 00 00 00       	mov    $0x7,%edi
		year = atoi(argv[1]);
 16e:	e8 4d 06 00 00       	call   7c0 <atoi>
	    printf(1,"\nCALENDAR %d\n", year);
 173:	83 c4 0c             	add    $0xc,%esp
 176:	50                   	push   %eax
		year = atoi(argv[1]);
 177:	89 c3                	mov    %eax,%ebx
	    printf(1,"\nCALENDAR %d\n", year);
 179:	68 15 0d 00 00       	push   $0xd15
 17e:	6a 01                	push   $0x1
 180:	e8 1b 08 00 00       	call   9a0 <printf>
	n1 = (y - 1.)/ 4.0;
 185:	89 5d e0             	mov    %ebx,-0x20(%ebp)
 188:	db 45 e0             	fildl  -0x20(%ebp)
	if((y% 4 == FALSE && y%100 != FALSE) || y%400 == FALSE)
 18b:	83 c4 10             	add    $0x10,%esp
	n1 = (y - 1.)/ 4.0;
 18e:	d9 7d e6             	fnstcw -0x1a(%ebp)
 191:	d8 25 c0 0d 00 00    	fsubs  0xdc0
 197:	0f b7 45 e6          	movzwl -0x1a(%ebp),%eax
 19b:	80 cc 0c             	or     $0xc,%ah
 19e:	66 89 45 e4          	mov    %ax,-0x1c(%ebp)
 1a2:	d9 c0                	fld    %st(0)
 1a4:	d8 0d c4 0d 00 00    	fmuls  0xdc4
 1aa:	d9 6d e4             	fldcw  -0x1c(%ebp)
 1ad:	db 5d e0             	fistpl -0x20(%ebp)
 1b0:	d9 6d e6             	fldcw  -0x1a(%ebp)
 1b3:	8b 45 e0             	mov    -0x20(%ebp),%eax
	day = (y + n1 - n2 + n3) %7;
 1b6:	01 d8                	add    %ebx,%eax
	n2 = (y - 1.)/ 100.;
 1b8:	d9 c0                	fld    %st(0)
 1ba:	d8 35 c8 0d 00 00    	fdivs  0xdc8
 1c0:	d9 6d e4             	fldcw  -0x1c(%ebp)
 1c3:	db 5d e0             	fistpl -0x20(%ebp)
 1c6:	d9 6d e6             	fldcw  -0x1a(%ebp)
	n3 = (y - 1.)/ 400.;
 1c9:	d8 35 cc 0d 00 00    	fdivs  0xdcc
	n2 = (y - 1.)/ 100.;
 1cf:	8b 55 e0             	mov    -0x20(%ebp),%edx
	day = (y + n1 - n2 + n3) %7;
 1d2:	29 d0                	sub    %edx,%eax
	n3 = (y - 1.)/ 400.;
 1d4:	d9 6d e4             	fldcw  -0x1c(%ebp)
 1d7:	db 5d e0             	fistpl -0x20(%ebp)
 1da:	d9 6d e6             	fldcw  -0x1a(%ebp)
 1dd:	8b 55 e0             	mov    -0x20(%ebp),%edx
	day = (y + n1 - n2 + n3) %7;
 1e0:	01 d0                	add    %edx,%eax
 1e2:	99                   	cltd   
 1e3:	f7 ff                	idiv   %edi
 1e5:	89 d1                	mov    %edx,%ecx
	if((y% 4 == FALSE && y%100 != FALSE) || y%400 == FALSE)
 1e7:	f6 c3 03             	test   $0x3,%bl
 1ea:	75 0e                	jne    1fa <main+0x1fa>
 1ec:	89 d8                	mov    %ebx,%eax
 1ee:	be 64 00 00 00       	mov    $0x64,%esi
 1f3:	99                   	cltd   
 1f4:	f7 fe                	idiv   %esi
 1f6:	85 d2                	test   %edx,%edx
 1f8:	75 34                	jne    22e <main+0x22e>
 1fa:	89 d8                	mov    %ebx,%eax
 1fc:	be 90 01 00 00       	mov    $0x190,%esi
 201:	99                   	cltd   
 202:	f7 fe                	idiv   %esi
		d_month[2] = 28;
 204:	83 fa 01             	cmp    $0x1,%edx
 207:	19 c0                	sbb    %eax,%eax
 209:	f7 d0                	not    %eax
 20b:	83 c0 1d             	add    $0x1d,%eax
	    cal1(year, daycode);
 20e:	56                   	push   %esi
 20f:	56                   	push   %esi
 210:	51                   	push   %ecx
 211:	53                   	push   %ebx
 212:	a3 a8 11 00 00       	mov    %eax,0x11a8
 217:	e8 24 01 00 00       	call   340 <cal1>
 21c:	83 c4 10             	add    $0x10,%esp
 21f:	e9 5c fe ff ff       	jmp    80 <main+0x80>
		d_month[2] = 29;
 224:	b8 1d 00 00 00       	mov    $0x1d,%eax
 229:	e9 1f ff ff ff       	jmp    14d <main+0x14d>
 22e:	b8 1d 00 00 00       	mov    $0x1d,%eax
 233:	eb d9                	jmp    20e <main+0x20e>
 235:	66 90                	xchg   %ax,%ax
 237:	66 90                	xchg   %ax,%ax
 239:	66 90                	xchg   %ax,%ax
 23b:	66 90                	xchg   %ax,%ax
 23d:	66 90                	xchg   %ax,%ax
 23f:	90                   	nop

00000240 <find_day>:
{
 240:	f3 0f 1e fb          	endbr32 
 244:	55                   	push   %ebp
	day = (y + n1 - n2 + n3) %7;
 245:	ba 93 24 49 92       	mov    $0x92492493,%edx
{
 24a:	89 e5                	mov    %esp,%ebp
 24c:	83 ec 08             	sub    $0x8,%esp
	n1 = (y - 1.)/ 4.0;
 24f:	d9 7d fe             	fnstcw -0x2(%ebp)
 252:	db 45 08             	fildl  0x8(%ebp)
 255:	d8 25 c0 0d 00 00    	fsubs  0xdc0
 25b:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
 25f:	80 cc 0c             	or     $0xc,%ah
 262:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
 266:	d9 c0                	fld    %st(0)
 268:	d8 0d c4 0d 00 00    	fmuls  0xdc4
 26e:	d9 6d fc             	fldcw  -0x4(%ebp)
 271:	db 5d f8             	fistpl -0x8(%ebp)
 274:	d9 6d fe             	fldcw  -0x2(%ebp)
 277:	8b 4d f8             	mov    -0x8(%ebp),%ecx
	day = (y + n1 - n2 + n3) %7;
 27a:	03 4d 08             	add    0x8(%ebp),%ecx
	n2 = (y - 1.)/ 100.;
 27d:	d9 c0                	fld    %st(0)
 27f:	d8 35 c8 0d 00 00    	fdivs  0xdc8
 285:	d9 6d fc             	fldcw  -0x4(%ebp)
 288:	db 5d f8             	fistpl -0x8(%ebp)
 28b:	d9 6d fe             	fldcw  -0x2(%ebp)
	n3 = (y - 1.)/ 400.;
 28e:	d8 35 cc 0d 00 00    	fdivs  0xdcc
	n2 = (y - 1.)/ 100.;
 294:	8b 45 f8             	mov    -0x8(%ebp),%eax
	day = (y + n1 - n2 + n3) %7;
 297:	29 c1                	sub    %eax,%ecx
	n3 = (y - 1.)/ 400.;
 299:	d9 6d fc             	fldcw  -0x4(%ebp)
 29c:	db 5d f8             	fistpl -0x8(%ebp)
 29f:	d9 6d fe             	fldcw  -0x2(%ebp)
 2a2:	8b 45 f8             	mov    -0x8(%ebp),%eax
}
 2a5:	c9                   	leave  
	day = (y + n1 - n2 + n3) %7;
 2a6:	01 c1                	add    %eax,%ecx
 2a8:	89 c8                	mov    %ecx,%eax
 2aa:	f7 ea                	imul   %edx
 2ac:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
 2af:	89 ca                	mov    %ecx,%edx
 2b1:	c1 fa 1f             	sar    $0x1f,%edx
 2b4:	c1 f8 02             	sar    $0x2,%eax
 2b7:	29 d0                	sub    %edx,%eax
 2b9:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
 2c0:	29 c2                	sub    %eax,%edx
 2c2:	89 c8                	mov    %ecx,%eax
 2c4:	29 d0                	sub    %edx,%eax
}
 2c6:	c3                   	ret    
 2c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ce:	66 90                	xchg   %ax,%ax

000002d0 <leapyear>:
{
 2d0:	f3 0f 1e fb          	endbr32 
 2d4:	55                   	push   %ebp
 2d5:	89 e5                	mov    %esp,%ebp
 2d7:	8b 45 08             	mov    0x8(%ebp),%eax
	if((y% 4 == FALSE && y%100 != FALSE) || y%400 == FALSE)
 2da:	a8 03                	test   $0x3,%al
 2dc:	75 17                	jne    2f5 <leapyear+0x25>
 2de:	69 d0 29 5c 8f c2    	imul   $0xc28f5c29,%eax,%edx
 2e4:	81 c2 50 b8 1e 05    	add    $0x51eb850,%edx
 2ea:	c1 ca 02             	ror    $0x2,%edx
 2ed:	81 fa 28 5c 8f 02    	cmp    $0x28f5c28,%edx
 2f3:	77 33                	ja     328 <leapyear+0x58>
 2f5:	69 c0 29 5c 8f c2    	imul   $0xc28f5c29,%eax,%eax
}
 2fb:	5d                   	pop    %ebp
 2fc:	05 50 b8 1e 05       	add    $0x51eb850,%eax
 301:	c1 c8 04             	ror    $0x4,%eax
		d_month[2] = 28;
 304:	3d 0b d7 a3 00       	cmp    $0xa3d70b,%eax
 309:	19 d2                	sbb    %edx,%edx
 30b:	f7 d2                	not    %edx
 30d:	83 c2 1d             	add    $0x1d,%edx
 310:	3d 0b d7 a3 00       	cmp    $0xa3d70b,%eax
 315:	0f 92 c0             	setb   %al
 318:	89 15 a8 11 00 00    	mov    %edx,0x11a8
 31e:	0f b6 c0             	movzbl %al,%eax
}
 321:	c3                   	ret    
 322:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
		d_month[2] = 29;
 328:	ba 1d 00 00 00       	mov    $0x1d,%edx
		return TRUE;
 32d:	b8 01 00 00 00       	mov    $0x1,%eax
}
 332:	5d                   	pop    %ebp
 333:	89 15 a8 11 00 00    	mov    %edx,0x11a8
 339:	c3                   	ret    
 33a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000340 <cal1>:
{
 340:	f3 0f 1e fb          	endbr32 
 344:	55                   	push   %ebp
 345:	89 e5                	mov    %esp,%ebp
 347:	57                   	push   %edi
 348:	56                   	push   %esi
	for ( month = 1; month <= 12; month++ )
 349:	be 01 00 00 00       	mov    $0x1,%esi
{
 34e:	53                   	push   %ebx
 34f:	83 ec 0c             	sub    $0xc,%esp
 352:	8b 5d 0c             	mov    0xc(%ebp),%ebx
	for ( month = 1; month <= 12; month++ )
 355:	8d 76 00             	lea    0x0(%esi),%esi
		printf(1,"%s", months[month]);
 358:	83 ec 04             	sub    $0x4,%esp
 35b:	ff 34 b5 60 11 00 00 	pushl  0x1160(,%esi,4)
		for ( d = 1; d <= 1 + day * 5; d++ )
 362:	8d 3c 9b             	lea    (%ebx,%ebx,4),%edi
		printf(1,"%s", months[month]);
 365:	68 08 0d 00 00       	push   $0xd08
 36a:	6a 01                	push   $0x1
 36c:	e8 2f 06 00 00       	call   9a0 <printf>
		printf(1,"\n\nSun  Mon  Tue  Wed  Thu  Fri  Sat\n" );
 371:	58                   	pop    %eax
 372:	5a                   	pop    %edx
 373:	68 98 0d 00 00       	push   $0xd98
 378:	6a 01                	push   $0x1
 37a:	e8 21 06 00 00       	call   9a0 <printf>
		for ( d = 1; d <= 1 + day * 5; d++ )
 37f:	83 c4 10             	add    $0x10,%esp
 382:	85 ff                	test   %edi,%edi
 384:	78 2e                	js     3b4 <cal1+0x74>
 386:	8d 47 02             	lea    0x2(%edi),%eax
 389:	bf 01 00 00 00       	mov    $0x1,%edi
 38e:	89 5d 0c             	mov    %ebx,0xc(%ebp)
 391:	89 fb                	mov    %edi,%ebx
 393:	89 c7                	mov    %eax,%edi
 395:	8d 76 00             	lea    0x0(%esi),%esi
			printf(1," ");
 398:	83 ec 08             	sub    $0x8,%esp
		for ( d = 1; d <= 1 + day * 5; d++ )
 39b:	83 c3 01             	add    $0x1,%ebx
			printf(1," ");
 39e:	68 13 0d 00 00       	push   $0xd13
 3a3:	6a 01                	push   $0x1
 3a5:	e8 f6 05 00 00       	call   9a0 <printf>
		for ( d = 1; d <= 1 + day * 5; d++ )
 3aa:	83 c4 10             	add    $0x10,%esp
 3ad:	39 df                	cmp    %ebx,%edi
 3af:	75 e7                	jne    398 <cal1+0x58>
 3b1:	8b 5d 0c             	mov    0xc(%ebp),%ebx
		for ( d = 1; d <= d_month[month]; d++ )
 3b4:	8b 04 b5 a0 11 00 00 	mov    0x11a0(,%esi,4),%eax
 3bb:	85 c0                	test   %eax,%eax
 3bd:	0f 8e 85 00 00 00    	jle    448 <cal1+0x108>
 3c3:	bf 01 00 00 00       	mov    $0x1,%edi
 3c8:	eb 26                	jmp    3f0 <cal1+0xb0>
 3ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
				printf(1,"   " );
 3d0:	83 ec 08             	sub    $0x8,%esp
		for ( d = 1; d <= d_month[month]; d++ )
 3d3:	83 c7 01             	add    $0x1,%edi
				printf(1,"   " );
 3d6:	68 0e 0d 00 00       	push   $0xd0e
 3db:	6a 01                	push   $0x1
 3dd:	e8 be 05 00 00       	call   9a0 <printf>
		for ( d = 1; d <= d_month[month]; d++ )
 3e2:	8b 04 b5 a0 11 00 00 	mov    0x11a0(,%esi,4),%eax
 3e9:	83 c4 10             	add    $0x10,%esp
 3ec:	39 f8                	cmp    %edi,%eax
 3ee:	7c 58                	jl     448 <cal1+0x108>
			printf(1,"%d", d);
 3f0:	83 ec 04             	sub    $0x4,%esp
 3f3:	57                   	push   %edi
 3f4:	68 0b 0d 00 00       	push   $0xd0b
 3f9:	6a 01                	push   $0x1
 3fb:	e8 a0 05 00 00       	call   9a0 <printf>
			if ( ( d + day ) % 7 > 0 )
 400:	8d 0c 1f             	lea    (%edi,%ebx,1),%ecx
 403:	b8 93 24 49 92       	mov    $0x92492493,%eax
 408:	83 c4 10             	add    $0x10,%esp
 40b:	f7 e9                	imul   %ecx
 40d:	89 c8                	mov    %ecx,%eax
 40f:	c1 f8 1f             	sar    $0x1f,%eax
 412:	01 ca                	add    %ecx,%edx
 414:	c1 fa 02             	sar    $0x2,%edx
 417:	29 c2                	sub    %eax,%edx
 419:	8d 04 d5 00 00 00 00 	lea    0x0(,%edx,8),%eax
 420:	29 d0                	sub    %edx,%eax
 422:	29 c1                	sub    %eax,%ecx
 424:	85 c9                	test   %ecx,%ecx
 426:	7f a8                	jg     3d0 <cal1+0x90>
				printf(1,"\n " );
 428:	83 ec 08             	sub    $0x8,%esp
		for ( d = 1; d <= d_month[month]; d++ )
 42b:	83 c7 01             	add    $0x1,%edi
				printf(1,"\n " );
 42e:	68 12 0d 00 00       	push   $0xd12
 433:	6a 01                	push   $0x1
 435:	e8 66 05 00 00       	call   9a0 <printf>
		for ( d = 1; d <= d_month[month]; d++ )
 43a:	8b 04 b5 a0 11 00 00 	mov    0x11a0(,%esi,4),%eax
				printf(1,"\n " );
 441:	83 c4 10             	add    $0x10,%esp
		for ( d = 1; d <= d_month[month]; d++ )
 444:	39 f8                	cmp    %edi,%eax
 446:	7d a8                	jge    3f0 <cal1+0xb0>
		day= ( day + d_month[month] ) % 7;
 448:	8d 0c 18             	lea    (%eax,%ebx,1),%ecx
 44b:	b8 93 24 49 92       	mov    $0x92492493,%eax
	for ( month = 1; month <= 12; month++ )
 450:	83 c6 01             	add    $0x1,%esi
		day= ( day + d_month[month] ) % 7;
 453:	f7 e9                	imul   %ecx
 455:	89 c8                	mov    %ecx,%eax
 457:	c1 f8 1f             	sar    $0x1f,%eax
 45a:	8d 1c 0a             	lea    (%edx,%ecx,1),%ebx
 45d:	c1 fb 02             	sar    $0x2,%ebx
 460:	29 c3                	sub    %eax,%ebx
 462:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 469:	29 d8                	sub    %ebx,%eax
 46b:	89 cb                	mov    %ecx,%ebx
 46d:	29 c3                	sub    %eax,%ebx
	for ( month = 1; month <= 12; month++ )
 46f:	83 fe 0d             	cmp    $0xd,%esi
 472:	0f 85 e0 fe ff ff    	jne    358 <cal1+0x18>
}
 478:	8d 65 f4             	lea    -0xc(%ebp),%esp
 47b:	5b                   	pop    %ebx
 47c:	5e                   	pop    %esi
 47d:	5f                   	pop    %edi
 47e:	5d                   	pop    %ebp
 47f:	c3                   	ret    

00000480 <cal2>:
{
 480:	f3 0f 1e fb          	endbr32 
 484:	55                   	push   %ebp
 485:	89 e5                	mov    %esp,%ebp
 487:	57                   	push   %edi
 488:	56                   	push   %esi
 489:	53                   	push   %ebx
 48a:	83 ec 0c             	sub    $0xc,%esp
	for ( month = 1; month < m; month++ )
 48d:	83 7d 10 01          	cmpl   $0x1,0x10(%ebp)
{
 491:	8b 5d 0c             	mov    0xc(%ebp),%ebx
	for ( month = 1; month < m; month++ )
 494:	7e 41                	jle    4d7 <cal2+0x57>
		dcode = ( dcode + d_month[month] ) % 7;
 496:	89 da                	mov    %ebx,%edx
 498:	8b 5d 10             	mov    0x10(%ebp),%ebx
	for ( month = 1; month < m; month++ )
 49b:	be 01 00 00 00       	mov    $0x1,%esi
		dcode = ( dcode + d_month[month] ) % 7;
 4a0:	bf 93 24 49 92       	mov    $0x92492493,%edi
 4a5:	8d 76 00             	lea    0x0(%esi),%esi
 4a8:	8b 0c b5 a0 11 00 00 	mov    0x11a0(,%esi,4),%ecx
	for ( month = 1; month < m; month++ )
 4af:	83 c6 01             	add    $0x1,%esi
		dcode = ( dcode + d_month[month] ) % 7;
 4b2:	01 d1                	add    %edx,%ecx
 4b4:	89 c8                	mov    %ecx,%eax
 4b6:	f7 ef                	imul   %edi
 4b8:	89 c8                	mov    %ecx,%eax
 4ba:	c1 f8 1f             	sar    $0x1f,%eax
 4bd:	01 ca                	add    %ecx,%edx
 4bf:	c1 fa 02             	sar    $0x2,%edx
 4c2:	29 c2                	sub    %eax,%edx
 4c4:	8d 04 d5 00 00 00 00 	lea    0x0(,%edx,8),%eax
 4cb:	29 d0                	sub    %edx,%eax
 4cd:	29 c1                	sub    %eax,%ecx
 4cf:	89 ca                	mov    %ecx,%edx
	for ( month = 1; month < m; month++ )
 4d1:	39 f3                	cmp    %esi,%ebx
 4d3:	75 d3                	jne    4a8 <cal2+0x28>
 4d5:	89 cb                	mov    %ecx,%ebx
	printf(1,"%s", months[month]);
 4d7:	8b 45 10             	mov    0x10(%ebp),%eax
 4da:	83 ec 04             	sub    $0x4,%esp
	for ( day = 1; day <= 1 + dcode * 5; day++ )
 4dd:	8d 34 9b             	lea    (%ebx,%ebx,4),%esi
	printf(1,"%s", months[month]);
 4e0:	ff 34 85 60 11 00 00 	pushl  0x1160(,%eax,4)
 4e7:	68 08 0d 00 00       	push   $0xd08
 4ec:	6a 01                	push   $0x1
 4ee:	e8 ad 04 00 00       	call   9a0 <printf>
	printf(1,"\n\nSun  Mon  Tue  Wed  Thu  Fri  Sat\n" );
 4f3:	5a                   	pop    %edx
 4f4:	59                   	pop    %ecx
 4f5:	68 98 0d 00 00       	push   $0xd98
 4fa:	6a 01                	push   $0x1
 4fc:	e8 9f 04 00 00       	call   9a0 <printf>
	for ( day = 1; day <= 1 + dcode * 5; day++ )
 501:	83 c4 10             	add    $0x10,%esp
 504:	85 f6                	test   %esi,%esi
 506:	78 21                	js     529 <cal2+0xa9>
 508:	83 c6 02             	add    $0x2,%esi
 50b:	bf 01 00 00 00       	mov    $0x1,%edi
		printf(1," ");
 510:	83 ec 08             	sub    $0x8,%esp
	for ( day = 1; day <= 1 + dcode * 5; day++ )
 513:	83 c7 01             	add    $0x1,%edi
		printf(1," ");
 516:	68 13 0d 00 00       	push   $0xd13
 51b:	6a 01                	push   $0x1
 51d:	e8 7e 04 00 00       	call   9a0 <printf>
	for ( day = 1; day <= 1 + dcode * 5; day++ )
 522:	83 c4 10             	add    $0x10,%esp
 525:	39 fe                	cmp    %edi,%esi
 527:	75 e7                	jne    510 <cal2+0x90>
	for ( day = 1; day <= d_month[month]; day++ )
 529:	8b 45 10             	mov    0x10(%ebp),%eax
 52c:	8b 04 85 a0 11 00 00 	mov    0x11a0(,%eax,4),%eax
 533:	85 c0                	test   %eax,%eax
 535:	0f 8e 8c 00 00 00    	jle    5c7 <cal2+0x147>
 53b:	be 01 00 00 00       	mov    $0x1,%esi
		if ( ( day + dcode ) % 7 > 0 )
 540:	bf 93 24 49 92       	mov    $0x92492493,%edi
 545:	eb 2a                	jmp    571 <cal2+0xf1>
 547:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 54e:	66 90                	xchg   %ax,%ax
			printf(1,"   " );
 550:	83 ec 08             	sub    $0x8,%esp
	for ( day = 1; day <= d_month[month]; day++ )
 553:	83 c6 01             	add    $0x1,%esi
			printf(1,"   " );
 556:	68 0e 0d 00 00       	push   $0xd0e
 55b:	6a 01                	push   $0x1
 55d:	e8 3e 04 00 00       	call   9a0 <printf>
	for ( day = 1; day <= d_month[month]; day++ )
 562:	8b 45 10             	mov    0x10(%ebp),%eax
 565:	83 c4 10             	add    $0x10,%esp
 568:	39 34 85 a0 11 00 00 	cmp    %esi,0x11a0(,%eax,4)
 56f:	7c 56                	jl     5c7 <cal2+0x147>
		printf(1,"%d", day );
 571:	83 ec 04             	sub    $0x4,%esp
 574:	56                   	push   %esi
 575:	68 0b 0d 00 00       	push   $0xd0b
 57a:	6a 01                	push   $0x1
 57c:	e8 1f 04 00 00       	call   9a0 <printf>
		if ( ( day + dcode ) % 7 > 0 )
 581:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
 584:	83 c4 10             	add    $0x10,%esp
 587:	89 c8                	mov    %ecx,%eax
 589:	f7 ef                	imul   %edi
 58b:	89 c8                	mov    %ecx,%eax
 58d:	c1 f8 1f             	sar    $0x1f,%eax
 590:	01 ca                	add    %ecx,%edx
 592:	c1 fa 02             	sar    $0x2,%edx
 595:	29 c2                	sub    %eax,%edx
 597:	8d 04 d5 00 00 00 00 	lea    0x0(,%edx,8),%eax
 59e:	29 d0                	sub    %edx,%eax
 5a0:	29 c1                	sub    %eax,%ecx
 5a2:	85 c9                	test   %ecx,%ecx
 5a4:	7f aa                	jg     550 <cal2+0xd0>
			printf(1,"\n " );
 5a6:	83 ec 08             	sub    $0x8,%esp
	for ( day = 1; day <= d_month[month]; day++ )
 5a9:	83 c6 01             	add    $0x1,%esi
			printf(1,"\n " );
 5ac:	68 12 0d 00 00       	push   $0xd12
 5b1:	6a 01                	push   $0x1
 5b3:	e8 e8 03 00 00       	call   9a0 <printf>
	for ( day = 1; day <= d_month[month]; day++ )
 5b8:	8b 45 10             	mov    0x10(%ebp),%eax
			printf(1,"\n " );
 5bb:	83 c4 10             	add    $0x10,%esp
	for ( day = 1; day <= d_month[month]; day++ )
 5be:	39 34 85 a0 11 00 00 	cmp    %esi,0x11a0(,%eax,4)
 5c5:	7d aa                	jge    571 <cal2+0xf1>
}
 5c7:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5ca:	5b                   	pop    %ebx
 5cb:	5e                   	pop    %esi
 5cc:	5f                   	pop    %edi
 5cd:	5d                   	pop    %ebp
 5ce:	c3                   	ret    
 5cf:	90                   	nop

000005d0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 5d0:	f3 0f 1e fb          	endbr32 
 5d4:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 5d5:	31 c0                	xor    %eax,%eax
{
 5d7:	89 e5                	mov    %esp,%ebp
 5d9:	53                   	push   %ebx
 5da:	8b 4d 08             	mov    0x8(%ebp),%ecx
 5dd:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
 5e0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 5e4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 5e7:	83 c0 01             	add    $0x1,%eax
 5ea:	84 d2                	test   %dl,%dl
 5ec:	75 f2                	jne    5e0 <strcpy+0x10>
    ;
  return os;
}
 5ee:	89 c8                	mov    %ecx,%eax
 5f0:	5b                   	pop    %ebx
 5f1:	5d                   	pop    %ebp
 5f2:	c3                   	ret    
 5f3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000600 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 600:	f3 0f 1e fb          	endbr32 
 604:	55                   	push   %ebp
 605:	89 e5                	mov    %esp,%ebp
 607:	53                   	push   %ebx
 608:	8b 4d 08             	mov    0x8(%ebp),%ecx
 60b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
 60e:	0f b6 01             	movzbl (%ecx),%eax
 611:	0f b6 1a             	movzbl (%edx),%ebx
 614:	84 c0                	test   %al,%al
 616:	75 19                	jne    631 <strcmp+0x31>
 618:	eb 26                	jmp    640 <strcmp+0x40>
 61a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 620:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
 624:	83 c1 01             	add    $0x1,%ecx
 627:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 62a:	0f b6 1a             	movzbl (%edx),%ebx
 62d:	84 c0                	test   %al,%al
 62f:	74 0f                	je     640 <strcmp+0x40>
 631:	38 d8                	cmp    %bl,%al
 633:	74 eb                	je     620 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 635:	29 d8                	sub    %ebx,%eax
}
 637:	5b                   	pop    %ebx
 638:	5d                   	pop    %ebp
 639:	c3                   	ret    
 63a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 640:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 642:	29 d8                	sub    %ebx,%eax
}
 644:	5b                   	pop    %ebx
 645:	5d                   	pop    %ebp
 646:	c3                   	ret    
 647:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 64e:	66 90                	xchg   %ax,%ax

00000650 <strlen>:

uint
strlen(const char *s)
{
 650:	f3 0f 1e fb          	endbr32 
 654:	55                   	push   %ebp
 655:	89 e5                	mov    %esp,%ebp
 657:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 65a:	80 3a 00             	cmpb   $0x0,(%edx)
 65d:	74 21                	je     680 <strlen+0x30>
 65f:	31 c0                	xor    %eax,%eax
 661:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 668:	83 c0 01             	add    $0x1,%eax
 66b:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 66f:	89 c1                	mov    %eax,%ecx
 671:	75 f5                	jne    668 <strlen+0x18>
    ;
  return n;
}
 673:	89 c8                	mov    %ecx,%eax
 675:	5d                   	pop    %ebp
 676:	c3                   	ret    
 677:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 67e:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
 680:	31 c9                	xor    %ecx,%ecx
}
 682:	5d                   	pop    %ebp
 683:	89 c8                	mov    %ecx,%eax
 685:	c3                   	ret    
 686:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 68d:	8d 76 00             	lea    0x0(%esi),%esi

00000690 <memset>:

void*
memset(void *dst, int c, uint n)
{
 690:	f3 0f 1e fb          	endbr32 
 694:	55                   	push   %ebp
 695:	89 e5                	mov    %esp,%ebp
 697:	57                   	push   %edi
 698:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 69b:	8b 4d 10             	mov    0x10(%ebp),%ecx
 69e:	8b 45 0c             	mov    0xc(%ebp),%eax
 6a1:	89 d7                	mov    %edx,%edi
 6a3:	fc                   	cld    
 6a4:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 6a6:	89 d0                	mov    %edx,%eax
 6a8:	5f                   	pop    %edi
 6a9:	5d                   	pop    %ebp
 6aa:	c3                   	ret    
 6ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6af:	90                   	nop

000006b0 <strchr>:

char*
strchr(const char *s, char c)
{
 6b0:	f3 0f 1e fb          	endbr32 
 6b4:	55                   	push   %ebp
 6b5:	89 e5                	mov    %esp,%ebp
 6b7:	8b 45 08             	mov    0x8(%ebp),%eax
 6ba:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 6be:	0f b6 10             	movzbl (%eax),%edx
 6c1:	84 d2                	test   %dl,%dl
 6c3:	75 16                	jne    6db <strchr+0x2b>
 6c5:	eb 21                	jmp    6e8 <strchr+0x38>
 6c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ce:	66 90                	xchg   %ax,%ax
 6d0:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 6d4:	83 c0 01             	add    $0x1,%eax
 6d7:	84 d2                	test   %dl,%dl
 6d9:	74 0d                	je     6e8 <strchr+0x38>
    if(*s == c)
 6db:	38 d1                	cmp    %dl,%cl
 6dd:	75 f1                	jne    6d0 <strchr+0x20>
      return (char*)s;
  return 0;
}
 6df:	5d                   	pop    %ebp
 6e0:	c3                   	ret    
 6e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 6e8:	31 c0                	xor    %eax,%eax
}
 6ea:	5d                   	pop    %ebp
 6eb:	c3                   	ret    
 6ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000006f0 <gets>:

char*
gets(char *buf, int max)
{
 6f0:	f3 0f 1e fb          	endbr32 
 6f4:	55                   	push   %ebp
 6f5:	89 e5                	mov    %esp,%ebp
 6f7:	57                   	push   %edi
 6f8:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 6f9:	31 f6                	xor    %esi,%esi
{
 6fb:	53                   	push   %ebx
 6fc:	89 f3                	mov    %esi,%ebx
 6fe:	83 ec 1c             	sub    $0x1c,%esp
 701:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 704:	eb 33                	jmp    739 <gets+0x49>
 706:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 70d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 710:	83 ec 04             	sub    $0x4,%esp
 713:	8d 45 e7             	lea    -0x19(%ebp),%eax
 716:	6a 01                	push   $0x1
 718:	50                   	push   %eax
 719:	6a 00                	push   $0x0
 71b:	e8 2b 01 00 00       	call   84b <read>
    if(cc < 1)
 720:	83 c4 10             	add    $0x10,%esp
 723:	85 c0                	test   %eax,%eax
 725:	7e 1c                	jle    743 <gets+0x53>
      break;
    buf[i++] = c;
 727:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 72b:	83 c7 01             	add    $0x1,%edi
 72e:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 731:	3c 0a                	cmp    $0xa,%al
 733:	74 23                	je     758 <gets+0x68>
 735:	3c 0d                	cmp    $0xd,%al
 737:	74 1f                	je     758 <gets+0x68>
  for(i=0; i+1 < max; ){
 739:	83 c3 01             	add    $0x1,%ebx
 73c:	89 fe                	mov    %edi,%esi
 73e:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 741:	7c cd                	jl     710 <gets+0x20>
 743:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 745:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 748:	c6 03 00             	movb   $0x0,(%ebx)
}
 74b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 74e:	5b                   	pop    %ebx
 74f:	5e                   	pop    %esi
 750:	5f                   	pop    %edi
 751:	5d                   	pop    %ebp
 752:	c3                   	ret    
 753:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 757:	90                   	nop
 758:	8b 75 08             	mov    0x8(%ebp),%esi
 75b:	8b 45 08             	mov    0x8(%ebp),%eax
 75e:	01 de                	add    %ebx,%esi
 760:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 762:	c6 03 00             	movb   $0x0,(%ebx)
}
 765:	8d 65 f4             	lea    -0xc(%ebp),%esp
 768:	5b                   	pop    %ebx
 769:	5e                   	pop    %esi
 76a:	5f                   	pop    %edi
 76b:	5d                   	pop    %ebp
 76c:	c3                   	ret    
 76d:	8d 76 00             	lea    0x0(%esi),%esi

00000770 <stat>:

int
stat(const char *n, struct stat *st)
{
 770:	f3 0f 1e fb          	endbr32 
 774:	55                   	push   %ebp
 775:	89 e5                	mov    %esp,%ebp
 777:	56                   	push   %esi
 778:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 779:	83 ec 08             	sub    $0x8,%esp
 77c:	6a 00                	push   $0x0
 77e:	ff 75 08             	pushl  0x8(%ebp)
 781:	e8 ed 00 00 00       	call   873 <open>
  if(fd < 0)
 786:	83 c4 10             	add    $0x10,%esp
 789:	85 c0                	test   %eax,%eax
 78b:	78 2b                	js     7b8 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 78d:	83 ec 08             	sub    $0x8,%esp
 790:	ff 75 0c             	pushl  0xc(%ebp)
 793:	89 c3                	mov    %eax,%ebx
 795:	50                   	push   %eax
 796:	e8 f0 00 00 00       	call   88b <fstat>
  close(fd);
 79b:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 79e:	89 c6                	mov    %eax,%esi
  close(fd);
 7a0:	e8 b6 00 00 00       	call   85b <close>
  return r;
 7a5:	83 c4 10             	add    $0x10,%esp
}
 7a8:	8d 65 f8             	lea    -0x8(%ebp),%esp
 7ab:	89 f0                	mov    %esi,%eax
 7ad:	5b                   	pop    %ebx
 7ae:	5e                   	pop    %esi
 7af:	5d                   	pop    %ebp
 7b0:	c3                   	ret    
 7b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
 7b8:	be ff ff ff ff       	mov    $0xffffffff,%esi
 7bd:	eb e9                	jmp    7a8 <stat+0x38>
 7bf:	90                   	nop

000007c0 <atoi>:

int
atoi(const char *s)
{
 7c0:	f3 0f 1e fb          	endbr32 
 7c4:	55                   	push   %ebp
 7c5:	89 e5                	mov    %esp,%ebp
 7c7:	53                   	push   %ebx
 7c8:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 7cb:	0f be 02             	movsbl (%edx),%eax
 7ce:	8d 48 d0             	lea    -0x30(%eax),%ecx
 7d1:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 7d4:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 7d9:	77 1a                	ja     7f5 <atoi+0x35>
 7db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7df:	90                   	nop
    n = n*10 + *s++ - '0';
 7e0:	83 c2 01             	add    $0x1,%edx
 7e3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 7e6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 7ea:	0f be 02             	movsbl (%edx),%eax
 7ed:	8d 58 d0             	lea    -0x30(%eax),%ebx
 7f0:	80 fb 09             	cmp    $0x9,%bl
 7f3:	76 eb                	jbe    7e0 <atoi+0x20>
  return n;
}
 7f5:	89 c8                	mov    %ecx,%eax
 7f7:	5b                   	pop    %ebx
 7f8:	5d                   	pop    %ebp
 7f9:	c3                   	ret    
 7fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000800 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 800:	f3 0f 1e fb          	endbr32 
 804:	55                   	push   %ebp
 805:	89 e5                	mov    %esp,%ebp
 807:	57                   	push   %edi
 808:	8b 45 10             	mov    0x10(%ebp),%eax
 80b:	8b 55 08             	mov    0x8(%ebp),%edx
 80e:	56                   	push   %esi
 80f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 812:	85 c0                	test   %eax,%eax
 814:	7e 0f                	jle    825 <memmove+0x25>
 816:	01 d0                	add    %edx,%eax
  dst = vdst;
 818:	89 d7                	mov    %edx,%edi
 81a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
 820:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 821:	39 f8                	cmp    %edi,%eax
 823:	75 fb                	jne    820 <memmove+0x20>
  return vdst;
}
 825:	5e                   	pop    %esi
 826:	89 d0                	mov    %edx,%eax
 828:	5f                   	pop    %edi
 829:	5d                   	pop    %ebp
 82a:	c3                   	ret    

0000082b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 82b:	b8 01 00 00 00       	mov    $0x1,%eax
 830:	cd 40                	int    $0x40
 832:	c3                   	ret    

00000833 <exit>:
SYSCALL(exit)
 833:	b8 02 00 00 00       	mov    $0x2,%eax
 838:	cd 40                	int    $0x40
 83a:	c3                   	ret    

0000083b <wait>:
SYSCALL(wait)
 83b:	b8 03 00 00 00       	mov    $0x3,%eax
 840:	cd 40                	int    $0x40
 842:	c3                   	ret    

00000843 <pipe>:
SYSCALL(pipe)
 843:	b8 04 00 00 00       	mov    $0x4,%eax
 848:	cd 40                	int    $0x40
 84a:	c3                   	ret    

0000084b <read>:
SYSCALL(read)
 84b:	b8 05 00 00 00       	mov    $0x5,%eax
 850:	cd 40                	int    $0x40
 852:	c3                   	ret    

00000853 <write>:
SYSCALL(write)
 853:	b8 10 00 00 00       	mov    $0x10,%eax
 858:	cd 40                	int    $0x40
 85a:	c3                   	ret    

0000085b <close>:
SYSCALL(close)
 85b:	b8 15 00 00 00       	mov    $0x15,%eax
 860:	cd 40                	int    $0x40
 862:	c3                   	ret    

00000863 <kill>:
SYSCALL(kill)
 863:	b8 06 00 00 00       	mov    $0x6,%eax
 868:	cd 40                	int    $0x40
 86a:	c3                   	ret    

0000086b <exec>:
SYSCALL(exec)
 86b:	b8 07 00 00 00       	mov    $0x7,%eax
 870:	cd 40                	int    $0x40
 872:	c3                   	ret    

00000873 <open>:
SYSCALL(open)
 873:	b8 0f 00 00 00       	mov    $0xf,%eax
 878:	cd 40                	int    $0x40
 87a:	c3                   	ret    

0000087b <mknod>:
SYSCALL(mknod)
 87b:	b8 11 00 00 00       	mov    $0x11,%eax
 880:	cd 40                	int    $0x40
 882:	c3                   	ret    

00000883 <unlink>:
SYSCALL(unlink)
 883:	b8 12 00 00 00       	mov    $0x12,%eax
 888:	cd 40                	int    $0x40
 88a:	c3                   	ret    

0000088b <fstat>:
SYSCALL(fstat)
 88b:	b8 08 00 00 00       	mov    $0x8,%eax
 890:	cd 40                	int    $0x40
 892:	c3                   	ret    

00000893 <link>:
SYSCALL(link)
 893:	b8 13 00 00 00       	mov    $0x13,%eax
 898:	cd 40                	int    $0x40
 89a:	c3                   	ret    

0000089b <mkdir>:
SYSCALL(mkdir)
 89b:	b8 14 00 00 00       	mov    $0x14,%eax
 8a0:	cd 40                	int    $0x40
 8a2:	c3                   	ret    

000008a3 <chdir>:
SYSCALL(chdir)
 8a3:	b8 09 00 00 00       	mov    $0x9,%eax
 8a8:	cd 40                	int    $0x40
 8aa:	c3                   	ret    

000008ab <dup>:
SYSCALL(dup)
 8ab:	b8 0a 00 00 00       	mov    $0xa,%eax
 8b0:	cd 40                	int    $0x40
 8b2:	c3                   	ret    

000008b3 <getpid>:
SYSCALL(getpid)
 8b3:	b8 0b 00 00 00       	mov    $0xb,%eax
 8b8:	cd 40                	int    $0x40
 8ba:	c3                   	ret    

000008bb <sbrk>:
SYSCALL(sbrk)
 8bb:	b8 0c 00 00 00       	mov    $0xc,%eax
 8c0:	cd 40                	int    $0x40
 8c2:	c3                   	ret    

000008c3 <sleep>:
SYSCALL(sleep)
 8c3:	b8 0d 00 00 00       	mov    $0xd,%eax
 8c8:	cd 40                	int    $0x40
 8ca:	c3                   	ret    

000008cb <uptime>:
SYSCALL(uptime)
 8cb:	b8 0e 00 00 00       	mov    $0xe,%eax
 8d0:	cd 40                	int    $0x40
 8d2:	c3                   	ret    

000008d3 <getppid>:
SYSCALL(getppid)
 8d3:	b8 16 00 00 00       	mov    $0x16,%eax
 8d8:	cd 40                	int    $0x40
 8da:	c3                   	ret    

000008db <sps>:
SYSCALL(sps)
 8db:	b8 17 00 00 00       	mov    $0x17,%eax
 8e0:	cd 40                	int    $0x40
 8e2:	c3                   	ret    

000008e3 <waitpid>:
SYSCALL(waitpid)
 8e3:	b8 18 00 00 00       	mov    $0x18,%eax
 8e8:	cd 40                	int    $0x40
 8ea:	c3                   	ret    
 8eb:	66 90                	xchg   %ax,%ax
 8ed:	66 90                	xchg   %ax,%ax
 8ef:	90                   	nop

000008f0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 8f0:	55                   	push   %ebp
 8f1:	89 e5                	mov    %esp,%ebp
 8f3:	57                   	push   %edi
 8f4:	56                   	push   %esi
 8f5:	53                   	push   %ebx
 8f6:	83 ec 3c             	sub    $0x3c,%esp
 8f9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 8fc:	89 d1                	mov    %edx,%ecx
{
 8fe:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 901:	85 d2                	test   %edx,%edx
 903:	0f 89 7f 00 00 00    	jns    988 <printint+0x98>
 909:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 90d:	74 79                	je     988 <printint+0x98>
    neg = 1;
 90f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 916:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 918:	31 db                	xor    %ebx,%ebx
 91a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 91d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 920:	89 c8                	mov    %ecx,%eax
 922:	31 d2                	xor    %edx,%edx
 924:	89 cf                	mov    %ecx,%edi
 926:	f7 75 c4             	divl   -0x3c(%ebp)
 929:	0f b6 92 d8 0d 00 00 	movzbl 0xdd8(%edx),%edx
 930:	89 45 c0             	mov    %eax,-0x40(%ebp)
 933:	89 d8                	mov    %ebx,%eax
 935:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 938:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 93b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 93e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 941:	76 dd                	jbe    920 <printint+0x30>
  if(neg)
 943:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 946:	85 c9                	test   %ecx,%ecx
 948:	74 0c                	je     956 <printint+0x66>
    buf[i++] = '-';
 94a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 94f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 951:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 956:	8b 7d b8             	mov    -0x48(%ebp),%edi
 959:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 95d:	eb 07                	jmp    966 <printint+0x76>
 95f:	90                   	nop
 960:	0f b6 13             	movzbl (%ebx),%edx
 963:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 966:	83 ec 04             	sub    $0x4,%esp
 969:	88 55 d7             	mov    %dl,-0x29(%ebp)
 96c:	6a 01                	push   $0x1
 96e:	56                   	push   %esi
 96f:	57                   	push   %edi
 970:	e8 de fe ff ff       	call   853 <write>
  while(--i >= 0)
 975:	83 c4 10             	add    $0x10,%esp
 978:	39 de                	cmp    %ebx,%esi
 97a:	75 e4                	jne    960 <printint+0x70>
    putc(fd, buf[i]);
}
 97c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 97f:	5b                   	pop    %ebx
 980:	5e                   	pop    %esi
 981:	5f                   	pop    %edi
 982:	5d                   	pop    %ebp
 983:	c3                   	ret    
 984:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 988:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 98f:	eb 87                	jmp    918 <printint+0x28>
 991:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 998:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 99f:	90                   	nop

000009a0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 9a0:	f3 0f 1e fb          	endbr32 
 9a4:	55                   	push   %ebp
 9a5:	89 e5                	mov    %esp,%ebp
 9a7:	57                   	push   %edi
 9a8:	56                   	push   %esi
 9a9:	53                   	push   %ebx
 9aa:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 9ad:	8b 75 0c             	mov    0xc(%ebp),%esi
 9b0:	0f b6 1e             	movzbl (%esi),%ebx
 9b3:	84 db                	test   %bl,%bl
 9b5:	0f 84 b4 00 00 00    	je     a6f <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
 9bb:	8d 45 10             	lea    0x10(%ebp),%eax
 9be:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
 9c1:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 9c4:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
 9c6:	89 45 d0             	mov    %eax,-0x30(%ebp)
 9c9:	eb 33                	jmp    9fe <printf+0x5e>
 9cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 9cf:	90                   	nop
 9d0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 9d3:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
 9d8:	83 f8 25             	cmp    $0x25,%eax
 9db:	74 17                	je     9f4 <printf+0x54>
  write(fd, &c, 1);
 9dd:	83 ec 04             	sub    $0x4,%esp
 9e0:	88 5d e7             	mov    %bl,-0x19(%ebp)
 9e3:	6a 01                	push   $0x1
 9e5:	57                   	push   %edi
 9e6:	ff 75 08             	pushl  0x8(%ebp)
 9e9:	e8 65 fe ff ff       	call   853 <write>
 9ee:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
 9f1:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 9f4:	0f b6 1e             	movzbl (%esi),%ebx
 9f7:	83 c6 01             	add    $0x1,%esi
 9fa:	84 db                	test   %bl,%bl
 9fc:	74 71                	je     a6f <printf+0xcf>
    c = fmt[i] & 0xff;
 9fe:	0f be cb             	movsbl %bl,%ecx
 a01:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 a04:	85 d2                	test   %edx,%edx
 a06:	74 c8                	je     9d0 <printf+0x30>
      }
    } else if(state == '%'){
 a08:	83 fa 25             	cmp    $0x25,%edx
 a0b:	75 e7                	jne    9f4 <printf+0x54>
      if(c == 'd'){
 a0d:	83 f8 64             	cmp    $0x64,%eax
 a10:	0f 84 9a 00 00 00    	je     ab0 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 a16:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 a1c:	83 f9 70             	cmp    $0x70,%ecx
 a1f:	74 5f                	je     a80 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 a21:	83 f8 73             	cmp    $0x73,%eax
 a24:	0f 84 d6 00 00 00    	je     b00 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 a2a:	83 f8 63             	cmp    $0x63,%eax
 a2d:	0f 84 8d 00 00 00    	je     ac0 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 a33:	83 f8 25             	cmp    $0x25,%eax
 a36:	0f 84 b4 00 00 00    	je     af0 <printf+0x150>
  write(fd, &c, 1);
 a3c:	83 ec 04             	sub    $0x4,%esp
 a3f:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 a43:	6a 01                	push   $0x1
 a45:	57                   	push   %edi
 a46:	ff 75 08             	pushl  0x8(%ebp)
 a49:	e8 05 fe ff ff       	call   853 <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 a4e:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
 a51:	83 c4 0c             	add    $0xc,%esp
 a54:	6a 01                	push   $0x1
 a56:	83 c6 01             	add    $0x1,%esi
 a59:	57                   	push   %edi
 a5a:	ff 75 08             	pushl  0x8(%ebp)
 a5d:	e8 f1 fd ff ff       	call   853 <write>
  for(i = 0; fmt[i]; i++){
 a62:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
 a66:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
 a69:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
 a6b:	84 db                	test   %bl,%bl
 a6d:	75 8f                	jne    9fe <printf+0x5e>
    }
  }
}
 a6f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a72:	5b                   	pop    %ebx
 a73:	5e                   	pop    %esi
 a74:	5f                   	pop    %edi
 a75:	5d                   	pop    %ebp
 a76:	c3                   	ret    
 a77:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a7e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
 a80:	83 ec 0c             	sub    $0xc,%esp
 a83:	b9 10 00 00 00       	mov    $0x10,%ecx
 a88:	6a 00                	push   $0x0
 a8a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 a8d:	8b 45 08             	mov    0x8(%ebp),%eax
 a90:	8b 13                	mov    (%ebx),%edx
 a92:	e8 59 fe ff ff       	call   8f0 <printint>
        ap++;
 a97:	89 d8                	mov    %ebx,%eax
 a99:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a9c:	31 d2                	xor    %edx,%edx
        ap++;
 a9e:	83 c0 04             	add    $0x4,%eax
 aa1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 aa4:	e9 4b ff ff ff       	jmp    9f4 <printf+0x54>
 aa9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
 ab0:	83 ec 0c             	sub    $0xc,%esp
 ab3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 ab8:	6a 01                	push   $0x1
 aba:	eb ce                	jmp    a8a <printf+0xea>
 abc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
 ac0:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
 ac3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 ac6:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
 ac8:	6a 01                	push   $0x1
        ap++;
 aca:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
 acd:	57                   	push   %edi
 ace:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
 ad1:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 ad4:	e8 7a fd ff ff       	call   853 <write>
        ap++;
 ad9:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 adc:	83 c4 10             	add    $0x10,%esp
      state = 0;
 adf:	31 d2                	xor    %edx,%edx
 ae1:	e9 0e ff ff ff       	jmp    9f4 <printf+0x54>
 ae6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 aed:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
 af0:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
 af3:	83 ec 04             	sub    $0x4,%esp
 af6:	e9 59 ff ff ff       	jmp    a54 <printf+0xb4>
 afb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 aff:	90                   	nop
        s = (char*)*ap;
 b00:	8b 45 d0             	mov    -0x30(%ebp),%eax
 b03:	8b 18                	mov    (%eax),%ebx
        ap++;
 b05:	83 c0 04             	add    $0x4,%eax
 b08:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 b0b:	85 db                	test   %ebx,%ebx
 b0d:	74 17                	je     b26 <printf+0x186>
        while(*s != 0){
 b0f:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
 b12:	31 d2                	xor    %edx,%edx
        while(*s != 0){
 b14:	84 c0                	test   %al,%al
 b16:	0f 84 d8 fe ff ff    	je     9f4 <printf+0x54>
 b1c:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 b1f:	89 de                	mov    %ebx,%esi
 b21:	8b 5d 08             	mov    0x8(%ebp),%ebx
 b24:	eb 1a                	jmp    b40 <printf+0x1a0>
          s = "(null)";
 b26:	bb d0 0d 00 00       	mov    $0xdd0,%ebx
        while(*s != 0){
 b2b:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 b2e:	b8 28 00 00 00       	mov    $0x28,%eax
 b33:	89 de                	mov    %ebx,%esi
 b35:	8b 5d 08             	mov    0x8(%ebp),%ebx
 b38:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 b3f:	90                   	nop
  write(fd, &c, 1);
 b40:	83 ec 04             	sub    $0x4,%esp
          s++;
 b43:	83 c6 01             	add    $0x1,%esi
 b46:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 b49:	6a 01                	push   $0x1
 b4b:	57                   	push   %edi
 b4c:	53                   	push   %ebx
 b4d:	e8 01 fd ff ff       	call   853 <write>
        while(*s != 0){
 b52:	0f b6 06             	movzbl (%esi),%eax
 b55:	83 c4 10             	add    $0x10,%esp
 b58:	84 c0                	test   %al,%al
 b5a:	75 e4                	jne    b40 <printf+0x1a0>
 b5c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
 b5f:	31 d2                	xor    %edx,%edx
 b61:	e9 8e fe ff ff       	jmp    9f4 <printf+0x54>
 b66:	66 90                	xchg   %ax,%ax
 b68:	66 90                	xchg   %ax,%ax
 b6a:	66 90                	xchg   %ax,%ax
 b6c:	66 90                	xchg   %ax,%ax
 b6e:	66 90                	xchg   %ax,%ax

00000b70 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 b70:	f3 0f 1e fb          	endbr32 
 b74:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b75:	a1 d4 11 00 00       	mov    0x11d4,%eax
{
 b7a:	89 e5                	mov    %esp,%ebp
 b7c:	57                   	push   %edi
 b7d:	56                   	push   %esi
 b7e:	53                   	push   %ebx
 b7f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 b82:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
 b84:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b87:	39 c8                	cmp    %ecx,%eax
 b89:	73 15                	jae    ba0 <free+0x30>
 b8b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 b8f:	90                   	nop
 b90:	39 d1                	cmp    %edx,%ecx
 b92:	72 14                	jb     ba8 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b94:	39 d0                	cmp    %edx,%eax
 b96:	73 10                	jae    ba8 <free+0x38>
{
 b98:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b9a:	8b 10                	mov    (%eax),%edx
 b9c:	39 c8                	cmp    %ecx,%eax
 b9e:	72 f0                	jb     b90 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 ba0:	39 d0                	cmp    %edx,%eax
 ba2:	72 f4                	jb     b98 <free+0x28>
 ba4:	39 d1                	cmp    %edx,%ecx
 ba6:	73 f0                	jae    b98 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
 ba8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 bab:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 bae:	39 fa                	cmp    %edi,%edx
 bb0:	74 1e                	je     bd0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 bb2:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 bb5:	8b 50 04             	mov    0x4(%eax),%edx
 bb8:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 bbb:	39 f1                	cmp    %esi,%ecx
 bbd:	74 28                	je     be7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 bbf:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
 bc1:	5b                   	pop    %ebx
  freep = p;
 bc2:	a3 d4 11 00 00       	mov    %eax,0x11d4
}
 bc7:	5e                   	pop    %esi
 bc8:	5f                   	pop    %edi
 bc9:	5d                   	pop    %ebp
 bca:	c3                   	ret    
 bcb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 bcf:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
 bd0:	03 72 04             	add    0x4(%edx),%esi
 bd3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 bd6:	8b 10                	mov    (%eax),%edx
 bd8:	8b 12                	mov    (%edx),%edx
 bda:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 bdd:	8b 50 04             	mov    0x4(%eax),%edx
 be0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 be3:	39 f1                	cmp    %esi,%ecx
 be5:	75 d8                	jne    bbf <free+0x4f>
    p->s.size += bp->s.size;
 be7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 bea:	a3 d4 11 00 00       	mov    %eax,0x11d4
    p->s.size += bp->s.size;
 bef:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 bf2:	8b 53 f8             	mov    -0x8(%ebx),%edx
 bf5:	89 10                	mov    %edx,(%eax)
}
 bf7:	5b                   	pop    %ebx
 bf8:	5e                   	pop    %esi
 bf9:	5f                   	pop    %edi
 bfa:	5d                   	pop    %ebp
 bfb:	c3                   	ret    
 bfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000c00 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 c00:	f3 0f 1e fb          	endbr32 
 c04:	55                   	push   %ebp
 c05:	89 e5                	mov    %esp,%ebp
 c07:	57                   	push   %edi
 c08:	56                   	push   %esi
 c09:	53                   	push   %ebx
 c0a:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 c0d:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 c10:	8b 3d d4 11 00 00    	mov    0x11d4,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 c16:	8d 70 07             	lea    0x7(%eax),%esi
 c19:	c1 ee 03             	shr    $0x3,%esi
 c1c:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 c1f:	85 ff                	test   %edi,%edi
 c21:	0f 84 a9 00 00 00    	je     cd0 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c27:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
 c29:	8b 48 04             	mov    0x4(%eax),%ecx
 c2c:	39 f1                	cmp    %esi,%ecx
 c2e:	73 6d                	jae    c9d <malloc+0x9d>
 c30:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 c36:	bb 00 10 00 00       	mov    $0x1000,%ebx
 c3b:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 c3e:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
 c45:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
 c48:	eb 17                	jmp    c61 <malloc+0x61>
 c4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c50:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
 c52:	8b 4a 04             	mov    0x4(%edx),%ecx
 c55:	39 f1                	cmp    %esi,%ecx
 c57:	73 4f                	jae    ca8 <malloc+0xa8>
 c59:	8b 3d d4 11 00 00    	mov    0x11d4,%edi
 c5f:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 c61:	39 c7                	cmp    %eax,%edi
 c63:	75 eb                	jne    c50 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
 c65:	83 ec 0c             	sub    $0xc,%esp
 c68:	ff 75 e4             	pushl  -0x1c(%ebp)
 c6b:	e8 4b fc ff ff       	call   8bb <sbrk>
  if(p == (char*)-1)
 c70:	83 c4 10             	add    $0x10,%esp
 c73:	83 f8 ff             	cmp    $0xffffffff,%eax
 c76:	74 1b                	je     c93 <malloc+0x93>
  hp->s.size = nu;
 c78:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 c7b:	83 ec 0c             	sub    $0xc,%esp
 c7e:	83 c0 08             	add    $0x8,%eax
 c81:	50                   	push   %eax
 c82:	e8 e9 fe ff ff       	call   b70 <free>
  return freep;
 c87:	a1 d4 11 00 00       	mov    0x11d4,%eax
      if((p = morecore(nunits)) == 0)
 c8c:	83 c4 10             	add    $0x10,%esp
 c8f:	85 c0                	test   %eax,%eax
 c91:	75 bd                	jne    c50 <malloc+0x50>
        return 0;
  }
}
 c93:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 c96:	31 c0                	xor    %eax,%eax
}
 c98:	5b                   	pop    %ebx
 c99:	5e                   	pop    %esi
 c9a:	5f                   	pop    %edi
 c9b:	5d                   	pop    %ebp
 c9c:	c3                   	ret    
    if(p->s.size >= nunits){
 c9d:	89 c2                	mov    %eax,%edx
 c9f:	89 f8                	mov    %edi,%eax
 ca1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 ca8:	39 ce                	cmp    %ecx,%esi
 caa:	74 54                	je     d00 <malloc+0x100>
        p->s.size -= nunits;
 cac:	29 f1                	sub    %esi,%ecx
 cae:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
 cb1:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
 cb4:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
 cb7:	a3 d4 11 00 00       	mov    %eax,0x11d4
}
 cbc:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 cbf:	8d 42 08             	lea    0x8(%edx),%eax
}
 cc2:	5b                   	pop    %ebx
 cc3:	5e                   	pop    %esi
 cc4:	5f                   	pop    %edi
 cc5:	5d                   	pop    %ebp
 cc6:	c3                   	ret    
 cc7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 cce:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
 cd0:	c7 05 d4 11 00 00 d8 	movl   $0x11d8,0x11d4
 cd7:	11 00 00 
    base.s.size = 0;
 cda:	bf d8 11 00 00       	mov    $0x11d8,%edi
    base.s.ptr = freep = prevp = &base;
 cdf:	c7 05 d8 11 00 00 d8 	movl   $0x11d8,0x11d8
 ce6:	11 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ce9:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
 ceb:	c7 05 dc 11 00 00 00 	movl   $0x0,0x11dc
 cf2:	00 00 00 
    if(p->s.size >= nunits){
 cf5:	e9 36 ff ff ff       	jmp    c30 <malloc+0x30>
 cfa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 d00:	8b 0a                	mov    (%edx),%ecx
 d02:	89 08                	mov    %ecx,(%eax)
 d04:	eb b1                	jmp    cb7 <malloc+0xb7>
