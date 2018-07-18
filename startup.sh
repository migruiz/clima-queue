#!/bin/sh
rabbitmq-plugins enable rabbitmq_management;
service rabbitmq-server start;
rabbitmqctl add_user pi pi;
rabbitmqctl set_user_tags pi administrator;
rabbitmqctl set_permissions -p / pi ".*" ".*" ".*";
service rabbitmq-server stop
rabbitmq-server start