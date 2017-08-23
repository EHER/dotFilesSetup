FROM alpine
RUN apk add --update git ansible bash
RUN git clone https://github.com/EHER/dotFiles.git /opt/dotFiles
RUN ansible-playbook /opt/dotFiles/playbook.yml
CMD /bin/bash
