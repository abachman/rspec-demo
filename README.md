## Thinking in TDD

- what is the goal?
- why write tests?
  - communication
  - verify new work
    - "I'm pretty sure this is going to work" :-1:
    - "This will work" :+1:
  - fixing bugs
    - "why did this break?"
    - "this should/must never break like this again"
  - solidify assumptions about existing code
    - "what does this code believe is always true?"
- thinking with a test first mind

## Basic Rspec

- basic syntax and structure
- (there is (almost) always) more than one way to do it, there are a lot of right answers
  - Practical example: spec/processor_spec vs. spec/simpler_processor_spec.rb
    - what's the difference?
    - what problems will we run into?
- order of operations (scopes)
  - Practical example: `rspec spec/calling_order_spec.rb`

## Advanced testing

- code coverage
  - Practical example: check ./coverage folder after running suite
- unit testing vs. system testing
  - what scale am I operating at?
  - how big are my changes?
  - what's the **biggest** test I can write?
  - what's the **smallest** test I can write?

## Fighting with rspec + rubocop (incidental complexity)

- Practical example: `rubocop spec/processor_spec.rb`
- what is the actual goal of this tool?