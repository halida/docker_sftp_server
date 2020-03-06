up:
	docker-compose -f docker-compose.yml up
down:
	docker-compose -f docker-compose.yml down

connect:
	sftp -P 2222 bar@localhost
bash:
	docker exec -it sftp_sftp_1 bash

keys:
	cd config && ssh-keygen -t ed25519 -f ssh_host_ed25519_key < /dev/null
	cd config && ssh-keygen -t rsa -b 4096 -f ssh_host_rsa_key < /dev/null

