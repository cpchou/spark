#FROM keineahnung2345/edgarperezsampedro-blog_docker:20181126
FROM jupyter/all-spark-notebook
ENV PYTHONPATH=/usr/local/spark-2.4.5-bin-hadoop2.7/jars/graphframes.zip:/usr/local/spark-2.2.0-bin-hadoop2.7/python/lib/py4j-0.10.4-src.zip:/usr/local/spark-2.2.0-bin-hadoop2.7/python:PYSPARK_DRIVER_PYTHON=ipython

RUN ["/bin/bash", "-c", "python -m pip install --upgrade pip"]
# RUN python -m pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose
# RUN wget -P /usr/local/spark-2.2.0-bin-hadoop2.7/jars/  https://cpchou0701.diskstation.me/jdk/jdbc/mssql-jdbc/mssql-jdbc-6.4.0.jre8.jar
RUN ["/usr/bin/wget", "-q -P", "/usr/local/spark-2.4.5-bin-hadoop2.7/jars/  https://github.com/microsoft/mssql-jdbc/releases/download/v8.2.0/mssql-jdbc-8.2.0.jre8.jar"]
RUN ["/usr/bin/wget", "-q -P", "/usr/local/spark-2.4.5-bin-hadoop2.7/jars/  https://jdbc.postgresql.org/download/postgresql-42.2.10.jar"]
RUN ["/usr/bin/wget", "-q -P", "/usr/local/spark-2.4.5-bin-hadoop2.7/jars/  http://search.maven.org/remotecontent?filepath=mysql/mysql-connector-java/5.1.32/mysql-connector-java-5.1.32.jar -O mysql-connector-java-5.1.32.jar"]
# RUN wget -q -P /usr/local/spark-2.2.0-bin-hadoop2.7/jars/  https://dl.bintray.com/spark-packages/maven/graphframes/graphframes/0.7.0-spark2.2-s_2.11/raphframes-0.7.0-spark2.4-s_2.11.jar
RUN ["/usr/bin/wget", "-q -P", "/usr/local/spark-2.4.5-bin-hadoop2.7/jars/  https://cpchou0701.diskstation.me/jdk/graphframes-0.6.0-spark2.2-s_2.11.jar -O graphframes.zip"]
RUN ["/opt/conda/bin/python", "-m", "pip install torch==1.4.0+cpu torchvision==0.5.0+cpu -f https://download.pytorch.org/whl/torch_stable.html"]
