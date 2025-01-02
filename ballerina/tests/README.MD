# Running Tests

## Prerequisites
You need an API Key or an Access Token to access the Gemini account via API.

To do this, refer to [Ballerina Gemini Connector](https://github.com/ballerina-platform/module-ballerinax-googleapis.gemini/ballerina/Module.md).

# Running Tests

There are two test environments for running the Gemini connector tests. The default test environment is the mock server for gemini API. The other test environment is the actual gemini API.

You can run the tests in either of these environments and each has its own compatible set of tests.

| Test Groups | Environment                                      |
|-------------|--------------------------------------------------|
| mock_tests  | Mock server for Gemini API (Defualt Environment) |
| live_tests  | Gemini API                                       |

## Running Tests in the Mock Server

To execute the tests on the mock server, ensure that the `IS_LIVE_SERVER` environment variable is either set to `false` or unset before initiating the tests.

This environment variable can be configured within the `Config.toml` file located in the tests directory or specified as an environmental variable.

#### Using a Config.toml File

Create a `Config.toml` file in the tests directory and the following content:

```toml
isLiveServer = false
```

#### Using Environment Variables

Alternatively, you can set your authentication credentials as environment variables:
If you are using linux or mac, you can use following method:
```bash
   export IS_LIVE_SERVER=false
```
If you are using Windows you can use following method:
```bash
   setx IS_LIVE_SERVER false
```
Then, run the following command to run the tests:

```bash
   ./gradlew clean test
```

## Running Tests Against Gemini Live API

#### Using a Config.toml File

Create a `Config.toml` file in the tests directory and add your authentication credentials a

```toml
   isLiveServer = true

   [authConfig]
   token = "<gemini-access-token>"
```
or 
```toml
   [authConfig]
    apiKey = "<gemini-api-key>"
```

#### Using Environment Variables

Alternatively, you can set your authentication credentials as environment variables:
If you are using linux or mac, you can use following method:
```bash
   export IS_LIVE_SERVER=true
   export GEMINI_TOKEN ="<your-gemini-access-token>"
   export GEMINI_API_KEY ="<your-gemini-api-key>"
```

If you are using Windows you can use following method:
```bash
   setx IS_LIVE_SERVER true
   setx GEMINI_TOKEN <your-gemini-access-token>
   setx GEMINI_API_KEY <your-gemini-api-key>
```
Then, run the following command to run the tests:

```bash
   ./gradlew clean test 
```