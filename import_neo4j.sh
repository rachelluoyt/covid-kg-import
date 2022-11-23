#!/bin/bash
# 
# This script runs the Neo4j bulk data import.
#
# Place a copy of this script outside this Git Repository and set the <variables> below.
#

# Absolute path to Neo4j home directory
#    Add quotes if the path contains spaces, e.g.,
#    export NEO4J_HOME="/Users/User/Library/Application Support/Neo4j Desktop/Application/relate-data/dbmss/dbms-0a85af40-86b9-4245-8d96-f51dba4acdc0"
export NEO4J_HOME="/Users/lyt/Library/Application Support/Neo4j Desktop/Application/relate-data/dbmss/dbms-abdb588e-f73c-412b-8fd1-c1ae66ee2f5d"

# Absolute path to Neo4j bin directory
#    On MacOS: NEO4J_BIN="$NEO4J_HOME"/bin
export NEO4J_BIN="$NEO4J_HOME"/bin

export NEO4J_USERNAME=neo4j
export NEO4J_PASSWORD=kg-import

# A new database will be created if it does not exist.
# An existing database will be overwritten with the new data.
export NEO4J_DATABASE=covid19-kg

# Absolute paths to node and relationship metadata file directories
export NODE_METADATA=<path>/covid19-kg2/metadata/Nodes
export RELATIONSHIP_METADATA=<path>/covid19-kg2/metadata/Relationships

# Absolute paths to node and relationship data file directories
export NODE_DATA=<path>/covid19-kg2/data/Nodes
export RELATIONSHIP_DATA=<path>/covid19-kg2/data/Relationships

# Absolute path to kg-import Git repository
export KGIMPORT_GITREPO=/Users/lyt/Desktop/kg-import

# Run the Neo4j bulk data import
$KGIMPORT_GITREPO/scripts/neo4j_bulk_import.sh