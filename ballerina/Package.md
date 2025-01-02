## Overview
Gemini, developed by Google DeepMind in collaboration with Google Research, is the most advanced and versatile AI model they’ve created. Designed to be multimodal, Gemini [https://blog.google/technology/ai/google-gemini-ai/#sundar-note] seamlessly understands and integrates various types of information, such as text, code, audio, images, and video. This marks a significant step toward building intuitive, expert AI assistants that enhance human capabilities.

## Setup guide
To use the Gemini connector, you must have a Google account with API access. So in order to access the APIs you must have a api-key [https://ai.google.dev/gemini-api/docs/api-key]

### Step 1: Create an API Token

1. Naviaget to the get api key [https://ai.google.dev/gemini-api/docs/api-key]
![get-a-gemini-api-key.png](..%2Fdocs%2Fsetup%2Fresource%2Fget-a-gemini-api-key.png)

2. Click "Create API Key" in order to create the key
![create-api-key.png](..%2Fdocs%2Fsetup%2Fresource%2Fcreate-api-key.png)

3. If you allready have a project you can select this from here. Otherwise you need to create a project in order to create a api key
![create-api-key-for-project.png](..%2Fdocs%2Fsetup%2Fresource%2Fcreate-api-key-for-project.png)

## Quickstart

### Step 1: Import the module
Import the gemini module.
```
import ballerinax/gemini;
```

### Step 2: Instantiate a new connector
1. Create a Config.toml file and, configure the obtained credentials in the above steps as follows:
```
accessToken = "<Your Access Token for Gemini>"
apiKey = "<Your Google API Key>"
```

2. Create a gemini:ConnectionConfig with the obtained access token and initialize the connector with it.
``` bal
configurable string baseUrl = ?;
configurable string apiToken = ?;
configurable string apiKey = ?;

gemini:ConnectionConfig config = {
    auth: <http:CredentialsConfig>
    {
        apiKey: apiKey,
        apiToken: apiToken
    }
};
final gemini:Client gemini = check new(config, baseUrl);
```


### Step 3: Invoke the connector operation
[//]: # (TODO: Invoke the connector operation)

### Step 4: Run the Ballerina application
[//]: # (TODO: Run the Ballerina application)




## Examples

The `Gemini` connector provides practical examples illustrating usage in various scenarios. Explore these [examples](https://github.com/module-ballerinax-googleapis.gemini/tree/main/examples/), covering the following use cases:

[//]: # (TODO: Add examples)
