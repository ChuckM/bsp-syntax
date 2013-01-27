" Vim syntax file
" Language: PIC Basic (Parallax Basic Stamp Language)
" Maintainer: Chuck McManis <cmcmanis@mcmanis.com>
" Last Change: Sat Jan 26 21:28:30 PST 2013

" Clear old syntax
syn clear

" Basic Stamp 1 Keywords
syn case ignore
" Need to match { word } as directive
syn keyword bspType BS2P BS2PE BS2PX BS2 BS2E BS2SX
syn match bspConditional "#DEFINE"
syn match bspConditional "#IF"
syn match bspConditional "#THEN"
syn match bspConditional "#ELSE"
syn match bspConditional "#ERROR"
syn match bspConditional "#SELECT"
syn match bspConditional "#CASE"
syn match bspConditional "#ENDSELECT"
syn keyword bspVars PORT PINS DIRS 
syn keyword bspVars PIN0 PIN1 PIN2 PIN3 PIN4 PIN5 PIN6 PIN7
syn keyword bspVars DIR0 DIR1 DIR2 DIR3 DIR4 DIR5 DIR6 DIR7
syn keyword bspVars W0 B0 B1
syn keyword bspVars BIT0 BIT1 BIT2 BIT3 BIT4 BIT7 BIT6 BIT7
syn keyword bspVars BIT8 BIT9 BIT10 BIT11 BIT12 BIT13 BIT14 BIT15
syn keyword bspVars W1 B2 B3
syn keyword bspVars W2 B4 B5
syn keyword bspVars W3 B6 B7
syn keyword bspVars W4 B8 B9
syn keyword bspVars W5 B10 B11
syn keyword bspVars W6 B12 B13
syn keyword bspVars INS INL INH INA INB INC IND
syn keyword bspVars IN0 IN1 IN2 IN3 IN4 IN5 IN6 IN7 
syn keyword bspVars IN8 IN9 IN10 IN11 IN12 IN13 IN14 IN15
syn keyword bspVars OUTS OUTL OUTH OUTA OUTB OUTC OUTD
syn keyword bspVars OUT0 OUT1 OUT2 OUT3 OUT4 OUT5 OUT6 OUT7 
syn keyword bspVars OUT8 OUT9 OUT10 OUT11 OUT12 OUT13 OUT14 OUT15
syn keyword bspVars DIRS DIRL DIRH DIRA DIRB DIRC DIRD
syn keyword bspVars DIR0 DIR1 DIR2 DIR3 DIR4 DIR5 DIR6 DIR7 
syn keyword bspVars DIR8 DIR9 DIR10 DIR11 DIR12 DIR13 DIR14 DIR15
syn keyword PbVars W7 B14 B15
syn keyword bspVars W8 B16 B17
syn keyword bspVars W9 B18 B19
syn keyword bspVars W10 B20 B21
syn keyword bspVars W11 B22 B23
syn keyword bspVars W12 B24 B25
syn keyword bspCommand SYMBOL VAR IOTERM AUXIO MAINIO
syn keyword bspType BIT NIB BYTE WORD
syn keyword bspModifier LOWBYTE HIGHBYTE BYTE0 BYTE1
syn keyword bspModifier LOWNIB HIGHNIB NIB0 NIB1 NIB2 NIB3
syn keyword bspModifier LOWBIT HIGHBIT
syn keyword bspModifier .BIT0 .BIT1 .BIT2 .BIT3 .BIT4 .BIT7 .BIT6 .BIT7
syn keyword bspModifier .BIT8 .BIT9 .BIT10 .BIT11 .BIT12 .BIT13 .BIT14 .BIT15
syn keyword bspOperator + - * / << >> & \| ^
syn keyword bspTodo TODO NOTE XXX contained
syn match bspDirective "$PORT" contained
syn match bspDirective "$PBASIC" contained
syn match bspDirective "$STAMP" contained
syn match bspSetup "{.*}" contains=pbDirective,pbType
syn match bspComment /'.*/ contains=pbTodo,pbSetup
syn match bspDecimal "\d\+" 
syn match bspHexadecimal "$\x\+"
syn match PbBinary  "%[0-1]+"
syn keyword bspCommand BRANCH IF THEN GOTO GOSUB
syn keyword bspCommand ON RETURN RUN POLLRUN STOP
syn keyword bspCommand DO LOOP EXIT FOR NEXT
syn keyword bspCommand EEPROM DATA READ WRITE STORE
syn keyword bspCommand GET PUT LET LOOKUP LOOKDOWN RANDOM
syn keyword bspFunction CONFIGPIN INPUT OUTPUT REVERSE LOW HIGH TOGGLE
syn keyword bspFunction PULSIN PULSOUT BUTTON COUNT XOUT AUXIO MAINIO 
syn keyword bspFunction IOTERM POLLIN POLLOUT POLLMODE
syn keyword bspFunction SERIN SEROUT OWIN OWOUT
syn keyword bspFunction SHIFTIN SHIFTOUT I2CIN I2COUT
syn keyword bspFunction LCDCMD LCDIN LCDOUT
syn keyword bspFunction PWM POT RCTIME COMPARE
syn keyword bspFunction SOUND FREQOUT DTMFOUT
syn keyword bspCommand NAP SLEEP END PAUSE POLLWAIT
syn keyword bspCommand DEBUG DEBUGIN
syn match bspLabel "^[A-Z_][A-Z0-9_]*:"
syn match bspLabel "^[A-Z_][A-Z0-9_]*:"me=e-1
syn match bspString /".*"/


hi def link bspLabel Label
hi def link bspComment Comment
hi def link bspBinary Number
hi def link bspDecimal Number
hi def link bspHexadecimal Number
hi def link bspCommand Statement
hi def link bspFunction Operator
hi def link bspVars Variable
hi def link bspOperator Operator
hi def link bspDirective String
hi def link bspSetup String
hi def link bspConditional PreProc
hi def link bspType Type
hi def link bspModifier Type
hi def link bspString String
hi def link bspTodo Todo

