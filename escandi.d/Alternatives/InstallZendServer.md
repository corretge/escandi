Install ZendServer from Zend repositories
=========================================

@link http://bloc.corretge.cat/2011/04/installant-zend-server-community.html

Seguint les instruccions de la documentació de Zend , instal·larem el Zend Server Community Edition a un Ubuntu Server des del repositoris DEB de Zend.

Primer de tot, afegim el repositori de Zend a l'arxiu /etc/apt/sources.list:
```## Repositori de Zend per a Zend Server Community Edition
deb http://repos.zend.com/zend-server/deb server non-free
```


Seguidament instal·lem la public key d'aquest repositori
```wget http://repos.zend.com/zend.key -O- | sudo apt-key add -
```

I actualitzem el llistat de paquets
```sudo apt-get update
```

I procedim a instal·lar els paquets:
```sudo apt-get install zend-server-ce-php-5.3 php-5.3-extra-extensions-zend-server php-5.3-loader-zend-server zend-server-framework-dojo zend-server-framework-extras control-panel-zend-server
```
