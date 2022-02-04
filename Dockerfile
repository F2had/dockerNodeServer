FROM alpine

WORKDIR /usr/app

#Copy current files to the working directory
COPY ./ /usr/app

# Install npm package
RUN apk add --update npm

#Install project dependencies
RUN npm i

#Run the node server
CMD ["node", "index.js"]