# php-fpm-alpine-mysqli

The official [php-fpm Alpine image](https://hub.docker.com/_/php) with the `mysqli` extension and the production `php.ini` (display_errors off, `zend.exception_ignore_args` on).

There is no registry. The Ansible playbook builds it on the server straight from this repo, and `--pull` fetches the latest PHP patch release each time:

    docker build --pull --network=host -t ccj-php-fpm-alpine-mysqli:8.5 https://github.com/ccjeagle/php-fpm-alpine-mysqli.git#main

To follow another minor (8.4, 8.3 or 8.2), change the `FROM` line.
