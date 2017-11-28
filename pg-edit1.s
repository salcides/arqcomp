# trabalho Arquitetura de COmputadores
#PG 
#Adriele Ramos e Amanda Lucas

		MOV		R0, #0 ;
		ADD		R9,R0, #2 ;R4 recebe valor de R0 + 2 -  valor de base
		MOV		R5, #4000 ; memoria a partir da qual valores serão armazenados
		STR		R9,[R5, #0] ; armazenar valor de base no endereço 4000
		MOV		R6, #2147483648 ; valor máximo que PG pode alcançar
		
