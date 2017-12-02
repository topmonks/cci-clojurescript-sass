FROM circleci/clojure:lein-2.8.1

RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash
RUN sudo apt-get update && sudo apt-get install -y build-essential nodejs  && sudo rm -rf /var/lib/apt/lists/*

COPY ./install-sassc.sh /tmp/scripts/

RUN mkdir /home/circleci/bin \
 && sudo chmod +x /tmp/scripts/install-sassc.sh \
 && sudo bash /tmp/scripts/install-sassc.sh
