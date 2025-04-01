FROM hexletbasics/base-image

WORKDIR /exercises-layout-designer

ENV PATH=$PATH:/exercises-layout-designer/node_modules/.bin

COPY package.json package-lock.json .

RUN npm ci

COPY . .

ENV NODE_PATH=/usr/lib/node_modules:/exercises-layout-designer/src
