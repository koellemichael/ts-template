FROM node:17

WORKDIR /usr/src/app

# Install yarn 
RUN npm install --location=global --force yarn

# Copy package.json and yarn.lock
COPY package.json ./
COPY yarn.lock ./

# Install dependencies
RUN yarn install --frozen-lockfile

# Copy the rest of the application
# it's typical to see one step that just installs dependencies, 
# and a second step that adds the actual application, 
# because it makes rebuilding the container go faster.
COPY . .

# EXPOSE Port

CMD ["yarn", "start"]