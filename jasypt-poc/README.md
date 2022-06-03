CADENA
======
Encriptar 
mvn jasypt:encrypt-value -Djasypt.encryptor.password=qwerty -Djasypt.plugin.value=password

Desencriptar
mvn jasypt:decrypt-value -Djasypt.encryptor.password=qwerty -Djasypt.plugin.value=

FICHERO
=======
Encriptar fichero
mvn jasypt:encrypt -Djasypt.encryptor.password=qwerty -Djasypt.plugin.path="file:src/main/resources/application.yml"

Encriptar fichero con parámetros de encriptación
mvn jasypt:encrypt -Djasypt.encryptor.password='qwerty' -Djasypt.encryptor.algorithm=PBEWithMD5AndTripleDES -Djasypt.encryptor.iv-generator-classname=org.jasypt.iv.RandomIvGenerator -Djasypt.encryptor.salt-generator-classname=org.jasypt.salt.RandomSaltGenerator -Djasypt.encryptor.key-obtention-iterations=1000 -Djasypt.plugin.path="file:src/main/resources/application.yml"