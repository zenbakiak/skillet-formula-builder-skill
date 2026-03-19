# Changelog

All notable changes to the Skillet Formula Builder skill will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.0] - 2026-03-15

### Added
- Initial release of Skillet Formula Builder skill
- Complete function reference (80+ functions)
- Ruby-style method chaining support (.map, .filter, .sort, .reverse, etc.)
- HTTP API expression formatting (single-string and array formats)
- Comment support (hash `#`, slash `//`, and block `/* */` comments)
- Array expression format with indentation support
- ISR (Mexican Income Tax) calculator example
- Finiquito (Mexican severance pay) calculator example
- Business logic patterns and examples
- Comprehensive documentation
- Pattern library with 7 common workflows
- Best practices guide
- Troubleshooting section
- Integration patterns for HTTP and CLI

### Features
- 80+ Excel-compatible functions
- Ruby-style method chaining
- Null-safe operations with `&.` operator
- Type casting with `::`
- Spread operator `...`
- Lambda expressions for higher-order functions
- JQ-style JSON querying
- VLOOKUP and data lookup functions
- Statistical functions (AVERAGE, MEDIAN, STDEV, etc.)
- Date/time functions
- String manipulation functions
- Array operations
- Object manipulation

### Examples
- Simple calculations
- Tax calculations (IVA, ISR)
- Payroll calculations (finiquito, aguinaldo)
- Data filtering and transformation
- Tiered pricing logic
- Business rule implementation

### Documentation
- Complete function reference
- Method reference
- Operator precedence guide
- HTTP API formatting guide
- CLI usage guide
- Pattern library
- Best practices
- Common pitfalls and solutions

## Future Releases

### Planned for v1.1.0
- [ ] CFDI (Mexican invoice) validation patterns
- [ ] IMSS (Mexican social security) calculations
- [ ] Payroll processing examples
- [ ] Interactive formula builder assistant
- [ ] Formula optimization suggestions

### Planned for v1.2.0
- [ ] Visual formula designer
- [ ] Formula testing framework
- [ ] Performance profiling tips
- [ ] Advanced caching strategies
- [ ] Multi-tenant examples

### Ideas for v2.0.0
- [ ] Formula library with sharable snippets
- [ ] Formula validation and type checking
- [ ] Integration with external APIs
- [ ] Webhook examples
- [ ] Real-time data processing patterns

---

[Unreleased]: https://github.com/zenbakiak/skillet-formula-builder-skill/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/zenbakiak/skillet-formula-builder-skill/releases/tag/v1.0.0
