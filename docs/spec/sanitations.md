_Author_:  @dilshanf \
_Created_: 16/01/2024 \
_Updated_: 16/01/2024 \
_Edition_: Swan Lake

# Sanitation for OpenAPI specification

This document outlines the sanitation performed on top of the official OpenAPI specification for Gemini.

## OpenAPI Specification Source
The OpenAPI specification is not officially provided by Google for Gemini. Instead, we generated the OpenAPI specification 
using the Discovery API [https://generativelanguage.googleapis.com/$discovery/rest?version=v1beta&key=$GOOGLE_API_KEY]. 
To access this, a valid `GOOGLE_API_KEY` must be provided.

Following this, the specification was converted into the OpenAPI format using gnostic (https://github.com/google/gnostic).

## Purpose of Changes
The changes documented here aim to improve overall usability and address known language limitations. The key modifications are as follows:
1. **Version Selection:**
   + We used the v1 version as it is the most stable and production-ready, ensuring no breaking changes.
   + While the v1beta version resolves some limitations, it remains in beta and is not suitable for production use. Therefore, we opted for the generative/v1 endpoint in this connector.
2. **Authentication Mechanism:**
   + The authentication mechanism already supported by Gemini has been added to the specification.

    
## OpenAPI cli command
The following command was used to generate the Ballerina client from the OpenAPI specification. Execute this command from the repository root directory:

```bash
bal openapi -i docs/spec/openapi.yaml  --mode client -o ballerina
```
**Note:** The license year is hardcoded to 2024, change if necessary.