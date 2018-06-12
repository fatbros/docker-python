FROM python:3

RUN apt-get update -y && apt-get dist-upgrade -fy
RUN apt-get install -fy git vim zsh
RUN apt-get install -fy ghc cabal-install
RUN apt-get clean

RUN useradd -m -d /home/python_user -s /bin/zsh python_user
USER python_user
WORKDIR /home/python_user
ENV HOME /home/python_user

# oh-my-zsh setting
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

# pyenv
RUN git clone git://github.com/yyuu/pyenv.git .pyenv

ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

RUN pyenv install 3.6.5
RUN pyenv global 3.6.5
RUN pyenv rehash

# pipenv
RUN pip install pipenv

# output python infomation
ADD info.py /home/python_user/info.py

ENTRYPOINT ["/bin/zsh"]
