# Skillet Formula Builder - Claude Code Skill

> Expert assistant for creating Skillet expressions with Excel-like formulas and Ruby-style methods.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Skills.sh](https://img.shields.io/badge/skills.sh-ready-blue)](https://skills.sh)

## Overview

The Skillet Formula Builder is a specialized Claude Code skill that helps you create powerful, efficient expressions using the [Skillet](https://github.com/zenbakiak/Skillet-lang/skillet) micro expression language. It combines Excel-like formulas with Ruby-style methods for maximum expressiveness.

### Features

- **150+ Built-in Functions** - Excel-compatible functions (SUM, IFS, VLOOKUP, etc.)
- **Ruby-Style Methods** - Chain operations (.map, .filter, .sort, .reverse)
- **HTTP API Support** - Generates optimized JSON payloads for the Skillet HTTP server
- **CLI Support** - Creates ready-to-run command-line expressions
- **Comment Support** - Supports `#`, `//`, and `/* */` comments
- **Array Format** - Readable multi-line expressions for complex logic
- **Real-World Examples** - Mexican tax calculations, payroll, business logic

## Installation

### Option 1: Via skills.sh (Recommended)

```bash
claude skills install skillet-formula-builder
```

### Option 2: Manual Installation

```bash
# Clone the repository
git clone https://github.com/zenbakiak/skillet-formula-builder-skill.git

# Copy to Claude skills directory
cp skillet-formula-builder-skill/skill.md ~/.claude/skills/
```

### Option 3: Direct URL

```bash
claude skills install https://raw.githubusercontent.com/zenbakiak/skillet-formula-builder-skill/main/skill.md
```

## Quick Start

Once installed, invoke the skill in Claude Code:

```
"Help me create a Skillet formula to calculate Mexican ISR tax"
```

Or use specific triggers:
- "Create a Skillet formula for..."
- "Write a Skillet expression that..."
- "Generate Skillet calculation for..."
- "Build Skillet query to..."

## Examples

### Example 1: Simple Tax Calculation

**User**: "Calculate total with 16% IVA tax"

**Skill Output**:
```json
{
  "expression": [
    "# Calculate total with IVA",
    ":subtotal := :arguments.subtotal;",
    ":iva := :subtotal * 0.16;",
    ":total := :subtotal + :iva;",
    ":total"
  ],
  "arguments": {
    "subtotal": 1000
  },
  "include_variables": false
}
```

### Example 2: Mexican ISR Tax Calculator

**User**: "Calculate ISR for 15,000 MXN monthly income"

**Skill Output**: Complete ISR calculator with 2025 tax brackets, deductions, and detailed breakdown.

See [examples/](examples/) directory for more real-world use cases:
- [ISR Tax Calculator](examples/isr-calculator.md)
- [Finiquito Calculator](examples/finiquito-calculator.md)
- [Business Logic Patterns](examples/business-logic.md)

## What is Skillet?

Skillet is a micro expression language designed for business calculations and data transformations:

- **Excel-like**: Familiar functions (SUM, IFS, VLOOKUP, etc.)
- **Ruby-like**: Method chaining (.map, .filter, .sort)
- **JSON-native**: Works seamlessly with JSON data
- **Fast**: Sub-millisecond evaluation
- **Safe**: No arbitrary code execution

### Skillet HTTP Server

Run calculations via HTTP API:

```bash
curl -X POST http://localhost:3000/eval \
  -H "Content-Type: application/json" \
  -d '{"expression": ":x := 10; :y := 20; :x + :y"}'
```

## Use Cases

- **Business Calculations** - Tax, payroll, commissions, pricing
- **Data Transformations** - Filter, map, reduce operations
- **Financial Modeling** - Interest, amortization, projections
- **Legal Compliance** - Mexican labor law, tax regulations
- **Workflow Automation** - Decision logic, routing rules

## Features

### Comment Support

Skillet now supports three comment styles:

```skillet
# Hash comments
// Slash comments
/* Block comments */
```

### Array Expression Format

For complex multi-line expressions:

```json
{
  "expression": [
    "# Step 1: Calculate base",
    ":base := :price * :qty;",
    "",
    "/* Step 2: Apply discount */",
    ":discount := :base * 0.10;",
    "",
    "// Step 3: Final total",
    ":total := :base - :discount;",
    ":total"
  ]
}
```

## Contributing

Contributions are welcome! Please:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Adding Examples

To add new examples:

1. Create a markdown file in `examples/`
2. Include problem description, solution, and explanation
3. Test with actual Skillet server
4. Submit PR

## Requirements

- Claude Code (latest version)
- Skillet HTTP server (optional, for testing)
- Node.js 16+ or Rust 1.75+ (if running Skillet locally)

## License

MIT License - See [LICENSE](LICENSE) file for details

## Links

- [Skillet Project](https://github.com/zenbakiak/Skillet-lang/skillet)
- [Skills.sh Registry](https://skills.sh)
- [Documentation](https://github.com/zenbakiak/skillet-formula-builder-skill/wiki)
- [Issue Tracker](https://github.com/zenbakiak/skillet-formula-builder-skill/issues)

## Support

- Email: barkatu.83 [at] gmail [dot] com
- Issues: [GitHub Issues](https://github.com/zenbakiak/skillet-formula-builder-skill/issues)

## Acknowledgments

- Skillet Language by [@zenbakiak](https://github.com/zenbakiak)
- Claude Code by Anthropic
- Inspired by Excel, Ruby, and functional programming

---

Made with ❤️ by @zenbakiak for the Claude Code community
