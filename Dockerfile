FROM ruby

LABEL Author="Eberson Oliveira <eberson.oliveira@gmail.com>"

WORKDIR /opt/workspace

RUN apt-get update && \
    apt-get install -y curl \
                       xvfb \
                       build-essential \
                       libgl1-mesa-dev \
                       libffi-dev \
                       wget 

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3                       
RUN curl -sSL https://get.rvm.io | bash -s stable
RUN unset GEM_HOME
RUN bash -c "source /etc/profile.d/rvm.sh"

RUN bundle config --global ignore_messages true

RUN gem install bundler
RUN gem install cucumber
RUN cucumber --init
RUN mkdir -p features/specifications