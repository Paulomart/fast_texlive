FROM texlive/texlive

RUN apt-get update && apt-get install graphviz inkscape -y

RUN wget -P /usr/share/ -o plantuml.1.2022.0.jar  https://downloads.sourceforge.net/project/plantuml/1.2022.0/plantuml.1.2022.0.jar

RUN luaotfload-tool --update

ENV PLANTUML_JAR /usr/share/plantuml.1.2022.0.jar
