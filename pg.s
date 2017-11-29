; IFES CAMPUS SERRA
; ENGENHARIA DE CONTROLE E AUTOMAÇÃO
; Trabalho Arquitetura de COmputadores
; Programa em assembly para calcular, a partir de um numero base de entrada, uma progressão geométrica com razão 2, numa sequência de 10 números.
; Adriele Ramos e Amanda Lucas

; Initial Statements and Registers

		AND		R9, R9, #0 ; zerar registrador
		AND		R1, R1, #0 ; valor inicial do contador
		AND		R5, R5, #0 ; gerar registrador
		AND		R6, R6, #0 ; zerar registrador
		ADD		R9,R9, #2 ;R4 recebe valor de R0 + 2 -  valor de base
		ADD		R5, R5, #4000 ; memoria a partir da qual valores serão armazenados
		STR		R9,[R5, #0] ; armazenar valor de base no endereço 4000
		ADD		R6, R6, #2147483648 ; valor máximo que PG pode alcançar

; PG itself

WHILE
		CMP		R1, #9		; enquanto não tiver 10 valores na PG
		BEQ		DONE            ; branch pra sair do WHILE se a flag Zero = 1
		LSL		R9, R9, #1	; R4 = R4*2 (PG com razão 2)
		ADD		R8, R9, #0	; registrador R8 recebe resultado da PG
		ADD		R1, R1, #1	; (contador soma 1)
		ADD		R5, R5, #4	; deslocamento do endereço de memória em 32 bits
		STR		R8, [R5, #0]	; resultado da PG armazenado no próximo endereço de memória deslocado
		TST		R8, R6		; teste/verificar se o resultado da PG é menor que o valor de R6
		B		WHILE
DONE
		LDR		R4, [R5, #0]	; valor final armazenado no registrador RX, X=4.
