FROM laravelsail/php81-composer

RUN apt-get update -y && apt-get upgrade -y 

RUN apt-get install -y --no-install-recommends libfreetype6-dev libjpeg62-turbo-dev libpng-dev \
    && rm -r /var/lib/apt/lists/* \
    && docker-php-ext-install -j$(nproc) gd 
