#!/usr/bin/env node
const fs = require('fs');
const path = require('path');
const { execSync } = require('child_process');

const ROOT = process.cwd();
const REPO = 'https://github.com/jepotes/universal-ai-skills.git';

function log(msg) { console.log(`[uask] ${msg}`); }
function exists(p) { return fs.existsSync(path.join(ROOT, p)); }
function mkdir(p) { fs.mkdirSync(path.join(ROOT, p), { recursive: true }); }
function copy(src, dest) {
  const s = path.join(ROOT, src);
  const d = path.join(ROOT, dest);
  if (fs.existsSync(s)) {
    fs.mkdirSync(path.dirname(d), { recursive: true });
    fs.copyFileSync(s, d);
  }
}
function run(cmd, cwd = ROOT) { execSync(cmd, { cwd, stdio: 'inherit' }); }

function init() {
  log('initializing project');
  mkdir('.ai');
  if (!exists('ai-skills')) run(`git clone ${REPO} ai-skills`);
  else run('git pull', path.join(ROOT, 'ai-skills'));
  copy('ai-skills/CLAUDE.md', 'CLAUDE.md');
  copy('ai-skills/AGENTS.md', 'AGENTS.md');
  copy('ai-skills/CODEX.md', 'CODEX.md');
  copy('ai-skills/GEMINI.md', 'GEMINI.md');
  copy('ai-skills/WINDSURF.md', 'WINDSURF.md');
  copy('ai-skills/.ai/project.json', '.ai/project.json');
  copy('ai-skills/adapters/cursor/universal-ai-skills.mdc', '.cursor/rules/universal-ai-skills.mdc');
  log('done');
}
function update() {
  if (!exists('ai-skills')) return init();
  run('git pull', path.join(ROOT, 'ai-skills'));
  log('updated');
}
function doctor() {
  const checks = ['ai-skills', '.ai/project.json', 'CLAUDE.md', 'AGENTS.md'];
  let ok = true;
  for (const c of checks) {
    const pass = exists(c);
    console.log(`${pass ? 'OK' : 'MISSING'} ${c}`);
    if (!pass) ok = false;
  }
  process.exit(ok ? 0 : 1);
}

const cmd = process.argv[2] || 'help';
if (cmd === 'init') init();
else if (cmd === 'update') update();
else if (cmd === 'doctor') doctor();
else {
  console.log('Universal AI Skills CLI');
  console.log('Usage: uask <init|update|doctor>');
}
