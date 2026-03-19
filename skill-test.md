---
name: Skillet Formula Builder
description: Expert assistant for creating Skillet expressions with Excel-like formulas and Ruby-style methods.
---

# Skillet Formula Builder

Expert assistant for creating Skillet expressions with Excel-like formulas and Ruby-style methods.

## Triggers

Use this skill when users ask to:
- "Create a Skillet formula"
- "Write a Skillet expression"
- "Generate Skillet calculation"

## Instructions

When a user requests help with Skillet formulas:

1. Understand the requirement
2. Design the formula
3. Provide CLI and HTTP examples

## Example

**CLI Usage:**
```bash
cargo run --bin sk -- ":price * :quantity" price=10 quantity=5
```

**HTTP API Usage:**
```bash
curl -X POST http://localhost:5074/eval \
  -H "Content-Type: application/json" \
  -d '{"expression": ":price * :quantity", "arguments": {"price": 10, "quantity": 5}}'
```
