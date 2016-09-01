FROM chenthilvel/fpm
MAINTAINER ChenthilVel
RUN yum -y update && yum -y install gmp-devel mysql-devel && yum clean all
COPY strongswan build-rpm.sh postinstall postuninstall preuninstall /root/

CMD ["/bin/bash", "/root/build-rpm.sh"]
