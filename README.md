## Thinking in TDD

- what is the goal?
- why write tests?
  - communication
  - fixing bugs
    - "why did this break?"
    - "this should/must never break like this again"
  - solidify assumptions
    - "what does this code believe is always true?"
- thinking with a test first mind

## Basic Rspec

- basic syntax and structure
- (there is (almost) always) more than one way to do it
  - Practical Example: spec/processor_spec vs. spec/simpler_processor_spec.rb
    - what's the difference?
    - what problems will we run into?

## Fighting with rspec + rubocop (incidental complexity)

- Practical Example: run rubocop on spec/processor_spec.rb
- what is the goal of this tool?

## Advanced testing

- code coverage
  - Practical Example: check ./coverage folder after running suite
- unit testing vs. system testing
  - what scale am I operating at?
  - how big are my changes?
  - what's the **biggest** test I can write?
  - what's the **smallest** test I can write?