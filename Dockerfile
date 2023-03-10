FROM hexletbasics/base-image

WORKDIR /exercises-layout-designer

RUN npm i -g htmlhint
RUN npm i -g jsdom jsdom-global
RUN npm i -g chai chai-dom
RUN npm i -g @testing-library/dom
RUN npm i -g @github/query-selector

COPY . .

ENV NODE_PATH /usr/lib/node_modules:/exercises-layout-designer/src
