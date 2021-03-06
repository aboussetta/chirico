#!/bin/bash

# ALL
BACKUP0=/home/chirico/jboss/jboss-5.1.0.GA-src/build/output/jboss-5.1.0.GA/server/all/backup/
mkdir -p ${BACKUP0}
for mdir in admin-console.war jmx-console.war cluster ROOT.war
do

    if [ -d ${BACKUP0}/${mdir} ]; then
	rm -rf /home/chirico/jboss/jboss-5.1.0.GA-src/build/output/jboss-5.1.0.GA/server/all/deploy/${mdir}
    else
	mv /home/chirico/jboss/jboss-5.1.0.GA-src/build/output/jboss-5.1.0.GA/server/all/deploy/${mdir} ${BACKUP0}
    fi
done

# default
BACKUP0=/home/chirico/jboss/jboss-5.1.0.GA-src/build/output/jboss-5.1.0.GA/server/default/backup/
mkdir -p ${BACKUP0}
for mdir in admin-console.war jmx-console.war ROOT.war
do

    if [ -d ${BACKUP0}/${mdir} ]; then
	rm -rf /home/chirico/jboss/jboss-5.1.0.GA-src/build/output/jboss-5.1.0.GA/server/default/deploy/${mdir}
    else
	mv /home/chirico/jboss/jboss-5.1.0.GA-src/build/output/jboss-5.1.0.GA/server/default/deploy/${mdir} ${BACKUP0}
    fi
done

# web
BACKUP0=/home/chirico/jboss/jboss-5.1.0.GA-src/build/output/jboss-5.1.0.GA/server/web/backup/
mkdir -p ${BACKUP0}
for mdir in jmx-console.war ROOT.war
do

    if [ -d ${BACKUP0}/${mdir} ]; then
	rm -rf /home/chirico/jboss/jboss-5.1.0.GA-src/build/output/jboss-5.1.0.GA/server/web/deploy/${mdir}
    else
	mv /home/chirico/jboss/jboss-5.1.0.GA-src/build/output/jboss-5.1.0.GA/server/web/deploy/${mdir} ${BACKUP0}
    fi
done

