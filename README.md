# nifi-registry-repo

This is a repository to assist me in evaluating NiFi Registry

* Install [NiFi](https://nifi.apache.org/)
* Install [NiFi Registry](https://nifi.apache.org/docs/nifi-registry-docs/index.html)

## NiFi Registry Config

* Edit nifi-registry/conf/providers.xml
  * official method: change the flowPersistenceProvider to use Git:

        <class>org.apache.nifi.registry.provider.flow.git.GitFlowPersistenceProvider</class>

  * Edit the **Flow Storage Directory** element
  * Appears to work OK if just storing in a git monitored folder

## NiFi Registry UI

* Start NiFi Registry
* Navigate to http://localhost:18080/nifi-registry
* Create a bucket as per the docs

## NiFi UI

* Start NiFi
* Controller Settings
  * Registry Clients
    * add a client - location: **http://localhost:18080/**
