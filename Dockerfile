FROM keineahnung2345/edgarperezsampedro-blog_docker:20181126

RUN python -m pip install --upgrade pip
RUN python -m pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose
