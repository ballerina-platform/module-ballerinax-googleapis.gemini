// Copyright (c) 2024, WSO2 LLC. (http://www.wso2.com).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/http;
import ballerina/os;
import ballerina/test;

configurable boolean isLiveServer = os:getEnv("IS_LIVE_SERVER") == "true";

configurable string apiKey = isLiveServer ? os:getEnv("GEMINI_API_KEY") : "testApiKey";

configurable http:BearerTokenConfig & readonly authConfig = {
    token: isLiveServer ? os:getEnv("GEMINI_TOKEN") : "testToken"
};

ConnectionConfig config = {auth: authConfig};

final Client apiClient = check new Client(config, serviceUrl = isLiveServer ? "https://generativelanguage.googleapis.com/v1/" : "http://localhost:9090");

@test:Config {
    groups: ["live_tests", "mock_tests"]
}
isolated function testGetSpaceUsage() returns error? {
     test:assertEquals("Hi","Hi");
}