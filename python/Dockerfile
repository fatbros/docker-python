FROM python:3

RUN apt-get update -y && apt-get dist-upgrade -fy
RUN apt-get install -fy git vim zsh
RUN apt-get install -fy ghc cabal-install
RUN apt-get clean

WORKDIR /root
ENV HOME /root

# oh-my-zsh setting
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

# pipenv
RUN pip install pipenv

# copy pipfile & pipenv install
RUN mkdir /usr/local/src/app
WORKDIR /usr/local/src/app
ADD app/Pipfile .
ADD app/Pipfile.lock .
RUN pipenv install
