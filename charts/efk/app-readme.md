# EFK

EFK(Elasticsearch + Firefly+ Kibana) are flexible and powerful open source projects, provides distributed real-time search and analytics tools.</br>

This chart bootstraps a EFK stack with the following components:
- Elasticsearch
- Kibana

##Know issues:

[Java error during startup](https://opendistro.github.io/for-elasticsearch-docs/docs/troubleshoot/#java-error-during-startup)

You might see [ERROR][c.a.o.s.s.t.OpenDistroSecuritySSLNettyTransport] [odfe-node1] SSL Problem Insufficient buffer remaining for AEAD cipher fragment (2). Needs to be more than tag size (16) when starting Open Distro for Elasticsearch. This problem is a known issue with Java and doesn’t affect the operation of the cluster.