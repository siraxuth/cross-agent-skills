---
applyTo: "**/*.tsx,**/*.jsx,**/*.ts,**/*.js,**/*.css,**/*.scss,**/*.mdx,package.json,components.json,next.config.*,postcss.config.*,tailwind.config.*"
---

# Frontend and Setup Instructions

When working on frontend code or setup files:

- follow `frontend-setup-standards.md`
- choose the best officially supported runtime and package manager for the stack
- use the latest stable React, Next.js, and Tailwind CSS releases compatible with that runtime and toolchain
- prefer `bun` or `pnpm` for new Node-based frontend work unless the repo already dictates otherwise
- use `deno` only for Deno-native or clearly first-class Deno setups
- use shadcn/ui as the base component system
- use Magic UI, React Bits, Aceternity UI, and 21st.dev only as selective source material
- use Dribbble for inspiration, not literal cloning
- keep motion lightweight, accessible, and bundle-conscious
- minimize client JavaScript and isolate `use client` to the smallest practical subtree
- split large pages into clean components instead of one monolithic file
