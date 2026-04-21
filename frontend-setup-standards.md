# Frontend and Setup Standards

Use this file whenever an agent is setting up a frontend stack or writing substantial frontend code.

## Version Policy

Always use the **latest stable releases that are compatible with the current Node.js LTS**.

Important:

- Node.js has formal LTS releases.
- React, Next.js, and Tailwind CSS do **not** publish an LTS channel in the same Node-style sense.
- For React, Next.js, and Tailwind CSS, "LTS" in this repository means:
  - use the latest stable release
  - verify it from the official docs at implementation time
  - ensure it is compatible with the current Node.js LTS

## Verified Baseline As Of April 21, 2026

Verified from official docs:

- Node.js current LTS line: **v24** (`v24.15.0` listed as latest LTS patch on the Node.js releases page)
- React docs latest version: **19.2**
- Next.js latest stable release visible in the official blog: **16.2** on **March 18, 2026**
- Tailwind CSS latest stable major visible in the official blog: **4.0**

Because these change over time, agents must re-check official docs before installing in a fresh project.

## Setup Rules

When initializing a new frontend project:

- use the current **Node.js LTS**, not Current unless the user explicitly asks for it
- use the latest stable **Next.js**, **React**, and **Tailwind CSS** compatible with that Node LTS
- use **TypeScript**
- use strict typing and avoid loose `any`-driven setup
- prefer the framework's current recommended bootstrap flow
- verify exact package versions from official docs before writing install commands

## Frontend Stack Defaults

Unless the repo already dictates otherwise:

- Next.js App Router
- React latest stable
- Tailwind CSS latest stable
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
2. lock to current Node.js LTS compatibility
3. start with shadcn/ui
4. pull from Magic UI, React Bits, Aceternity UI, and 21st.dev only for targeted needs
5. use Dribbble as inspiration only
6. minimize client JavaScript
7. split the work into clean components and folders

## Anti-Patterns

Do not:

- use outdated boilerplates when current stable docs say otherwise
- interpret "LTS" as "old but safe" for React, Next.js, or Tailwind
- paste vendor demo code without adapting it to the local design system
- make the whole page a client component for convenience
- dump all sections into a single `page.tsx`
- ship large motion bundles for tiny animations
- add flashy motion that hurts responsiveness
