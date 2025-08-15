import yaml
from robot import run

# Carregar credenciais do arquivo YAML
with open("credentials.yaml", "r") as file:
    credentials = yaml.safe_load(file)

username = credentials['credentials']['username']
password = credentials['credentials']['password']

# Passar credenciais como variáveis para o Robot Framework
run("test.robot", variable=[f"USERNAME:{username}", f"PASSWORD:{password}"])