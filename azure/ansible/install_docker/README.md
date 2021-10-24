### Playbook para a versão 20.04 do Ubuntu
### Adicionar conexão no host
user@ip_da_maquina ansible_ssh_private_key_file=chave_local.pem

### Caso use chave privada para entrar na máquina mude a permissão para 600
chmod 600 chave_privada.pem 

### Comando para executar o playbook
ansible-playbook -i hosts install-docker.yaml       