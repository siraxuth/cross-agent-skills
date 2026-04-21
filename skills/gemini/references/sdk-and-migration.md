# Gemini SDK and Migration

Use this file when writing new Gemini API code or migrating older code.

## New Work

Use the modern Google GenAI SDKs:

- Python: `google-genai`
- JavaScript / TypeScript: `@google/genai`
- Go: `google.golang.org/genai`
- Java: official Google GenAI SDK

Prefer the central `Client` style over older per-model object patterns.

## Legacy SDKs to Avoid for New Code

- `google-generativeai`
- `@google/generative-ai`

## Migration Checklist

When upgrading old code:

1. replace imports
2. move to the central client object
3. update method calls
4. revisit file and caching flows
5. revisit model names
6. revisit thinking controls

Do not stop at import renames only.

## Auth Split

Keep these paths distinct:

- Gemini API key flows
- Vertex AI enterprise flows
- Gemini CLI sign-in or API-key usage
