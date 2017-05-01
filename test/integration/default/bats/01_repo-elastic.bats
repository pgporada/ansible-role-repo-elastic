#!/usr/bin/env bats

@test "Elastic repo is in place" {
    run stat /etc/yum.repos.d/elastic.repo
    [ "$status" -eq 0 ]
}

@test "Elasticsearch is installable" {
    run yum install -y elasticsearch
    [ "$status" -eq 0 ]
}

@test "Logstash is installable" {
    run yum install -y java logstash
    [ "$status" -eq 0 ]
}

@test "Filebeat is installable" {
    run yum install -y filebeat
    [ "$status" -eq 0 ]
}

@test "Kibana is installable" {
    run bash -c "yum install -y kibana"
    [ "$status" -eq 0 ]
}

@test "Elasticsearch 5.x was installed" {
    run rpm -q elasticsearch-5*
    [ "$status" -eq 0 ]
}

@test "Logstash 5.x was installed" {
    run rpm -q logstash-5*
    [ "$status" -eq 0 ]
}

@test "Filebeat 5.x was installed" {
    run rpm -q filebeat-5*
    [ "$status" -eq 0 ]
}

@test "Kibana 5.x is installed" {
    run rpm -q kibana-5*
    [ "$status" -eq 0 ]
}

@test "Elasticsearch can start" {
    systemctl start elasticsearch
    run systemctl is-active elasticsearch
    systemctl stop elasticsearch
    [ "$status" -eq 0 ]
}

@test "Logstash can start" {
    systemctl start logstash
    run systemctl is-active logstash
    systemctl stop logstash
    [ "$status" -eq 0 ]
}

@test "Filebeat can start" {
    systemctl start filebeat
    run systemctl is-active filebeat
    systemctl stop filebeat
    [ "$status" -eq 0 ]
}

@test "Kibana can start" {
    systemctl start kibana
    run systemctl is-active kibana
    systemctl stop kibana
    [ "$status" -eq 0 ]
}
