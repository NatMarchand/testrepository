FROM mcr.microsoft.com/dotnet/sdk:8.0.404-jammy@sha256:4d0de0f52f1252139b2709c9fc2f7bb23155fd8e33936a44a6ebfb02df0ec45c

# renovate: datasource=nuget packageName=dotnet-ef
ARG DOTNETEF_VERSION=9.0.0
# renovate: datasource=nuget packageName=GitVersion.Tool
ARG GITVERSIONTOOL_VERSION=5.0.0
# renovate: datasource=nuget packageName=dotnet-reportgenerator-globaltool
ARG DOTNETREPORTGENERATOR_VERSION=5.0.0
# renovate: datasource=nuget packageName=dotnet-sonarscanner
ARG DOTNETSONARSCANNER_VERSION=9.0.2
# renovate: datasource=nuget packageName=SpecFlow.Plus.LivingDoc.CLI
ARG SPECFLOWLIVINGDOCCLI_VERSION=3.9.5
# renovate: datasource=nuget packageName=csharpier
ARG CSHARPIER_VERSION=0.30.2
# renovate: datasource=nuget packageName=Cake.Tool
ARG CAKETOOL_VERSION=5.0.0
RUN dotnet tool install dotnet-ef --version $DOTNETEF_VERSION --tool-path /app/.dotnet/tools && \
    dotnet tool install GitVersion.Tool --version $GITVERSIONTOOL_VERSION --tool-path /app/.dotnet/tools && \
    dotnet tool install dotnet-reportgenerator-globaltool --version $DOTNETREPORTGENERATOR_VERSION --tool-path /app/.dotnet/tools && \
    dotnet tool install dotnet-sonarscanner --version $DOTNETSONARSCANNER_VERSION --tool-path /app/.dotnet/tools && \
    dotnet tool install SpecFlow.Plus.LivingDoc.CLI --version $SPECFLOWLIVINGDOCCLI_VERSION --tool-path /app/.dotnet/tools && \
    dotnet tool install csharpier --version $CSHARPIER_VERSION --tool-path /app/.dotnet/tools && \
    dotnet tool install Cake.Tool --version $CAKETOOL_VERSION --tool-path /app/.dotnet/tools

# renovate: datasource=github-releases packageName=oras-project/oras
ENV ORAS_VERSION=1.2.0

# renovate: datasource=github-releases packageName=volta-cli/volta
ENV VOLTA_VERSION=2.0.1
