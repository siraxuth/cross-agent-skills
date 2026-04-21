# cross-agent-skills

ชุด skills และไฟล์ตั้งค่าพร้อมใช้สำหรับ Claude Code, Codex, Cursor, Windsurf, Copilot, Cline และ agent อื่นๆ อีกมาก

ติดตั้งครั้งเดียว ใช้ได้หลาย agent

[English](./README.md)

---

## ติดตั้งสำหรับ agent

เลือก agent แล้วรันคำสั่งเดียว

| Agent | คำสั่ง |
|---|---|
| Claude Code | `claude plugin marketplace add siraxuth/cross-agent-skills && claude plugin install all-skills@cross-agent-skills` |
| Codex | `npx skills add siraxuth/cross-agent-skills -a codex` |
| Cursor | `npx skills add siraxuth/cross-agent-skills -a cursor` |
| Windsurf | `npx skills add siraxuth/cross-agent-skills -a windsurf` |
| Copilot | `npx skills add siraxuth/cross-agent-skills -a github-copilot` |
| Cline | `npx skills add siraxuth/cross-agent-skills -a cline` |
| Gemini CLI | `npx skills add siraxuth/cross-agent-skills -a gemini-cli` |
| Agent อื่นๆ | `npx skills add siraxuth/cross-agent-skills` |

---

## เริ่มใช้แบบง่ายสุด

### ติดตั้ง project policy pack ลง repo ปัจจุบัน

วิธีนี้จะคัดลอกไฟล์สำคัญให้พร้อมใช้ทันที เช่น:

- `AGENTS.md`
- `GEMINI.md`
- `frontend-setup-standards.md`
- ไฟล์สำหรับ Copilot
- ไฟล์สำหรับ Windsurf
- `.agents/skills/` สำหรับใช้งานข้าม agent

ด้านล่างคือคำสั่งผ่าน package manager หลักทุกเจ้า

#### npm

```bash
npx degit siraxuth/cross-agent-skills .cross-agent-skills
bash .cross-agent-skills/install-project-pack.sh .
```

#### pnpm

```bash
pnpm dlx degit siraxuth/cross-agent-skills .cross-agent-skills
bash .cross-agent-skills/install-project-pack.sh .
```

#### yarn

```bash
yarn dlx degit siraxuth/cross-agent-skills .cross-agent-skills
bash .cross-agent-skills/install-project-pack.sh .
```

#### bun

```bash
bunx --bun degit siraxuth/cross-agent-skills .cross-agent-skills
bash .cross-agent-skills/install-project-pack.sh .
```

ถ้าต้องการเขียนทับไฟล์เดิม:

```bash
bash .cross-agent-skills/install-project-pack.sh --force .
```

ลบโฟลเดอร์ชั่วคราวหลังติดตั้งเสร็จ:

```bash
rm -rf .cross-agent-skills
```

### หรือถ้า clone repo นี้มาแล้ว ใช้ script ผ่าน package manager ได้เลย

#### npm

```bash
npm run install:project-pack
npm run install:project-pack:force
npm run install:skills
```

#### pnpm

```bash
pnpm install:project-pack
pnpm install:project-pack:force
pnpm install:skills
```

#### yarn

```bash
yarn install:project-pack
yarn install:project-pack:force
yarn install:skills
```

#### bun

```bash
bun run install:project-pack
bun run install:project-pack:force
bun run install:skills
```

### ติดตั้ง skills ลง `.codex/skills`

ถ้าอยากคัดลอกเฉพาะโฟลเดอร์ `skills/` ไปไว้ใน `.codex/skills/`

```bash
bash .cross-agent-skills/install.sh .
```

---

## ใช้งานยังไงหลังติดตั้ง

เปิด agent ใน repo เป้าหมายแล้วสั่งงานได้ทันที เช่น

- `setup โปรเจกต์ Next.js ใหม่ตาม frontend-setup-standards.md`
- `ทำ landing page ใหม่ตาม AGENTS.md และ frontend-setup-standards.md`
- `แตกหน้านี้ออกเป็น components ให้เป็นระเบียบและลด client js`
- `audit frontend นี้เรื่อง shadcn/ui, motion, และ bundle performance`

---

## มาตรฐาน frontend/setup ที่บังคับไว้แล้ว

หลังติดตั้ง policy pack แล้ว agent จะถูกบังคับให้ทำตามแนวทางนี้:

- เลือก runtime/package manager ที่ framework รองรับจริง และเร็วพอโดยไม่เสียเสถียรภาพ
- งานฝั่ง Node ให้ prefer `bun` หรือ `pnpm` ตามความเข้ากันได้ของ stack
- ใช้ `deno` เฉพาะตอนที่ stack รองรับแบบ first-class จริง
- ใช้ `shadcn/ui` เป็นฐานหลัก
- ใช้ `Magic UI`, `React Bits`, `Aceternity UI`, `21st.dev` แบบเลือกใช้ให้เหมาะ ไม่ก๊อปมั่ว
- ใช้ `Dribbble` เป็น reference ด้านภาพและ layout เท่านั้น
- motion ต้องลื่น แต่ไม่หนักเครื่อง
- ลด client JavaScript และลดการใส่ `use client` เกินจำเป็น
- แยก component ให้ชัด ห้ามยัดทุกอย่างลงไฟล์เดียว

ดูรายละเอียดเต็มได้ที่:

- [`frontend-setup-standards.md`](./frontend-setup-standards.md)

---

## ไฟล์ตัวอย่างที่มีให้พร้อม

| ส่วน | path |
|---|---|
| คำสั่งกลางสำหรับหลาย agent | `AGENTS.md` |
| context สำหรับ Gemini CLI | `GEMINI.md` |
| policy กลางสำหรับ frontend/setup | `frontend-setup-standards.md` |
| Copilot repo instructions | `.github/copilot-instructions.md` |
| Copilot frontend instructions | `.github/instructions/frontend.instructions.md` |
| Copilot project skill | `.github/skills/repo-skill-maintainer/` |
| Copilot custom agent | `.github/agents/skill-maintainer.md` |
| shared skills ข้าม agent | `.agents/skills/` |
| Windsurf skill | `.windsurf/skills/repo-skill-maintainer/` |
| Windsurf rules | `.windsurf/rules/` |
| Windsurf workflows | `.windsurf/workflows/` |
| ตัวติดตั้ง policy pack | `install-project-pack.sh` |
| ตัวติดตั้ง skills สำหรับ Codex | `install.sh` |
| scripts สำหรับ package manager | `package.json` |

---

## หมายเหตุ

React, Next.js และ Tailwind CSS ไม่มี LTS channel แบบเดียวกับ Node.js ดังนั้นใน repo นี้กฎสำหรับสามตัวนี้คือ:

- ใช้ stable ล่าสุด
- เช็กจาก docs ทางการก่อนใช้งานจริง
- ต้องเข้ากับ runtime/toolchain ที่เลือกและ framework รองรับจริง
