# Frontend and Setup Standards

Use this file whenever an agent is setting up a frontend stack or writing substantial frontend code.

## Version Policy

Always use the **latest stable releases that are compatible with the runtime and toolchain the stack officially supports**.

Important:

- Node.js has formal LTS releases.
- Deno has stable releases, but not a Node-style LTS line.
- React, Next.js, and Tailwind CSS do **not** publish an LTS channel in the same Node-style sense.
- For Node-based stacks, use the current Node.js LTS unless the user explicitly asks for something else.
- For Deno-native stacks, use the current stable Deno release recommended by the framework or official docs.
- For React, Next.js, and Tailwind CSS, "stable" in this repository means:
  - use the latest stable release
  - verify it from the official docs at implementation time
  - ensure it is compatible with the chosen runtime and toolchain

## Verified Baseline As Of April 21, 2026

Verified from official docs:

- Node.js current LTS line: **v24** (`v24.15.0` listed as latest LTS patch on the Node.js releases page)
- React docs latest version: **19.2**
- Next.js latest stable release visible in the official blog: **16.2** on **March 18, 2026**
- Tailwind CSS latest stable major visible in the official blog: **4.0**

Because these change over time, agents must re-check official docs before installing in a fresh project. Deno-native projects should also verify the current stable Deno release at implementation time.

## Runtime and Package Manager Policy

Choose the runtime and package manager that are **officially supported, fast in practice, and stable for the stack being built**.

Default order of operations:

1. If the repo already has a runtime, lockfile, or workspace tool, keep it unless the user asks to migrate.
2. If the framework is clearly Node-first, use the current Node.js LTS.
3. If the framework is clearly Deno-native, use Deno.
4. Choose the fastest stable package manager or runtime workflow that does not add compatibility churn.

Practical defaults:

- prefer `bun` for new Node-based frontend apps when the template, dependencies, CI, and deployment target are known to work cleanly with it
- prefer `pnpm` when compatibility, monorepo behavior, deterministic installs, or wider ecosystem predictability matter more than chasing the fastest happy path
- use `deno` when the framework or tooling is Deno-native or officially recommends Deno as a first-class path
- do not force `deno` onto Node-first stacks such as typical Next.js plus shadcn/ui setups unless official support is clearly verified
- do not switch package managers casually inside an existing repo
- keep exactly one lockfile strategy per project unless the repo already has an intentional exception

## Setup Rules

When initializing a new frontend project:

- choose the runtime and package manager that the target stack officially supports best
- for Node-based setups, use the current **Node.js LTS**, not Current unless the user explicitly asks for it
- for Deno-native setups, use the current stable **Deno** release recommended by the stack
- use the latest stable **Next.js**, **React**, and **Tailwind CSS** compatible with that runtime and toolchain
- use **TypeScript**
- use strict typing and avoid loose `any`-driven setup
- prefer the framework's current recommended bootstrap flow
- verify exact package versions from official docs before writing install commands
- prefer `bun` or `pnpm` over `npm` for new Node-based work unless the template or tooling makes another choice clearly safer

## Frontend Stack Defaults

Unless the repo already dictates otherwise:

- Next.js App Router
- React latest stable
- Tailwind CSS latest stable
- `bun` or `pnpm` for Node-based package management, chosen by compatibility needs
- shadcn/ui as the base component system

## Component Source Policy

When building UI, use these sources intentionally:

### Primary foundation

- **shadcn/ui**

Use shadcn/ui as the baseline design system and local component source of truth.

### Secondary enhancement sources

Use selectively when the design needs richer sections, effects, or marketing polish:

- **Magic UI**
- **React Bits**
- **Aceternity UI**
- **21st.dev**

Rules for using them:

- treat them as source material, not as a reason to paste random code blindly
- normalize imported code into local project components
- keep APIs and styling conventions consistent with the project's shadcn/ui foundation
- do not mix multiple component systems with incompatible conventions in one page

### Visual inspiration

- **Dribbble**

Use Dribbble for composition, art direction, hierarchy, and interaction references.

Do **not** clone designs literally. Use it as inspiration, then translate into an original implementation that fits the project's system.

## Motion Rules

Motion must feel polished without degrading performance.

### Prefer CSS-first motion

Use CSS transitions, transforms, and opacity animation first when they are enough.

Use JavaScript-driven motion only when it adds clear product value.

### If using Motion for React

- prefer `motion` package usage only where genuinely needed
- prefer `LazyMotion` plus `m` for smaller bundles
- use the smallest feature set that works, usually `domAnimation`
- do not ship the full motion feature bundle everywhere by default

### Accessibility

- respect reduced motion preferences
- prefer replacing large positional movement with opacity or softer transforms when reduced motion is enabled
- avoid autoplay effects that become distracting or nauseating

### Performance

- animate `transform` and `opacity` instead of layout-affecting properties when possible
- avoid long-running expensive effects on large DOM trees
- avoid animation patterns that force frequent layout/reflow
- do not stack multiple heavy effects just because they look cool in isolation
- keep hero/background effects lightweight and optional

## Client JavaScript Budget

Do not send unnecessary JavaScript to the client.

Rules:

- prefer Server Components by default in Next.js
- add `use client` only where interactivity is actually needed
- isolate client components to the smallest practical subtree
- lazy-load heavy interactive or animated islands
- avoid pushing large data blobs to the client unnecessarily
- do not place whole pages in one client component if only a small widget needs client-side code

## Component Architecture

Do not put an entire frontend implementation in one file.

Required structure:

- split pages into focused components
- extract reusable UI into dedicated local components
- keep animation wrappers separate from content-heavy components when that improves clarity
- separate layout, sections, and primitives cleanly
- keep file/folder structure predictable and tidy

Good pattern examples:

- `app/(marketing)/page.tsx` orchestrates sections only
- `components/marketing/hero.tsx`
- `components/marketing/features.tsx`
- `components/ui/*` for shadcn-based primitives
- `components/motion/*` for reusable motion wrappers when needed

## Cleanliness Rules

- keep naming consistent
- avoid giant page files
- avoid dumping unrelated helpers into component files
- collocate small, tightly related utilities only when it improves clarity
- otherwise separate hooks, utils, and components cleanly

## Decision Ladder

When implementing frontend work:

1. verify latest stable versions against official docs
2. choose the runtime and package manager with the best support-to-speed tradeoff for the stack
3. lock Node-based work to current Node.js LTS, or use stable Deno for Deno-native work
4. start with shadcn/ui when the stack supports it
5. pull from Magic UI, React Bits, Aceternity UI, and 21st.dev only for targeted needs
6. use Dribbble as inspiration only
7. minimize client JavaScript
8. split the work into clean components and folders

## Anti-Patterns

Do not:

- use outdated boilerplates when current stable docs say otherwise
- interpret "LTS" as "old but safe" for React, Next.js, or Tailwind
- treat every frontend project as Node-only by default
- force Deno onto Node-first tooling without verified first-class support
- add multiple lockfiles or bounce between package managers casually
- paste vendor demo code without adapting it to the local design system
- make the whole page a client component for convenience
- dump all sections into a single `page.tsx`
- ship large motion bundles for tiny animations
- add flashy motion that hurts responsiveness
