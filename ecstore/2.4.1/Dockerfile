FROM centos:6

MAINTAINER "kent" <kent@catwork.cn>
ENV container docker

RUN yum install wget -y;\
    cd /etc/yum.repos.d/;\
    wget http://mirrors.shopex.cn/shopex/shopex-lnmp/shopex-lnmp.repo;

RUN yum install epel-release -y;\
    yum install php-fpm56 ngx_openresty mysql Zend56 php-memcached56 memcached redis -y;

RUN sed -i '704a always_populate_raw_post_data = -1' /usr/local/php56/etc/php.ini;\
    sed -i 's/max_execution_time = 30/max_execution_time = 0/' /usr/local/php56/etc/php.ini;\
    sed -i 's/memory_limit = 128M/memory_limit = -1/' /usr/local/php56/etc/php.ini;\
    sed -i 's/display_errors = Off/display_errors = On/' /usr/local/php56/etc/php.ini;\
    sed -i 's/display_startup_errors = Off/display_startup_errors = On/' /usr/local/php56/etc/php.ini;\
    sed -i 's/\/data\/httpd\//\/data\/httpd\/web-root\//' /usr/local/nginx/conf/vhosts/default.conf;\
    chown -R www:www /data/httpd;

COPY zend.ini /usr/local/php56/etc/php.d/Zend.ini
COPY shopex-dev-startup.sh /root/shopex-dev-startup.sh
COPY shopex-server-init.sh /root/shopex-server-init.sh

EXPOSE 80
EXPOSE 3306

VOLUME ["/data/httpd/web-root"]

ENTRYPOINT ["/root/shopex-dev-startup.sh"]

WORKDIR /data/httpd/web-root