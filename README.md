# EntityRecord
Spring MVC projesi

## Çalıştırma
- Proje indirildikten sonra tomcat sunucusunda ayarlar yapılır.
- <TOMCAT_HOME>t/conf/tomcat-users.xml
```
    <role rolename="manager-gui"/>
    <role rolename="manager-script"/>
    <role rolename="manager-jmx"/>
    <role rolename="manager-status"/>
    <role rolename="admin"/>
    <user username="<change>" password="<change>" roles="admin,manager-gui,manager-script"/>
```
- MySQL sunucusu ayarlanır
- MySQL sunucusu şifre ve kullanıcı adı spring-servlet.xml içerisine yazılır.
- Tomcat sunucu ismi, şifresi, kullanıcı adı settings.xml içine yazılır.
- Tomcat şifresi, kullanıcı adı tomcat-user.xml içine yazılır.
- pom.xml içerisine 142.satırdan başlayarak Tomcat şifresi, kullanıcı adı yazılır.
- Projenin bulunduğu dizinde terminale girilir.
    
    ```console
         mvn install tomcat7:deploy
    ``` 
    komutu ile çalıştırılır.
- Tarayıcıda http://localhost:8080/EntityRecord adresinden uygulama denemeye hazırdır.
