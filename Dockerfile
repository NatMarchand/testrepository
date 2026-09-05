FROM mcr.microsoft.com/dotnet/sdk:8.0.424-jammy@sha256:b300ab9f6790233c2cb91632d7e9a8576e8f01e6ac19743833b7b0a24bdf5094


# renovate: datasource=nuget depName=Devtools packageName=Devtools
ARG DEVTOOLS_VERSION=9.0.0
# renovate: datasource=nuget packageName=dotnet-ef
ARG DOTNETEF_VERSION=9.0.0
# renovate: datasource=nuget packageName=GitVersion.Tool
ARG GITVERSIONTOOL_VERSION=5.12.0
# renovate: datasource=nuget packageName=dotnet-reportgenerator-globaltool
ARG DOTNETREPORTGENERATOR_VERSION=5.4.1
# renovate: datasource=nuget packageName=dotnet-sonarscanner
ARG DOTNETSONARSCANNER_VERSION=9.0.2
# renovate: datasource=nuget packageName=SpecFlow.Plus.LivingDoc.CLI
ARG SPECFLOWLIVINGDOCCLI_VERSION=3.9.57
# renovate: datasource=nuget packageName=csharpier
ARG CSHARPIER_VERSION=0.30.2
# renovate: datasource=nuget packageName=Cake.Tool
ARG CAKETOOL_VERSION=4.2.0
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
