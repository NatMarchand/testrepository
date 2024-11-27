FROM mcr.microsoft.com/dotnet/sdk:8.0.404-jammy@sha256:4d0de0f52f1252139b2709c9fc2f7bb23155fd8e33936a44a6ebfb02df0ec45c

ARG DOTNETEF_VERSION=8.0.0
ARG GITVERSIONTOOL_VERSION=5.0.0
ARG DOTNETREPORTGENERATOR_VERSION=5.0.0
ARG DOTNETSONARSCANNER_VERSION=6.0.0
ARG SPECFLOWLIVINGDOCCLI_VERSION=3.0.0
ARG CSHARPIER_VERSION=0.30.0
ARG CAKETOOL_VERSION=4.0.0
RUN dotnet tool install dotnet-ef --version $DOTNETEF_VERSION --tool-path /app/.dotnet/tools && \
    dotnet tool install GitVersion.Tool --version $GITVERSIONTOOL_VERSION --tool-path /app/.dotnet/tools && \
    dotnet tool install dotnet-reportgenerator-globaltool --version $DOTNETREPORTGENERATOR_VERSION --tool-path /app/.dotnet/tools && \
    dotnet tool install dotnet-sonarscanner --version $DOTNETSONARSCANNER_VERSION --tool-path /app/.dotnet/tools && \
    dotnet tool install SpecFlow.Plus.LivingDoc.CLI --version $SPECFLOWLIVINGDOCCLI_VERSION --tool-path /app/.dotnet/tools && \
    dotnet tool install csharpier --version $CSHARPIER_VERSION --tool-path /app/.dotnet/tools && \
    dotnet tool install Cake.Tool --version $CAKETOOL_VERSION --tool-path /app/.dotnet/tools

ENV ORAS_VERSION=1.1.0
ENV VOLTA_VERSION=2.0.1
