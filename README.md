# Colorful Adminer

Do you want to distinguish your production adminer instance from your development one?

Turn
![default](https://user-images.githubusercontent.com/284338/31570996-c63c1444-b0e7-11e7-8e74-be89f25fe325.png)

Into

![dev](https://user-images.githubusercontent.com/284338/31570997-c66e8e24-b0e7-11e7-8dbf-c8c83094161d.png)
![stag](https://user-images.githubusercontent.com/284338/31570999-c6efc0c0-b0e7-11e7-90d3-f53ef79dbbb6.png)
![prod](https://user-images.githubusercontent.com/284338/31570998-c6b42da8-b0e7-11e7-9f57-860b75434e0e.png)

Run

```
docker build -t cilf/adminer --build-arg color=red .
docker run -it --rm -e ENV_NAME='PROD' -p 8080:8080 --name adminer -h adminer cilf/adminer
```

Or

```
docker-compose up --build
```
