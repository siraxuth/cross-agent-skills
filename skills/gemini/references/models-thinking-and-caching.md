# Gemini Models, Thinking, and Caching

Use this file when the user asks about model choice, reasoning behavior, or token reuse.

## Model Choice

- prefer stable non-preview models unless preview is necessary
- verify exact latest model names if the user asks for "best" or "latest"
- choose flash-tier models only when latency/cost matters enough to justify the tradeoff

## Thinking

### Gemini 3

Prefer `thinkingLevel`.

Use it to tune latency vs reasoning depth.

### Gemini 2.5

Use `thinkingBudget` when budget-style control is needed.

## Thought Signatures

Thought signatures matter in tool/function-calling flows.

- preserve them exactly when replaying conversation history manually
- do not strip them from the relevant parts
- the official SDK handles most of this unless you manually rewrite history

## Caching

Use caching when large prefixes repeat and costs matter.

- implicit caching can help repeated prefixes
- explicit caching is better when the user needs guaranteed savings or explicit lifecycle control

Do not add caching complexity to small one-off tasks.
