# Development playbook

Keep changes small, runnable, and easy to reverse.

- Read the product documents before introducing a new concept.
- Prefer standard library and platform APIs until a real need for a dependency exists.
- Add tests for behavior, not implementation details.
- Keep user-visible language simple and non-alarming.
- Verify the backend locally and build the iOS target in Xcode before merging platform changes.
