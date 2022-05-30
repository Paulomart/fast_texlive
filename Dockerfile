FROM texlive/texlive

RUN apt-get update && apt-get install graphviz inkscape -y

RUN curl -L https://github.com/plantuml/plantuml/releases/download/v1.2022.4/plantuml-1.2022.4.jar --output /usr/share/plantuml-1.2022.4.jar

RUN luaotfload-tool --update

ENV TZ Europe/Berlin
ENV PLANTUML_JAR /usr/share/plantuml-1.2022.4.jar
