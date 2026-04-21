---
description: Enforce modern frontend and setup standards. Use this whenever working on frontend implementation, UI architecture, animation, Next.js/React/Tailwind setup, or package/bootstrap decisions for web projects. It requires choosing the best officially supported runtime and package manager for the stack, using latest stable releases compatible with that runtime, shadcn/ui as the base component system where supported, selective use of Magic UI / React Bits / Aceternity UI / 21st.dev, Dribbble as inspiration only, minimal client JavaScript, clean component separation, and performance-safe motion.
trigger: always_on
---

# Frontend and Setup Standards

When the task is frontend or setup related:

- follow `frontend-setup-standards.md`
- choose the runtime and package manager with the best support-to-speed tradeoff for the stack
- prefer `bun` or `pnpm` for new Node-based frontend work unless the repo already dictates otherwise
- use `deno` only for Deno-native or clearly first-class Deno setups
- use the latest stable React, Next.js, and Tailwind CSS versions compatible with the chosen runtime and toolchain
- do not treat React, Next.js, or Tailwind as if they had Node-style LTS channels; use their latest stable releases instead
- use shadcn/ui as the baseline component system
- use Magic UI, React Bits, Aceternity UI, and 21st.dev selectively as source material, then normalize code into local project components
- use Dribbble for visual inspiration only
- keep motion polished but lightweight
- prefer CSS-first motion where possible
- if using Motion for React, keep bundles small and respect reduced motion
- keep client JavaScript minimal
- avoid making whole pages client components unnecessarily
- split work into clean components and folders; do not dump entire pages into one file
