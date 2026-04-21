# Gemini Tooling and Structured Output

Use this file when the user needs machine-actionable Gemini behavior.

## Function Calling

Use when the model needs to:

- call external APIs
- trigger business actions
- fetch external data before answering

Modes commonly used:

- `AUTO`
- `ANY`
- `NONE`

Default to `AUTO` unless the workflow explicitly requires every turn to be a tool call.

## Structured Outputs

Use when the final answer must conform to a schema.

Good for:

- extraction
- classification
- typed app contracts
- automation payloads

Use structured outputs when the goal is formatting the final result, not taking an action mid-turn.

## Choosing Between Them

Use:

- function calling -> the model needs to act
- structured outputs -> the model needs to format

Some workflows may use both, but do not mix them casually.
