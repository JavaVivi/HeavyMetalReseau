#include <netinet/in.h>
#include <sys/socket.h>
#include <string.h>
#include <stdio.h>
#include <arpa/inet.h>

int main () {
	char buf [80] ;
	
	int s_ecoute, s_dial, cli_len ;
	struct sockaddr_in serv_addr, cli_addr ;

	serv_addr.sin_family = AF_INET ;
	serv_addr.sin_addr.s_addr = INADDR_ANY ;
	serv_addr.sin_port = htons (5000) ;
	memset (&serv_addr.sin_zero, 0, sizeof(serv_addr.sin_zero));

	s_ecoute = socket (PF_INET, SOCK_STREAM, 0) ;
	bind (s_ecoute, (struct sockaddr *)&serv_addr, sizeof serv_addr) ;

	listen (s_ecoute, 5) ;
	cli_len = sizeof (cli_addr) ;
	s_dial = accept (s_ecoute, (struct sockaddr *)&cli_addr, &cli_len) ;
	printf ("Le client d'adresse IP %s s'est connecté depuis son port %d\n", \
	            inet_ntoa (cli_addr.sin_addr), ntohs (cli_addr.sin_port)) ;

	memset (buf, 0, 80);
	read (s_dial, buf, 80) ;
	printf ("J'ai recu [%s] du client\n", buf) ;

        memset (buf, 0, 80);
        strcpy (buf, "Bonjour client ! Ca va ?") ;
        write (s_dial, buf, strlen (buf)) ;
        printf ("J'ai envoye [%s] au client\n", buf) ;

        memset (buf, 0, 80);
        read (s_dial, buf, 80) ;
        printf ("J'ai recu [%s] du client\n", buf) ;

	/* Exemple de réponse variant suivant ce qu'on a recu */
	if (!strncmp (buf, "Au revoir", strlen ("Au revoir"))) {
        	strcpy (buf, "Bye") ;
	}
	else {
        	strcpy (buf, "Salut") ;
	}
        write (s_dial, buf, strlen (buf)) ;
        printf ("J'ai envoye [%s] au client\n", buf) ;

	close (s_dial) ;
	close (s_ecoute) ;
}
