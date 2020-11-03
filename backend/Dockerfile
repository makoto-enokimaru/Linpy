#Rubyを使用
FROM ruby:2.6.6

#文字コードをUTF-8に設定
ENV LANG C.UTF-8

#TimeZoneを日本に設定
ENV TZ Asia/Tokyo

#ルート直下にappディレクトリを作成
RUN mkdir /app

#作業ディレクトリに/appを指定して移動
WORKDIR /app

#HostのGemfileを共有
COPY Gemfile /app/Gemfile

#各種パッケージをインストール
#libpq: GemにてMySQLを導入するために必要
#sudo: 権限変更管理
#bundler(Gemfileに記載されたパッケージをインストールする仕組み)をインストール
RUN apt-get update -qq && apt-get install -y build-essential \
	default-libmysqlclient-dev \
	&& gem install bundler:2.0.1 \
	&& gem install mysql2 -v '0.5.3' --source 'https://rubygems.org/' -- --with-cppflags=-I/usr/local/opt/openssl@1.1/include --with-ldflags=-L/usr/local/opt/openssl@1.1/lib




#Gemfileに記載されたパッケージをインストール
#Gemfileにはrails '6.0.3'が記載されている
RUN bundle install 

#/appとカレントディレクトリを共有
COPY . /app