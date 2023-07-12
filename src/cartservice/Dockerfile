# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# https://mcr.microsoft.com/v2/dotnet/sdk/tags/list
FROM mcr.microsoft.com/dotnet/sdk:7.0 as builder
ARG TARGETPLATFORM
ARG BUILDPLATFORM
WORKDIR /app
COPY src/cartservice.csproj src/
RUN dotnet restore src/cartservice.csproj
COPY . .
# Fix the issue on Debian 10: https://github.com/dotnet/dotnet-docker/issues/2470
ENV COMPlus_EnableDiagnostics=0
RUN if [ "$TARGETPLATFORM" = "linux/arm64" ] ; then DOTNET_TARGET=linux-musl-arm64 ; else DOTNET_TARGET=linux-musl-x64 ; fi \
    && dotnet publish src/cartservice.csproj -r $DOTNET_TARGET -p:PublishSingleFile=true --self-contained true -c release -o /cartservice --no-restore

# https://mcr.microsoft.com/v2/dotnet/runtime-deps/tags/list
FROM mcr.microsoft.com/dotnet/runtime-deps:7.0.2-alpine3.16
WORKDIR /app
COPY --from=builder /cartservice .
ENV ASPNETCORE_URLS http://*:7070
ENTRYPOINT ["/app/cartservice"]
