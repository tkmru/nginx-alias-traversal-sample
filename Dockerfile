FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
ADD vulnerable.conf /etc/nginx/conf.d/vulnerable.conf
ADD index.html /usr/share/nginx/html/index.html
RUN mkdir -p /var/www/app/static
RUN echo 'Welcome sample app!' > /var/www/app/static/welcome.txt
RUN echo 'flag{ng1nx_0ff_by_5la5h}' > /var/www/app/flag.txt
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
