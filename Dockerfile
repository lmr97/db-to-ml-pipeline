FROM gvenzl/oracle-xe:21-slim

COPY DBSetupScripts ./DBSetupScripts
ENV ORACLE_PWD=password1234
EXPOSE 1521

RUN source ./DBSetupScripts/_run_all.sh