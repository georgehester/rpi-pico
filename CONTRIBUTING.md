# Pushing Changes

## Commit Messages

Changes should be pushed to the repository with adequet commit messages, these messages should follow the following convention.

```
<type>(scope [optional]): <description>
-- Seperator Line --
<body [optional]>
-- Seperator Line --
<footer [optional]>
```

For most commit messages, specifically those done by `-m` on the command line `<type>: <description>` is all that's neccessary.

### Type

- `fix` - A bug fix or patch has taken place.
- `feat` - Addition or removal of a feature.
- `refactor` - Any rewrite or restructure of pre existent code.
- `perf` - Any change to pre existing code which is made of the basis of performance.
- `style` - A change to any styling related feature.
- `test` - Addition or modification of tests.
- `docs` - A change to documentation.
- `chore` - Changes to maintenace files.
- `build` - Changes which effect the build process such as toolchain, project dependencies, versionsing, ci pipeline.

### Breaking Changes

Commit messages for a change that breaks with current versions should increment the major version and include a `!` in the commit message as follows.

```
<type>!: <description>
```

> [!NOTE]
> Version numbers match the convention `MAJOR.MINOR.PATCH` , as such `fix` would refer to a `PATCH` value increase, `feat` to a `MINOR` increase and any commit that causes a breaking change a `MAJOR` increase.