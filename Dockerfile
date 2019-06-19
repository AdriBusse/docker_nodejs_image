FROM node:8
#Welches Image als grundgerüst

WORKDIR /usr/src/app
#in welchem Verzeichnis im Container die sein soll


COPY package*.json ./
#damit package.lock auch mit kopiert wird

RUN npm install
#app dependencies installieren
#besser erst dependencies installieren

COPY . .
#den rest mit kopieren

EXPOSE 8080
#Port für die app

CMD [ "npm", "start"]
#node Befehl zum starten der app

